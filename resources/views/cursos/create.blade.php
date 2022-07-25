@extends('layouts.plantilla')

@section('tittle', 'Cursos create')



@section('content')
    <h1>en esta pagina podras crear un curso</h1>
    <form action="{{route('cursos.store')}}" method="POST">
        @csrf
        <label for="">
            Nombre:
            <br>
            <input type="text" name="name">
        </label>
        <br>
        <label for="">
            Descripción
            <br>
            <textarea name="descripcion" rows="5"></textarea>
        </label>
        <br>
        <label for="">
            Categoría
            <br>
            <input type="text" name="categoria">
        </label>
        <br>
        <button type="submit">Enviar formulario</button>
    </form>

@endsection
