<?php

namespace App\Models;

use App\Models\Post;
use App\Models\Video;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Tag extends Model
{
    use HasFactory;

    //relación de muchos a muchos inversa polimorfica  con post
    //el segundo parametro el nombre de la tabla intermedia en singular
    public function posts()
    {
        return $this->morphedByMany(Post::class, 'taggable');
    }

    //relación de muchos a muchos inversa polimorfica  con Video
    //el segundo parametro el nombre de la tabla intermedia en singular
    public function videos()
    {
        return $this->morphedByMany(Video::class, 'taggable');
    }
}
