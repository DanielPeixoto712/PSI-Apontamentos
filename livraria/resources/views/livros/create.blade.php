@extends('layouts.app')
<!DOCTYPE html>
<html>
<head>
	<title>Formulário</title>
</head>
<body>
	<form action="{{route('livros.store')}}" enctype="multipart/form-data" method="post">
@csrf
Titulo: <input type="text" name="titulo"><br><br>
Idioma: <input type="text" name="idioma"><br><br>
Total Páginas: <input type="text" name="total_paginas"><br><br>
Data Edição: <input type="date" name="data_edicao"><br><br>
ISBN: <input type="text" name="isbn"><br><br>
Observacoes: <textarea type="text" name="observacoes" ></textarea><br><br>
<label>Imagem de capa</label>
<input type="text" name="imagem_capa">
@if($errors->has('imagem_capa'))
Verifique se introduziu as observações corretamente.<br>
@endif


Editora(s):
<select name="id_editora">
	@foreach ($editoras as $editora)
	<option value="{{$editora->id_editora}}">{{$editora->nome}}</option>
	@endforeach
</select>
<br>
<br>

Género(s):
<select name="id_genero">
	@foreach ($generos as $genero)
	<option value="{{$genero->id_genero}}">{{$genero->designacao}}</option>
	@endforeach
</select>
<br>
<br>
Autor(es):
<select name="id_autor[]" multiple="multiple">
	
	@foreach($autores as $autor)
	<option value="{{$autor->id_autor}}">{{$autor->nome}}</option>
	@endforeach
</select>
<br><br>
Sinopse: <textarea type="text" name="sinopse"></textarea> <br><br>

<h4 style="display: none">Sua id:</h4> <input style="display: none" type="text"  name="id_user" value="{{Auth::user()->id}}"><br><br>
<br>

<br>
<br>
<input type="submit" value="Enviar!">
</form>





@if($errors->has('isbn'))
<i>Deverá indicar um ISBN correto (13 carateres)</i>
@endif

@if($errors->has('titulo'))
<i>Deverá indicar um Titulo correto</i>
@endif

@if($errors->has('idioma'))
<i>Deverá indicar um Idioma correto </i>
@endif

@if($errors->has('total_paginas'))
<i>Deverá indicar o total páginas correto </i>
@endif

@if($errors->has('data_edicao'))
<i>Deverá indicar uma Data de Edição correto </i>
@endif

@if($errors->has('isbn'))
<i>Deverá indicar um isbn correto </i>
@endif

@if($errors->has('observacoes'))
<i>Deverá indicar as Observações corretas </i>
@endif

@if($errors->has('imagem_capa'))
<i>Deverá indicar uma Imagem de capa correta </i>
@endif

@if($errors->has('genero'))
<i>Deverá indicar um Género correto </i>
@endif

@if($errors->has('autor'))
<i>Deverá indicar um Autor correto </i>
@endif

@if($errors->has('sinopse'))
<i>Deverá indicar uma Sinopse correta </i>
@endif

@if($errors->has('id_user'))
<i>Deverá indicar a sua id correta </i>
@endif

</body>
</html>

