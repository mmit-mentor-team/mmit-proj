<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $fillable = [
        'logo', 'name', 'hrname', 'phno', 'email', 'address', 'remark', 'fblink', 'township_id', 'user_id'
    ];

    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function township()
    {
    	return $this->belongsTo('App\Model\Township');
    }

    public function jobcareers()
    {
        return $this->hasMany('App\Model\Jobcareer');
    }
}
