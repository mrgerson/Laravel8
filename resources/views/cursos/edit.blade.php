@extends('layouts.plantilla')

@section('tittle', 'Cursos edit')



@section('content')
    <h1>en esta pagina podras editar un curso</h1>
    <form action="{{route('cursos.update', $curso)}}" method="POST">
        @csrf
        @method('put')
        <label for="">
            Nombre:
            <br>
            <input type="text" name="name" value="{{$curso->name}}">
        </label>
        <br>
        <label for="">
            Descripción
            <br>
            <textarea name="descripcion" rows="5">{{$curso->descripcion}}</textarea>
        </label>
        <br>
        <label for="">
            Categoría
            <br>
            <input type="text" name="categoria" value="{{$curso->categoria}}">
        </label>
        <br>
        <button type="submit">actualizar  formulario</button>
    </form>

@endsection
