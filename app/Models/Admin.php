<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Admin extends Authenticatable
{
    use HasFactory,HasApiTokens;
    
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    protected $hidden = ['password'];
    
    public function getNameAttribute($value)
    {
        return $value ?? "";
    }
    public function getEmailAttribute($value)
    {
        return $value ?? "";
    }
}
