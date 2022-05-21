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
}
