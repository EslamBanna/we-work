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
        'photo'
    ];

    protected $hidden = ['password', 'created_at', 'updated_at'];
    public function getNameAttribute($value)
    {
        return $value ?? "";
    }
    public function getEmailAttribute($value)
    {
        return $value ?? "";
    }
    public function getPhotoAttribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/admins/' . $value);
    }
}
