<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Curso extends Model
{
    use HasFactory;

    /*  con el fillable debo especificar todos los campos que quiero que acepte que vienen desde el formulario. cualquier dato que sea
    ingresado y no se encuentre este lo va a ignorar  */

   /*  protected $fillable = ['name', 'descripcion', 'categoria']; */

   /* con el guarded hace algo parecido al fillable, la diferencia es que acá solo se ingresa el valor que quiero que ignore de la base
   de datos y los demás campos los va a insertar en la base de datos*/
   protected $guarded = [];
}
