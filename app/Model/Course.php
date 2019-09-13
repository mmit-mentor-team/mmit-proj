<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $fillable = [
        'name','fees','location_id','user_id'
    ];

    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function location()
    {
    	return $this->belongsTo('App\Model\Location');
    }

    public function durations()
    {
    	return $this->hasMany('App\Model\Duration');
    }
    
}
