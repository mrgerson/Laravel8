@extends('layouts.plantilla')

@section('tittle', 'curso '. $curso->name)



@section('content')
<h1>Bienvenido al curso {{$curso->name}}</h1>
<a href="{{route('cursos.index')}}">Volver a cursos</a>
<p><strong>categoria: </strong>{{$curso->categoria}}</p>
<p>{{$curso->descripcion}}</p>

@endsection
