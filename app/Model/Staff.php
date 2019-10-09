<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
	protected $table = 'staffs';

    protected $fillable = [
        'dob','fathername','nrc','phone','photo','joineddate','leavedate','status', 'location_id','user_id', 'role_id'
    ];

    public function user()
    {
        return $this->belongsTo('App\User','user_id');
    }

    public function location()
    {
        return $this->belongsTo('App\Model\Location','location_id');
    }

    public function teacher()
    {
    	return $this->hasOne('App\Model\Teacher');
    }

    public function courses()
    {
        return $this->belongsToMany('App\Model\Course','teachers')
                        ->withTimestamps();;
    }
}
