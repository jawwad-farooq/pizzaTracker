<?php

namespace App\Http\Controllers;

use App\Models\Pizza;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;

class PublicPizzaController extends Controller
{
    public function show(Pizza $pizza):Response {
        // dd("shoe function is working");
        return Inertia::render('Pizzas/Show', [
            'pizza' => $pizza,
        ]);
    }
}
