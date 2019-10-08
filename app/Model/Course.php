<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $fillable = [
        'codeno', 'name','fees','location_id','user_id'
    ];

    public function user()
    {
    	return $this->belongsTo('App\User','user_id');
    }

    public function location()
    {
    	return $this->belongsTo('App\Model\Location','location_id');
    }

    public function durations()
    {
    	return $this->hasMany('App\Model\Duration');
    }

    public function teacher()
    {
        return $this->hasOne('App\Model\Teacher');
    }

    public function staffs()
    {
        return $this->belongsToMany('App\Model\Staff','teachers');
    }
    
}
