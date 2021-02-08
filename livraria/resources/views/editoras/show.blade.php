@extends('layouts.app')
@section('content')

<u>ID:</u>{{$editora->id_editora}}<br>
<hr>
<u>Nome:</u>{{$editora->nome}}<br>
<hr>
<u>Morada:</u>{{$editora->morada}}
<hr>


@if(auth()->check())

<a href="{{route('editoras.edit', ['id'=>$editora->id_editora])}}"><h4>Editar</h4></a>

<a href="{{route('editoras.delete', ['id'=>$editora->id_editora])}}"><h4>Eliminar</h4></a>
@endif
@endsection