<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    use HasFactory;

    protected $fillable = [
        'name_ar',
        'name_en',
        'photo',
        'job_title_ar',
        'job_title_en',
        'job_description_ar',
        'job_description_en'
    ];

    public function getNameEnAttribute($value)
    {
        return $value ?? "";
    }
    public function getNameArAttribute($value)
    {
        return $value ?? "";
    }
    public function getPhotoAttribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/teams/' . $value);
    }

    public function getJobTitleEnAttribute($value)
    {
        return $value ?? "";
    }
    public function getJobTitleArAttribute($value)
    {
        return $value ?? "";
    }
    public function getJobDescriptionArAttribute($value)
    {
        return $value ?? "";
    }
    public function getJobDescriptionEnAttribute($value)
    {
        return $value ?? "";
    }
}
