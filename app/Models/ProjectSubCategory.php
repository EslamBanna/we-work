<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectSubCategory extends Model
{
    use HasFactory;

    protected $fillable = [
        'category_id',
        'sub_category_name_en',
        'sub_category_name_ar',
        'main_photo',
        'title1_ar',
        'title1_en',
        'title2_ar',
        'title2_en',
        'description1_ar',
        'description2_en',
        'photo1',
        'photo2',
        'photo3',
        'photo4',
        'photo5',
    ];

    protected $hidden = ['created_at', 'updated_at'];

    public function projects()
    {
        return $this->hasMany(Project::class, 'sub_category_id');
    }

    public function getMainPhotoAttribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/project_sub_category/' . $value);
    }
    public function getPhoto1Attribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/project_sub_category/' . $value);
    }
    public function getPhoto2Attribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/project_sub_category/' . $value);
    }
    public function getPhoto3Attribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/project_sub_category/' . $value);
    }
    public function getPhoto4Attribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/project_sub_category/' . $value);
    }
    public function getPhoto5Attribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/project_sub_category/' . $value);
    }
    
}
