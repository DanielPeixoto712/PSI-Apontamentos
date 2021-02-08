<h2>Deseja eliminar o genero: </h2>
<h2>{{$genero->designacao}}</h2>
<form method="post" action="{{route('generos.destroy',['id'=>$genero->id_genero])}}">
	@csrf
	@method('delete')
	<input type="submit" name="enviar">
</form>

@if(session()->has('mensagem'))
<div class="alert alert-danger" role="alert">{{session('mensagem')}}
	{{session('mensagem')}}
	@endif



