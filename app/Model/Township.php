<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Township extends Model
{
    protected $fillable = [
        'name','city_id', 'user_id'
    ];

    public function cities()
    {
    	return $this->belongsTo('App\Model\City');
    }

    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function companies()
    {
        return $this->hasMany('App\Model\Company');
    }

    public function inquires()
    {
        return $this->hasMany('App\Model\Inquire');
    }

}
