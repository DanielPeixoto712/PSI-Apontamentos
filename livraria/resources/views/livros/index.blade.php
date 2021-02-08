@extends('layouts.app')
@section('content')

<ul>
@foreach($livros as $livro)
<li>
	<a href="{{route('livros.show', ['id'=>$livro->id_livro])}}">
	
	{{$livro->titulo}}</li>

	
@endforeach
</ul>

@if(auth()->check())

<a href="{{route('livros.create', ['id'=>$livro->id_livro])}}"><h4>Criar</h4></a>


<a class="dropdown-item" href="{{ route('logout') }}"
       onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();">
        {{ __('Logout') }}
    </a>

    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
        @csrf
    </form>

@endif


@endsection