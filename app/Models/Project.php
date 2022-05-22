<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    protected $fillable = [
        'type_en',
        'type_ar',
        'logo',
        'title_en',
        'title_ar',
        'description_en',
        'description_ar',
        'link1',
        'link2',
        'selected'
    ];

    public function attachs()
    {
        return $this->hasMany(ProjectAttach::class, 'project_id');
    }

    public function image()
    {
        return $this->hasOne(ProjectAttach::class, 'project_id');
    }


    public function getTypeEnAttribute($value)
    {
        return $value ?? "";
    }
    public function getTypeArAttribute($value)
    {
        return $value ?? "";
    }
    public function getLogoAttribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/projects_logo/' . $value);
    }
    public function getTitleEnAttribute($value)
    {
        return $value ?? "";
    }
    public function getTitleArAttribute($value)
    {
        return $value ?? "";
    }
    public function getDescriptionEnAttribute($value)
    {
        return $value ?? "";
    }
    public function getDescriptionArAttribute($value)
    {
        return $value ?? "";
    }
    public function getLink1Attribute($value)
    {
        return $value ?? "";
    }
    public function getLink2Attribute($value)
    {
        return $value ?? "";
    }
}
