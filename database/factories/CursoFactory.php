<?php

namespace Database\Factories;

use App\Models\Curso;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

class CursoFactory extends Factory
{

    protected $model = Curso::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $name = $this->faker->sentence();
        return [
            'name' => $name,
            'slug' => Str::slug($name, '-'),
            'descripcion' => $this->faker->paragraph(),
            'categoria' => $this->faker->randomElement(['Desarroolo Web', 'Diseño web'])
        ];
    }
}
