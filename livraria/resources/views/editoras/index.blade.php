@extends('layouts.app')

@section('content')

<ul>
@foreach($editoras as $editora)
<li>
<a href="{{route('editoras.show', ['id'=>$editora->id_editora])}}">
	{{$editora->nome}}</a></li>
@endforeach
</ul>
{{$editoras->render()}}

@if(auth()->check())

	<a href="{{route('editoras.create', ['id'=>$editora->id_editora])}}"><h4>Criar</h4></a>
	


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