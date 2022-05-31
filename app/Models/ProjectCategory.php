<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectCategory extends Model
{
    use HasFactory;

    protected $fillable = [
        'category_name_en',
        'category_name_ar'
    ];

    protected $hidden = ['created_at', 'updated_at'];

    public function subCategoryes(){
        return $this->hasMany(ProjectSubCategory::class, 'category_id');
    }
}
