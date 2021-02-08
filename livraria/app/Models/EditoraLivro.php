<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EditoraLivro extends Model
{
    use HasFactory;
    protected $primaryKey= "id_el";
    protected $table="editoras_livros";
}

}
