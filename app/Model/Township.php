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

}
