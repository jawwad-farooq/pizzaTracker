<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Arr;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\pizza>
 */
class PizzaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id' => rand(11, 661),
            'user_id' => rand(1, 10),
            'size' => Arr::random(['small', 'medium', 'large']),
            'crust' => Arr::random(['noraml', 'thin', 'garlic']),
            'status' => Arr::random(['ordered', 'baking', 'ready']),
        ];
    }
}
