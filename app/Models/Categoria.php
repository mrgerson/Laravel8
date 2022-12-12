<?php

namespace App\Models;

use App\Models\Post;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Categoria extends Model
{
    use HasFactory;

    //Relación de uno a muchos con posts
    public function posts()
    {
        return $this->hasMany(Post::class);
    }
}
