@extends('layouts.plantilla')

@section('tittle', 'contactanos')



@section('content')
    <h1>Dejanos un mensaje</h1>

    <form action="{{ route('contactanos.store') }}" method="POST">
        @csrf
        <label for="">
            Nombre:
            <br>
            <input type="text" name="name" value="{{ old('name') }}">
        </label>
        {{-- old('name') para que cuando la persona presione el boton enviar no se borre la información que había llenado --}}
        @error('name')
            <br>
            <small>*{{ $message }}</small>
            <br>
        @enderror
        <br>
        <label for="">
            Correo
            <br>
            <input type="text" name="correo" value="{{ old('correo') }}">
        </label>
        {{-- para mostrar los errores de la request --}}
        @error('correo')
            <br>
            <small>*{{ $message }}</small>
            <br>
        @enderror
        <br>
        <label for="">
            Mensaje
            <br>
            <textarea name="mensaje" rows="5">{{ old('mensaje') }}</textarea>
        </label>

        @error('mensaje')
            <br>
            <small>*{{ $message }}</small>
            <br>
        @enderror
        <br>
        <button type="submit">Enviar mensaje</button>
    </form>

    @if (session('info'))
        <script>
            alert("{{ session('info') }}");
        </script>
    @endif



@endsection
