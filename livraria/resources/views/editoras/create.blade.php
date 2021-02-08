@extends('layouts.app')
<!DOCTYPE html>
<html>
<head>
	<title>Formulário</title>
</head>
<body>
	<form action="{{route('editoras.store')}}" method="post">
@csrf
Nome: <input type="text" name="nome" value=""><br><br>
Morada: <input type="text" name="morada"><br><br>
<input type="submit" value="Enviar!">
</form>


@if($errors->has('nome'))
<i>Deverá indicar um nome correto</i>
@endif

@if($errors->has('morada'))
<i>Deverá indicar uma morada correta </i>
@endif

</body>
</html>