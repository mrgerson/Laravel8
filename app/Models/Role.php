<?php

namespace App\Models;

use App\Models\User;
use App\Models\Permiso;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Role extends Model
{
    use HasFactory;

    //relacion de muchos a muchos con usuarios
    public function users()
    {
        return $this->belongsToMany(User::class)->withTimestamps();
    }

    //relacion de muchos a muchos con permisos
    public function permisos()
    {
        return $this->belongsToMany(Permiso::class);
    }
}
