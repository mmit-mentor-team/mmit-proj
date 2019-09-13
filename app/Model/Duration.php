<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Duration extends Model
{
    protected $fillable = [
        'time','days','during','course_id','user_id'

    ];

    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function course()
    {
    	return $this->belongsTo('App\Model\Course');
    }

    public function sections()
    {
        return $this->hasMany('App\Model\Section');
    }
}
