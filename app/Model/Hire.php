<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Hire extends Model
{
    protected $fillable = [
        'startdate', 'salary', 'remark', 'interview_id', 'user_id'
    ];
}
