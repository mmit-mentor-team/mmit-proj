<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Jobcareer extends Model
{
    protected $fillable = [
        'gender', 'senddate', 'remark', 'status', 'company_id', 'position_id', 'user_id'
    ];
}
