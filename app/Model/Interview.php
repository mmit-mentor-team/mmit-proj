<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Interview extends Model
{
    protected $fillable = [
        'appointment', 'remark', 'status', 'student_id', 'jobcareer_id', 'user_id'
    ];
}
