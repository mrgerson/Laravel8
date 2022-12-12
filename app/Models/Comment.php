<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Comment extends Model
{
    use HasFactory;



    //relación de uno muchos  (inversa) polimorfica
    public function commentable()
    {
        return $this->morphTo();
    }

    //relación de uno a muchos (inversa) con usuarios
    public function user()
    {
        $this->belongsTo(User::class);
    }
}
