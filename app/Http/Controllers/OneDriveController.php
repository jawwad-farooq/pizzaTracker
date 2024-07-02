<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use League\OAuth2\Client\Provider\GenericProvider;
use GuzzleHttp\Client;

class OneDriveController extends Controller
{
    private $provider;

    public function __construct()
    {
        $this->provider = new GenericProvider([
            'clientId'                => env('MICROSOFT_CLIENT_ID'),
            'clientSecret'            => env('MICROSOFT_CLIENT_SECRET'),
            'redirectUri'             => env('MICROSOFT_REDIRECT_URI'),
            'urlAuthorize'            => 'https://login.microsoftonline.com/' . env('MICROSOFT_TENANT_ID') . '/oauth2/v2.0/authorize',
            'urlAccessToken'          => 'https://login.microsoftonline.com/' . env('MICROSOFT_TENANT_ID') . '/oauth2/v2.0/token',
            'urlResourceOwnerDetails' => '',
            'scopes'                  => 'User.Read Files.ReadWrite'
        ]);
    }

    public function login()
    {
        $authorizationUrl = $this->provider->getAuthorizationUrl();
        session(['oauth2state' => $this->provider->getState()]);
        return redirect($authorizationUrl);
    }

    public function callback(Request $request)
    {
        $state = session('oauth2state');
        if (empty($request->input('state')) || ($request->input('state') !== $state)) {
            session()->forget('oauth2state');
            return redirect()->route('login')->withErrors('Invalid state');
        }

        try {
            $accessToken = $this->provider->getAccessToken('authorization_code', [
                'code' => $request->input('code')
            ]);
            session(['access_token' => $accessToken->getToken()]);
            return redirect()->route('files');
        } catch (\Exception $e) {
            return redirect()->route('login')->withErrors('Failed to get access token: ' . $e->getMessage());
        }
    }

    public function listFiles()
    {
        $accessToken = session('access_token');
        $client = new Client();
        $response = $client->request('GET', 'https://graph.microsoft.com/v1.0/me/drive/root/children', [
            'headers' => [
                'Authorization' => 'Bearer ' . $accessToken,
                'Content-Type' => 'application/json'
            ]
        ]);

        $files = json_decode($response->getBody(), true);
        return view('files', ['files' => $files['value']]);
    }

    public function editFile($id)
    {
        $accessToken = session('access_token');
        $client = new Client();
        $response = $client->request('POST', "https://graph.microsoft.com/v1.0/me/drive/items/$id/createLink", [
            'headers' => [
                'Authorization' => 'Bearer ' . $accessToken,
                'Content-Type' => 'application/json'
            ],
            'json' => [
                'type' => 'embed',
                'scope' => 'anonymous'
            ]
        ]);

        $linkData = json_decode($response->getBody(), true);
        $embedUrl = $linkData['link']['webUrl'];
        return view('edit', ['embedUrl' => $embedUrl]);
    }
}
