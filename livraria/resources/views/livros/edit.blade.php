@extends('layouts.app')
<!DOCTYPE html>
<html>
<head>
	<title>Formulário</title>
</head>
<body>
	<form action="{{route('livros.update',['id'=>$livro->id_livro])}}" method="post">
@csrf
@method('patch')
Titulo: <input type="text" name="titulo" value=""><br><br>
@if($errors->has('titulo'))
Deverá indicar um titulo válido<br>
@endif

Idioma: <input type="text" name="idioma" value=""><br><br>
Total Páginas: <input type="text" name="total_paginas" value=""><br><br>

Data Edição: <input type="date" name="data_edicao" value=""><br><br>
ISBN: <input type="text" name="isbn" value=""><br><br>
@if($errors->has('isbn'))
Deverá indicar um ISBN correto (13 caracteres)
@endif

Observacoes: <textarea type="text" name="observacoes" ></textarea><br><br>
Imagem de capa: <input type="text" name="imagem_capa"><br><br>







Editora(s):
<select name="id_editora[]" multiple="">
	@foreach($editoras as $editora)
	<option value="{{$editora->id_editora}}"
		@if($editora->id_editora==$editora->id_editora)selected 
		@endif
		>{{$editora->nome}}</option>
	@endforeach
</select><br><br>



Género(s):
<select name="id_genero">
	@foreach($generos as $genero)
	<option value="{{$genero->id_genero}}"

		@if($genero->id_genero==$livro->id_genero)selected @endif

		>{{$genero->designacao}}</option>
	@endforeach
</select><br><br>


Autor(es):
<select name="id_autor[]" multiple="multiple">
	
	@foreach($autores as $autor)
	<option value="{{$autor->id_autor}}"
		@if(in_array($autor->id_autor, $autoresLivro))selected 
		@endif
		>{{$autor->nome}}
	</option>
	@endforeach
</select>
<br><br>
Sinopse: <textarea type="text" name="sinopse"></textarea> <br><br>


<br><br>


<br>
<br>
<input type="submit" value="Enviar!">
</form>
</body>
</html>

