<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Position extends Model
{
    protected $fillable = [
        'name', 'user_id'
    ];

    public function user()
    {
    	return $this->belongsTo('App\User', 'user_id');
    }

    public function jobcareer()
    {
    	return $this->hasOne('App\Model\Jobcareer');
    }
}
