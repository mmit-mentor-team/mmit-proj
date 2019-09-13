<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Interview extends Model
{
    protected $fillable = [
        'appointment', 'remark', 'status', 'student_id', 'jobcareer_id', 'user_id'
    ];

    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function jobcareer()
    {
    	return $this->belongsTo('App\Model\Jobcareer');
    }

    public function hire()
    {
        return $this->belongsTo('App\Model\Hire');
    }

    public function dismiss()
    {
        return $this->belongsTo('App\Model\Dismiss');
    }
}
