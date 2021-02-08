@extends('layouts.app')
<!DOCTYPE html>
<html>
<head>
	<title>Formulário</title>
</head>
<body>
	<form action="{{route('generos.update',['id'=>$genero->id_genero])}}" method="post">
@csrf
@method('patch')
Designação: <input type="text" name="designacao" value=""><br><br>
@if($errors->has('designacao'))
Deverá indicar uma designaçãov válida<br>
@endif

Observacoes: <textarea type="text" name="observacoes" ></textarea><br><br>
<input type="submit" value="Enviar!">
</form>
</body>
</html>