<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Editora;

class EditorasController extends Controller
{
      public function index(){
   	//$editoras = Editora::all()->sortbydesc('ide');
   	$editoras = Editora::paginate(14);

   	return view('editoras.index', ['editoras'=>$editoras
   ]);

   }

    public function show (Request $request){
	$idEditora=$request->id;

	//$editora=Editora::find($idEditora);
  $editora=Editora::where('id_editora', $idEditora)->first();


	return view('editoras.show',  ['editora'=>$editora
]);
}

public function create(){

     return view ('editoras.create');
   }

   public function store(Request $request){
      

      $novoEditora=$request->validate([
         'nome'=>['required', 'min:3', 'max:100'],
         'morada'=>['nullable', 'min:3', 'max:120'],
         'obseracoes'=>['nullable', 'min:3', 'max:120'],


      ]);   
      $editora=Editora::create($novoEditora);

      return redirect()->route('editoras.show', ['id'=>$editora->id_editora
   ]);
   }


public function edit (Request $request){
   $idEditora=$request->id;

   $editora=Editora::where('id_editora',$idEditora)->first();

   return view('editoras.edit',['editora'=>$editora
]);
}


   public function update(Request $request){
   $idEditora=$request->id;
   $editora=Editora::findOrfail($idEditora);

   $atualizarEditora=$request->validate([
   'nome'=>['required', 'min:3', 'max:100'],
   'morada'=>['nullable', 'min:3', 'max:120'],
   'obseracoes'=>['nullable', 'min:3', 'max:120'],
   
]);
   $editora->update($atualizarEditora);

  return redirect()->route('editoras.show', ['id'=>$editora->id_editora
]);

}

public function destroy (Request $request){
   $idEditora=$request->id;
   $editora=Editora::findOrFail($idEditora);
   $editora->delete();


   return redirect()->route('editoras.index')->with('mensagem','Editora eliminado');
}

public function delete(Request $request){
   $idEditora=$request->id;
   $editora=Editora::where('id_editora',$idEditora)->first();
   return view ('editoras.delete',['editora'=>$editora]);
}
}