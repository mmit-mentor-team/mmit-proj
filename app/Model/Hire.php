<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Hire extends Model
{
    protected $fillable = [
        'startdate', 'salary', 'remark', 'interview_id', 'user_id'
    ];

    public function user()
    {
    	return $this->belongsTo('App\User','user_id');
    }

    public function interview()
    {
    	return $this->hasOne('App\Model\Interview','interview_id');
    }
}
