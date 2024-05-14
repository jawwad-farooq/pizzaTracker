<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Pizza;
use Database\Factories\PizzaFactory;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        \App\Models\User::factory(10)->create();
        \App\Models\Pizza::factory(10)->create();
    }
}
