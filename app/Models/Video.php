<?php

namespace App\Models;

use App\Models\Tag;
use App\Models\User;
use App\Models\Comment;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Video extends Model
{
    use HasFactory;

    //relación inversa de uno a muchos con usuarios
    public function user()
    {
        return $this->BelongsTo(User::class);
    }

    //relación uno a muchos polimorfica con comment
    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    //relacion de muchos a muchos polimorfica con Tag
    //el segundo parametro es el nombre de la tabla intermedia
    public function tags(){
        return $this->morphMany(Tag::class, 'taggable');
    }
}
