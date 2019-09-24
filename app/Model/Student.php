<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = [
        'secinstallmentdate', 'secinstallmentamount', 'remark', 'resume', 'status', 'inquire_id', 'user_id'
    ];

    public function inquire(){
    	return $this->belongsTo('App\Model\Inquire', 'inquire_id');
    }

    public function user()
    {
    	return $this->belongsTo('App\User', 'user_id');
    }

    public function jobcareer()
    {
        return $this->belongsTo('App\Model\Jobcareer');
    }

    public function interviews(){
    	return $this->hasMany('App\Model\Interview');
    }

    public function dismiss(){
    	return $this->belongsTo('App\Model\Dismiss');
    }

    public function attendances(){
        return $this->hasMany('App\Model\Attendance');
    }
}
