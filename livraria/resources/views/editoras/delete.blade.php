<h2>Deseja eliminar a editora: </h2>
<h2>{{$editora->nome}}</h2>
<form method="post" action="{{route('editoras.destroy',['id'=>$editora->id_editora])}}">
	@csrf
	@method('delete')
	<input type="submit" name="enviar">
</form>

@if(session()->has('mensagem'))
<div class="alert alert-danger" role="alert">{{session('mensagem')}}
	{{session('mensagem')}}
	@endif

