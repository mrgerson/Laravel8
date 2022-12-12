<?php

namespace App\Models;

use App\Models\Post;
use App\Models\Role;
use App\Models\Image;
use App\Models\Video;
use App\Models\Comment;

use App\Models\Profile;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    protected function name (): Attribute
    {
        return new Attribute(
            get: fn($value) => ucwords($value),
            set: fn($value) => strtolower($value)
        );
    }

    //relación de uno a uno de usuarios con perfiles
    public function profile(){
        return $this->hasOne(Profile::class);

        //se utiliza cuando la llave foranea no siga las conveciones de laravel ejemplo cuando la foranea no sea user_id de la tabla user
        //y el tercer parametro cuando la llave pricipal no sea id
       // return $this->hasOne(Profile::class, 'foreign_key', 'local_key');

    }

    //relación uno a muchos con post
    public function posts(){
        return $this->hasMany(Post::class);
    }

    //relación uno a muchos con video
    public function videos(){
        return $this->hasMany(Video::class);
    }

    //relación de muchos a muchos con roles
    public function roles(){
        return $this->belongsToMany(Role::class);
    }

    //relación de uno a muchos con comment
    public function comments(){
        return $this->hasMany(Comment::class);
    }


    //relación de uno a uno porlimorfica con image
    //el campo imageable es el metodo que se encuentra en el modelo imagen
    public function image(){
        return $this->morphOne(Image::class, 'imageable');
    }
}
