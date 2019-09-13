<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    protected $fillable = [
        'staff_id','course_id','user_id'
    ];

    public function sections()
    {
        return $this->belongsToMany('App\Model\Section');
    }
}
