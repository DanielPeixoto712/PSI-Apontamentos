<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Editora extends Model
{
    use HasFactory;
       protected $primaryKey="id_editora";
    protected $table="editoras";


protected $fillable=[
    'nome',
    'morada',
    'observacoes'
    

];
   
}

