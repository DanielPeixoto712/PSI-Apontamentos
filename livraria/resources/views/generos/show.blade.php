@extends('layouts.app')
@section('content')

<u>ID:</u>{{$genero->id_genero}}<br>
<hr>
<u>Desinação:</u>{{$genero->designacao}}<br>
<hr>
<u>Observações:</u>{{$genero->observacoes}}<br>
<hr>

@foreach($genero->livros as $livro)
<h3>{{$livro->titulo}}</h3>
@endforeach

@if(auth()->check())


<a href="{{route('generos.edit', ['id'=>$genero->id_genero])}}"><h4>Editar</h4></a>

<a href="{{route('generos.delete', ['id'=>$genero->id_genero])}}"><h4>Eliminar</h4></a>@endif

@endsection