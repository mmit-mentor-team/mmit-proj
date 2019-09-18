<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $fillable = [
        'zipcode', 'name', 'user_id'
    ];

    public function townships()
    {
        return $this->hasMany('App\Model\Township','township_id');
    }

    public function user()
    {
    	return $this->belongsTo('App\User','user_id');
    }

    public function locations()
    {
        return $this->hasMany('App\Model\Location','location_id');
    }
}
