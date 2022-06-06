<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    protected $fillable = [
        'sub_category_id',
        'logo',
        'title_en',
        'title_ar',
        'description_en',
        'description_ar',
        'link1',
        'link2',
        'selected'
    ];

    protected $hidden = ['created_at', 'updated_at', 'selected'];

    public function attachs()
    {
        return $this->hasMany(ProjectAttach::class, 'project_id');
    }

    public function image()
    {
        return $this->hasOne(ProjectAttach::class, 'project_id');
    }

    public static function boot()
    {
        parent::boot();
        self::deleting(function ($project) {
            $project->attachs()->each(function ($attach) {
                $attach->delete();
            });
        });
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
