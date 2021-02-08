@extends('layouts.app')
<!DOCTYPE html>
<html>
<head>
	<title>Formulário</title>
</head>
<body>
	<form action="{{route('generos.store')}}" method="post">
@csrf
Designação: <input type="text" name="designacao"><br><br>
Observações: <input type="text" name="observacoes"><br><br>
<input type="submit" value="Enviar!">
</form>


@if($errors->has('designacao'))
<i>Deverá indicar uma Designação correta</i>
@endif

@if($errors->has('observacoes'))
<i>Deverá indicar uma observação correta </i>
@endif

</body>
</html>

