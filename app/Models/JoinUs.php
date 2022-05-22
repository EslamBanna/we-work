<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JoinUs extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'phone',
        'job_title',
        'resume',
        'job_description'
    ];

    public function getResumeAttribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/resumes/' . $value);
    }
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
    public function getJobTitleAttribute($value)
    {
        return $value ?? "";
    }
    public function getJobDescriptionAttribute($value)
    {
        return $value ?? "";
    }
  
}
