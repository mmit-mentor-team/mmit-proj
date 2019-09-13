<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Duration extends Model
{
    protected $fillable = [
        'time','days','during','course_id','user_id'

    ];}
