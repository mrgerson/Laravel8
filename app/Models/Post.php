<?php

namespace App\Models;

use App\Models\Tag;
use App\Models\User;
use App\Models\Image;
use App\Models\Comment;
use App\Models\Categoria;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;

    //relación de uno a muchos (inversa)
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    //relación de uno muchos (inversa) con categoria
    public function categoria()
    {
        return $this->belongsTo(Categoria::class);
    }

    //relación de uno a uno porlimorfica con image
    public function image(){
        return $this->morphOne(Image::class, 'imageable');
    }

    //relación uno a muchos polimorfica con comment
    public function comments(){
        return $this->morphMany(Comment::class, 'commentable');
    }

    //relacion de muchos a muchos polimorfica con Tag
    //el segundo parametro es el nombre de la tabla intermedia
    public function tags(){
        return $this->morphMany(Tag::class, 'taggable');
    }


}
