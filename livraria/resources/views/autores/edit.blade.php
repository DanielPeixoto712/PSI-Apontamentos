@extends('layouts.app')
<!DOCTYPE html>
<html>
<head>
	<title>Formulário</title>
</head>
<body>
	<form action="{{route('autores.update',['id'=>$autor->id_autor])}}" method="post">
@csrf
@method('patch')
Nome: <input type="text" name="nome" value=""><br><br>
@if($errors->has('nome'))
Deverá indicar um nome válido<br>
@endif
Nacionalidade: <input type="text" name="nacionalidade" value=""><br><br>
Data Nascimento <input type="date" name="data_nascimento">
<input type="submit" value="Enviar!">
</form>
</body>
</html>