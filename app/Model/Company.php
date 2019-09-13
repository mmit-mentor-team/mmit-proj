<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $fillable = [
        'logo', 'name', 'hrname', 'phno', 'email', 'address', 'remark', 'fblink', 'township_id', 'user_id'
    ];
}
