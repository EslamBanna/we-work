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
        'Sub_category_name_ar'
    ];
    protected $hidden = ['created_at', 'updated_at'];

    public function projects(){
        return $this->hasMany(Project::class, 'sub_category_id');
    }
}
