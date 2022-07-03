<?php

namespace Database\Seeders;

use App\Models\Curso;
use Illuminate\Database\Seeder;

class CursoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //decirle a la clase CursoSeeder que llene con el factory con el mismo nombre
        //con 50 elementos
        Curso::factory(50)->create();
    }
}
