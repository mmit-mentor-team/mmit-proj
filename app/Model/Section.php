<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    protected $fillable = [
        'codeno', 'title', 'startdate', 'enddate', 'duration_id', 'user_id'
    ];

    public function teachers()
    {
        return $this->belongsToMany('App\Model\Teacher');
    }

    public function user()
    {
    	return $this->belongsTo('App\User','user_id');
    }

    public function duration()
    {
        return $this->belongsTo('App\Model\Duration', 'duration_id');
    }

    public function inquires()
    {
        return $this->hasMany('App\Model\Inquire');
    }


}
