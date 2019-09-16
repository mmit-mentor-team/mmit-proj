<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Jobcareer extends Model
{
    protected $fillable = [
        'gender', 'senddate','nos','remark', 'status', 'company_id', 'position_id', 'user_id'
    ];

    public function interviews()
    {
    	return $this->hasMany('App\Model\Interview');
    }
}
