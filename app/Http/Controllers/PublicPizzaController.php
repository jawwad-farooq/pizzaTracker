<?php

namespace App\Http\Controllers;

use App\Models\Pizza;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Inertia\Response;

class PublicPizzaController extends Controller
{
    public function show($id) {
        $pizza = Pizza::find($id);
        if($pizza){
            return Inertia::render('Pizzas/Show', [
                'pizza' => $pizza,
            ]);
        }
        else {
            return Inertia::render('Pizzas/Show', [
                'error' => "Order Not Found",
            ]);
        }
    }
}
