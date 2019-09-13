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
}
