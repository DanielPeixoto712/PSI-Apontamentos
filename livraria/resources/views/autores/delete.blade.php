<h2>Deseja eliminar o autor: </h2>
<h2>{{$autor->nome}}</h2>
<form method="post" action="{{route('autores.destroy',['id'=>$autor->id_autor])}}">
	@csrf
	@method('delete')
	<input type="submit" name="enviar">
</form>

@if(session()->has('mensagem'))
<div class="alert alert-danger" role="alert">{{session('mensagem')}}
	{{session('mensagem')}}
	@endif

