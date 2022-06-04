<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'phone',
        'title',
        'msg'
    ];

    protected $hidden = [
        'created_at',
        'updated_at'
    ];
    
    public function getNameAttribute($value)
    {
        return $value ?? "";
    }

    public function getEmailAttribute($value)
    {
        return $value ?? "";
    }
    public function getPhoneAttribute($value)
    {
        return $value ?? "";
    }
    public function getIdentityNumberAttribute($value)
    {
        return $value ?? "";
    }
    public function getTypeOfContactAttribute($value)
    {
        return $value ?? "";
    }
    public function getTitleAttribute($value)
    {
        return $value ?? "";
    }
    public function getMsgAttribute($value)
    {
        return $value ?? "";
    }
}
