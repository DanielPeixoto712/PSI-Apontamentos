@extends('layouts.app')
@section('content')

<u>ID:</u>{{$autor->id_autor}}<br>
<hr>
<u>Nome:</u>{{$autor->nome}}<br>
<hr>
<u>Nacionalidade:</u>{{$autor->nacionalidade}}<br>
<hr>
<u>Data Nascimento:</u>{{$autor->data_nascimento}}
<hr>

@foreach($autor->livros as $livro)
<h3>{{$livro->titulo}}</h3>

@endforeach


@if(auth()->check())
<a href="{{route('autores.edit', ['id'=>$autor->id_autor])}}"><h4>Editar</h4></a>

<a href="{{route('autores.delete', ['id'=>$autor->id_autor])}}"><h4>Eliminar</h4></a>

@endif
@endsection