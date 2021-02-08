@extends('layouts.app')
@section('content')

<u>ID:</u>{{$livro->id_livro}}<br>
<hr>
<u>Título:</u>{{$livro->titulo}}<br>
<hr>
<u>Idioma:</u>{{$livro->idioma}}<br>
<hr>
@if(isset($livro->genero->designacao))
<u>Genero:</u>{{$livro->genero->designacao}}<br>
<hr>
@endif

@if(isset($livro->editora->nome))
<u>Editora:</u>{{$livro->editora->nome}}<br>
<hr>
@endif

@if(isset($livro->imagem_capa))
<img src="{{asset('imagens/livros/'.$livro->imagem_capa)}}">
@endif

@if(count($livro->autores)>0)


@foreach($livro->editoras as $editora)
<u>Autor:</u>{{$editora->nome}}<br>
<hr>
@endforeach


@foreach($livro->autores as $autor)
<u>Autor:</u>{{$autor->nome}}<br>
<hr>
@endforeach

@else
<div class="alert alert-danger" role="alert">Sem autor definido </div>
@endif



@if(auth()->check())
ID:{{Auth::user()->id}}<br>
Email:{{Auth::user()->email}}<br>
Nome:{{Auth::user()->name}}<br>

@if(Gate::allows('atualizar-livro',$livro)||Gate::allows('admin'))
<a href="{{route('livros.edit', ['id'=>$livro->id_livro])}}"><h4>Editar</h4></a>
  @endif 
<a href="{{route('livros.delete', ['id'=>$livro->id_livro])}}"><h4>Eliminar</h4></a>

@endif
@endsection