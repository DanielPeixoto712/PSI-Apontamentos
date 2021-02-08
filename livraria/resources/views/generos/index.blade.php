@extends('layouts.app')
@section('content')

<ul>
@foreach($generos as $genero)


<li>
<a href="{{route('generos.show', ['id'=>$genero->id_genero])}}">
	{{$genero->designacao}}</a></li>
@endforeach
</ul>
{{$generos->render()}}


@if(auth()->check())

<a href="{{route('generos.create', ['id'=>$genero->id_genero])}}"><h4>Criar</h4></a>



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