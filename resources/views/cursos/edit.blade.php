@extends('layouts.plantilla')

@section('tittle', 'Cursos edit')



@section('content')
    <h1>en esta pagina podras editar un curso</h1>
    <form action="{{ route('cursos.update', $curso) }}" method="POST">
        @csrf
        @method('put')
        <label for="">
            Nombre:
            <br>
            <input type="text" name="name" value="{{old('name', $curso->name)}}">
        </label>
        <br>
        {{-- old('name') para que cuando la persona presione el boton enviar no se borre la información que había llenado --}}
        @error('name')
            <br>
            <small>*{{ $message }}</small>
            <br>
        @enderror
        <label for="">
            Descripción
            <br>
            <textarea name="descripcion" rows="5">{{old('descripcion', $curso->descripcion)}}</textarea>
        </label>
        <br>
        {{-- para mostrar los errores de la request --}}
        @error('descripcion')
            <br>
            <small>*{{ $message }}</small>
            <br>
        @enderror
        <label for="">
            Categoría
            <br>
            <input type="text" name="categoria" value="{{old('categoria', $curso->categoria)}}">
        </label>
        @error('categoria')
            <br>
            <small>*{{ $message }}</small>
            <br>
        @enderror
        <input type="hidden" name="slug" value="slug">
        <br>
        <button type="submit">actualizar formulario</button>
    </form>

@endsection
