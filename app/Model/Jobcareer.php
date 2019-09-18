<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Jobcareer extends Model
{
    protected $fillable = [
        'gender', 'senddate','nos','remark', 'status', 'company_id', 'position_id', 'user_id'
    ];

    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function company()
    {
    	return $this->belongsTo('App\Model\Company');
    }

    public function position()
    {
        return $this->belongsTo('App\Model\Position');
    }

    public function interviews()
    {
        return $this->hasMany('App\Model\Interview');
    }

    public function students()
    {
        return $this->hasMany('App\Model\Student');
    }
}
