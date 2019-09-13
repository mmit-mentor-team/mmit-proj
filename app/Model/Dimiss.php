<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Dimiss extends Model
{
    protected $fillable = [
        'remark', 'interview_id', 'user_id'
    ];
}
