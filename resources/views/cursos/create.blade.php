@extends('layouts.plantilla')

@section('tittle', 'Cursos create')



@section('content')
    <h1>en esta pagina podras crear un curso</h1>
    <form action="{{ route('cursos.store') }}" method="POST">
        @csrf
        <label for="">
            Nombre:
            <br>
            <input type="text" name="name" value="{{old('name')}}">
        </label>
         {{--  old('name') para que cuando la persona presione el boton enviar no se borre la información que había llenado --}}
        @error('name')
            <br>
            <small>*{{ $message }}</small>
            <br>
        @enderror
        <br>
        <label for="">
            Descripción
            <br>
            <textarea name="descripcion" rows="5">{{old('descripcion')}}</textarea>
        </label>
        {{--   para mostrar los errores de la request --}}
        @error('descripcion')
            <br>
            <small>*{{ $message }}</small>
            <br>
        @enderror
        <br>
        <label for="">
            Categoría
            <br>
            <input type="text" name="categoria" value="{{old('categoria')}}">
        </label>

        @error('categoria')
            <br>
            <small>*{{ $message }}</small>
            <br>
        @enderror
        <br>
        <button type="submit">Enviar formulario</button>
    </form>

@endsection
