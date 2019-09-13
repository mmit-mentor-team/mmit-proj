<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = [
        'secinstallmentdate', 'secinstallmentamount', 'remark', 'resume', 'status', 'inquire_id', 'user_id'
    ];

    public function inquire(){
    	return $this->belongsTo('App\Model\Inquire');
    }
}
