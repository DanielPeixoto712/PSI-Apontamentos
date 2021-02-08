@extends('layouts.app')
@section('content')

<ul>
@foreach($autores as $autor)
<li>
<a href="{{route('autores.show', ['id'=>$autor->id_autor])}}">
	{{$autor->nome}}</a></li>
@endforeach
</ul>
{{$autores->render()}}


@if(auth()->check())

<a href="{{route('autores.create', ['id'=>$autor->id_autor])}}"><h4>Criar</h4></a>

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