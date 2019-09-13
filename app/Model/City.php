<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $fillable = [
        'name', 'user_id'
    ];

    public function townships()
    {
        return $this->hasMany('App\Model\Township');
    }
}
