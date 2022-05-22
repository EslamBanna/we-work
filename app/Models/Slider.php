<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;

    protected $fillable = [
        'title_en',
        'title_ar',
        'description_en',
        'description_ar',
        'image_en',
        'image_ar'
    ];
    public function getTitleEnAttribute($value)
    {
        return $value ?? "";
    }
    public function getTitleArAttribute($value)
    {
        return $value ?? "";
    }
    public function getDescriptionArAttribute($value)
    {
        return $value ?? "";
    }
    public function getDescriptionEnAttribute($value)
    {
        return $value ?? "";
    }
    public function getImageEnAttribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/sliders/' . $value);
    }
    public function getImageArAttribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/sliders/' . $value);
    }
}
