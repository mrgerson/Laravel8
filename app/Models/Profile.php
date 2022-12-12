<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Profile extends Model
{
    use HasFactory;

    //relación inversa de uno a uno con usuarios (recuperar los datos de perfiles con su usuario)
    public function user(){

        return $this->BelongsTo(User::class);
    }
}
