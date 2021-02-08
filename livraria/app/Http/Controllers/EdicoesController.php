<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Edicao;

class EdicoesController extends Controller
{
      public function index(){
   	   // $edicoes = Edicao::all()->sortbydesc('id_livro');
   	$edicoes = Edicao::paginate(4);

   	return view('edicoes.index', ['edicoes'=>$edicoes
   ]);

   }

    public function show (Request $request){
	$idEdicao=$request->id;

	$edicao=Edicao::find($idEdicao);

	return view('edicoes.show',  ['edicao'=>$edicao
]);
}
}
