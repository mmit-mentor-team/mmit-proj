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

    public function user()
    {
    	return $this->belongsTo('App\User', 'user_id');
    }

    public function staff()
    {
        return $this->belongsTo('App\Model\Staff', 'staff_id');
    }

    public function course()
    {
        return $this->belongsTo('App\Model\Course', 'course_id');
    }


}
