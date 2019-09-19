<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Inquire extends Model
{
    protected $fillable = [
        'name', 'receiveno', 'gender', 'dob', 'age', 'address', 'phno', 'email', 'installmentdate', 'installmentamount', 'remark', 'position', 'camp', 'education', 'acceptedyear', 'section_id', 'township_id', 'user_id'
    ];

    public function student(){
    	return $this->hasOne('App\Model\Student');
    }

    public function section(){
        return $this->belongsTo('App\Model\Section');
    }

    public function attendances(){
        return $this->hasManyThrough('App\Model\Attendance', 'App\Model\Student');
    }

 
}
