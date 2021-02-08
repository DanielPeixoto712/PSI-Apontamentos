@extends('layouts.app')
<!DOCTYPE html>
<html>
<head>
	<title>Formulário</title>
</head>
<body>
	<form action="{{route('editoras.update',['id'=>$editora->id_editora])}}" method="post">
@csrf
@method('patch')
Nome: <input type="text" name="nome" value=""><br><br>
@if($errors->has('nome'))
Deverá indicar um nome válido<br>
@endif

Morada: <input type="text" name="morada" value=""><br><br>

<input type="submit" value="Enviar!">
</form>
</body>
</html>