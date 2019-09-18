<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    protected $fillable = [
        'name','city_id','user_id'
    ];

    public function user()
    {
    	return $this->belongsTo('App\User','user_id');
    }

    public function staff()
    {
        return $this->hasOne('App\Model\Staff');
    }

    public function income()
    {
    	return $this->hasOne('App\Model\Income');
    }

    public function course()
    {
    	return $this->hasOne('App\Model\Course');
    }

    public function city()
    {
        return $this->belongsTo('App\Model\City','city_id');
    }
}
