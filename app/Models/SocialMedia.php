<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SocialMedia extends Model
{
    use HasFactory;

    protected $fillable = [
        'instgram',
        'twitter',
        'youtube',
        'facebook',
        'snapchat',
        'linkedin'
    ];
    public function getInstgramAttribute($value)
    {
        return $value ?? "";
    }
    public function getTwitterAttribute($value)
    {
        return $value ?? "";
    }
    public function getYoutubeAttribute($value)
    {
        return $value ?? "";
    }
    public function getFacebookAttribute($value)
    {
        return $value ?? "";
    }
    public function getSnapchatAttribute($value)
    {
        return $value ?? "";
    }
    public function getLinkedinAttribute($value)
    {
        return $value ?? "";
    }
}
