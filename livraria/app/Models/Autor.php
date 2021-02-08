<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Autor extends Model
{
    use HasFactory;
    protected $primaryKey="id_autor";
    protected $table="autores";

public function livros(){
    	return $this->hasMany('App\Models\Livro', 'id_autor');
    }

protected $fillable=[
    'nome',
    'nacionalidade',
    'observacoes'
    

];
   
}
