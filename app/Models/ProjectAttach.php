<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectAttach extends Model
{
    use HasFactory;

    protected $fillable = [
        'project_id',
        'attach'
    ];

    protected $hidden = ['created_at', 'updated_at'];
    public function getAttachAttribute($value)
    {
        $actual_link = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
        return ($value == null ? '' : $actual_link . 'images/projects/' . $value);
    }
}
