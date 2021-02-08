@extends('layouts.app')
<!DOCTYPE html>
<html>
<head>
	<title>Formulário</title>
</head>
<body>
	<form action="{{route('autores.store')}}" method="post">
@csrf
Nome: <input type="text" name="nome"><br><br>
Nacionalidade: <input type="text" name="nacionalidade" value=""><br><br>
Data Nascimento <input type="date" name="data_nascimento">
<input type="submit" value="Enviar!">
</form>


@if($errors->has('nome'))
<i>Deverá indicar um nome correto</i>
@endif


@if($errors->has('nacionalidade'))
<i>Deverá indicar uma nacionalidade correta </i>
@endif

@if($errors->has('data_nascimento'))
<i>Deverá indicar uma data de nascimento correta </i>
@endif

</body>
</html>

