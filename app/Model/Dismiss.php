<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Dismiss extends Model
{
    //
    protected $fillable = [
        'remark', 'interview_id', 'user_id'
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
