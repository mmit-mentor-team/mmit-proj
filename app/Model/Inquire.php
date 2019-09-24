<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Inquire extends Model
{
    protected $fillable = [
        'inquireno', 'receiveno', 'name', 'gender', 'dob', 'age', 'address', 'phno', 'email', 'installmentdate', 'installmentamount', 'remark', 'position', 'camp', 'education', 'acceptedyear', 'section_id', 'township_id', 'user_id'
    ];

    public function student(){
    	return $this->hasOne('App\Model\Student');
    }

    public function user()
    {
    	return $this->belongsTo('App\User', 'user_id');
    }

    public function section()
    {
        return $this->belongsTo('App\Model\Section', 'section_id');
    }

    public function township()
    {
        return $this->belongsTo('App\Model\Township', 'township_id');
    }

    public function attendances(){
        return $this->hasManyThrough('App\Model\Attendance', 'App\Model\Student');
    }


}
