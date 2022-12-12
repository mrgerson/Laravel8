<?php

namespace App\Models;

use App\Models\Role;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Permiso extends Model
{
    use HasFactory;

    //relacion de muchos a muchos con roles
    public function roles()
    {
        return $this->belongsToMany(Role::class);
    }
}
