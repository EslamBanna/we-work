<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    protected $fillable = [
        'type',
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
}
