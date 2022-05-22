<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContactInfo extends Model
{
    use HasFactory;
    protected $fillable = [
        'key_en',
        'key_ar',
        'value'
    ];
    public function getKeyEnAttribute($value)
    {
        return $value ?? "";
    }
    public function getKeyArAttribute($value)
    {
        return $value ?? "";
    }
    public function getValueAttribute($value)
    {
        return $value ?? "";
    }
}
