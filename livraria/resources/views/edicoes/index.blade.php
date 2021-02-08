<ul>
@foreach($edicoes as $edicao)
<li>{{$edicao->id_editora}}</li>
<li>{{$edicao->id_livro}}</li>
<li>{{$edicao->data}}</li>
<li>{{$edicao->observacoes}}</li>
@endforeach
</ul>
{{$edicoes->render()}}