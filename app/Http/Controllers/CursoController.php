<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use PhpParser\Node\Expr\BinaryOp\Concat;

class CursoController extends Controller
{
    public function index()
    {

       return view('cursos.index');

    }
    public function create()
    {
        return view('cursos.create');

    }
    public function show($curso)
    {

        return view('cursos.show', ['curso' => $curso] );

    }
}
