<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AutorLivro extends Model
{
    use HasFactory;

    protected $primaryKey= "id_al";
    protected $table="autores_livros";
}
