<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    protected $fillable = [
        'date', 'status', 'remark', 'student_id', 'user_id'
    ];
}
