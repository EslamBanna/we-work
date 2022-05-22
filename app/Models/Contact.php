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
    'identity_number',
    'type_of_contact',
    'title',
    'msg'
    ];
}
