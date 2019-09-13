<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\InquireResource;
use App\Http\Resources\UserResource;
use App\Model\Inquire;
use App\User;
class StudentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
       // return parent::toArray($request);
        return [
            'id'=>$this->id,
            "secinstallmentdate"=>$this->secinstallmentdate,
            "secinstallmentamount"=>$this->secinstallmentamount,
            "remark"=>$this->remark,
            "status"=>$this->status,
            "resume"=>$this->resume,
            "inquire_id"=>$this->inquire_id,
            'inquire_name' => $this->inquire_name,
            'course_fee' => $this->coursefees,
            "i_name"    =>  $this->i_name,
            'i_receiveno'   =>  $this->i_receiveno,
            "i_gender"  =>  $this->i_gender,
            "i_dob" =>  $this->i_dob,
            "i_age" =>  $this->i_age,
            "i_address" =>  $this->i_address,
            "i_phno"    =>  $this->i_phno,
            "i_email"   =>  $this->i_email,
            "i_installmentdate" =>  $this->i_installmentdate,
            "i_installmentamount"   =>  $this->i_installmentamount,
            "i_camp"    =>  $this->i_camp,
            "i_education"   =>  $this->i_education,
            "i_acceptedyear"    =>  $this->i_acceptedyear,
            "s_codeno"  =>  $this->s_codeno,
            "s_title"   =>  $this->s_title,
            "s_startdate"   =>  $this->s_startdate,
            "s_enddate"     =>  $this->s_enddate,
            "d_time"        =>  $this->d_time,
            "d_days"        =>  $this->d_days,
            "d_during"      =>  $this->d_during,
            "c_name"        =>  $this->c_name,
            "city_name"     =>  $this->city_name



                 ];
    }
}
