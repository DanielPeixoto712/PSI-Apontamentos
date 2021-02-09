<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Http\Request;
use App\Models\Livro;
use App\Models\Genero;
use App\Models\Autor;
use App\Models\Editora;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\storage;

class LivrosController extends Controller
{


   public function index(){
   	$livros = Livro::all();
   	$livros = Livro::all()->sortbydesc('id_livro');
   	//$livros = Livro::paginate(4);



   	return view('livros.index', ['livros'=>$livros
   ]);

   }

   public function create(){
      $generos=Genero::all();
      $autores=Autor::all();
      $editoras=Editora::all();
     return view ('livros.create',[
     'generos'=>$generos,
     'autores'=>$autores,
     'editoras'=>$editoras
   

  ]);
   }

   public function store(Request $request){
      if ($request->hasFile('imagem_capa')) {
        $nomeImagem=$request->file('imagem_capa')->getClientOriginalName();
        $nomeImagem=time(). '_'. $nomeImagem;
        $guardarImagem=$request->file('imagem_capa')->storeAs('imagens/livros', $nomeImagem);
        $livro['imagem_capa']=$nomeImagem;
      }

      $novoLivro=$request->validate([
         'titulo'=>['required', 'min:3', 'max:100'],
         'idioma'=>['nullable', 'min:3', 'max:20'],
         'total_paginas'=>['nullable', 'numeric', 'min:1'],
         'data_edicao'=>['nullable','date'],
         'isbn'=>['required', 'min:13', 'max:13'],
         'observacoes'=>['nullable', 'date'],
         'imagem_capa'=>['nullable', 'image', 'max2000'],
         'id_genero'=>['numeric', 'nullable'],
         'sinopse'=>['nullable','min:3', 'max:255'],
         'id_user'=>['numeric', 'required']



      ]);   
      $autores=$request->id_autor;
      $livro=Livro::create($novoLivro);
      $livro->autores()->attach($autores);


    




      return redirect()->route('livros.show', ['id'=>$livro->id_livro
   ]);
   }



public function show (Request $request){
	$idLivro=$request->id;

	// $livro=Livro::find($idLivro);


	
   $livro=Livro::where('id_livro', $idLivro)->with(['genero', 'autores', 'editoras', 'autor'])->first();



	return view('livros.show',  ['livro'=>$livro]);

}

public function edit (Request $request){
   $idLivro=$request->id;
   $idEditora=$request->id;
   $livro=Livro::where('id_livro',$idLivro)->first();
if(Gate::allows('atualizar-livro',$livro)||Gate::allows('admin')){ 
  $generos=Genero::all();
  $autores=Autor::all();
  $editoras=Editora::all();
   
   $autoresLivro=[];
   foreach ($livro->autores as $autor) {
      $autoresLivro[]=$autor->id_autor;
  } 

   $editora=Editora::where('id_editora',$idEditora)->first();
   $editorasLivro=[];
   foreach ($livro->editoras as $editora) {
      $editorasLivro[]=$editora->id_editora;
   }

   return view('livros.edit',[
      'livro'=>$livro,
      'generos'=>$generos,
      'autores'=>$autores,
      'autoresLivro'=>$autoresLivro,
      'editoras'=>$editoras
     
]);

   if ($request->hasFile('imagem_capa')) {
     $nomeImagem=$request->file('imagem_capa')->getClientOriginalName();
     $nomeImagem=time().'_'.$nomeImagem;
     $guardarImagem=$request->file('imagem_capa')->storeAS('imagens/livros',$nomeImagem);



     if (!is_null($imagemAntiga)) {
       Storage::delete('imagens/livros/'. $imagemAntiga);
     }
     $atualizarLivro['imagem_capa']=$nomeImagem;
   }



 }
   else{
    return redirect()->route('livros.index')->with('mensagem','Não tem permissão para aceder á área pretendida');
   }
}

public function update(Request $request){
   $idLivro=$request->id;
   $livro=Livro::findOrfail($idLivro);
   $imagemAntiga=$livro->imagem_capa;

   $atualizarLivro=$request->validate([
   'titulo'=>['required','min:3','max:100'],
   'idioma'=>['nullable','min:3','max:20'],
   'total_paginas'=>['nullable','numeric','min:1'],
   'data_edicao'=>['nullable','date'],
   'isbn'=>['required','min:13','max:13'],
   'observacoes'=>['nullable','min:3','max:255'],
   'imagem_capa'=>['nullable'],
   'id_genero'=>['numeric','nullable'],
   'sinopse'=>['nullable','min:3','max:255'],
    'id_user'=>['numeric', 'required'],
    'imagem_capa'=>['image','nullable', 'max:2000']
]);

 if ($request->hasFile('imagem_capa')) {
        $nomeImagem=$request->file('imagem_capa')->getClientOriginalName();
        $nomeImagem=time(). '_'. $nomeImagem;
        $guardarImagem=$request->file('imagem_capa')->storeAs('imagens/livros', $nomeImagem);
        $livro['imagem_capa']=$nomeImagem;
      }

   $autores=$request->id_autor;
   $livro->update($atualizarLivro);
   $livro->autores()->sync($autores);

  return redirect()->route('livros.show', ['id'=>$livro->id_livro
]);

}

public function destroy (Request $request){
   $idLivro=$request->id;
   $livro=Livro::findOrFail($idLivro);


   $autoresLivro=Livro::findOrfail($idLivro)->autores;
   $livro->autores()->detach($autoresLivro);

   $livro->delete();


   return redirect()->route('livros.index')->with('mensagem','Livro eliminado');
}

public function delete(Request $request){
   $idLivro=$request->id;
   $livro=Livro::where('id_livro',$idLivro)->first();
   return view ('livros.delete',['livro'=>$livro]);
   
}
public function boot()
{
  $this->registerPolicies();
  Gate::define('atualizar-livro', function($user, $livro){
    return $user->id==$livro->id_user;
  });
}
}
