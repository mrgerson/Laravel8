<?php

namespace App\Http\Controllers;

use App\Models\Curso;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Requests\StoreCurso;
use PhpParser\Node\Expr\BinaryOp\Concat;

class CursoController extends Controller
{

    /* notas
    para agregar request de validación en un archivo independiente
    App/http/Request
    php artisan make:request StoreCurso


    */
    public function index()
    {
        $cursos = Curso::orderBy('id', 'desc')->paginate();

        return view('cursos.index', compact('cursos'));
    }
    public function create()
    {
        return view('cursos.create');
    }
    public function store(StoreCurso $request)
    {

        /* agregando Request de validación StoreCurso para personalizar las validaciones en un archivo independiente */


        /* guardando datos como se hace habitualmente*/

        /*  $curso = new Curso();
        $curso->name = $request->name;
        $curso->descripcion = $request->descripcion;
        $curso->categoria = $request->categoria;
        $curso->save(); */

        //agregar el slug de la ruta amigable dinamicamente
        $request->merge([
            'slug' => Str::slug($request->name),
        ]);

        /* guardando datos con asignación masiva */
        $curso = Curso::create($request->all());

        return redirect()->route('cursos.show', $curso);
    }
    public function show(Curso $curso)
    {
        return view('cursos.show', compact('curso'));
    }
    public function edit(Curso $curso)
    {
        return view('cursos.edit', compact('curso'));
    }
    public function update(Request $request, Curso $curso)
    {
        $request->validate([
            'name' => 'required',
            'descripcion' => 'required',
            'categoria' => 'required',
        ]);

        /* guardando datos como se hace habitualmente */
        /*  $curso->name = $request->name;
        $curso->descripcion = $request->descripcion;
        $curso->categoria = $request->categoria;
        $curso->save(); */

         //agregar el slug de la ruta amigable dinamicamente
        $request->merge([
            'slug' => Str::slug($request->name),
        ]);

        /* actualizando un curso con asignación masiva */
        $curso->update($request->all());

        return redirect()->route('cursos.show', $curso);
    }

    public function destroy(Curso $curso)
    {
        $curso->delete();
        return redirect()->route('cursos.index');
    }
}
