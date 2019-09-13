<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Township;
use App\Model\Inquire;
use App\Model\Section;
use App\User;

use App\Http\Resources\TownshipResource;
use App\Http\Resources\SectionResource;
use App\Http\Resources\UserResource;

class InquireResource extends JsonResource
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
         return[
            'id' => $this->id,
            'name' => $this->name,
            'gender' => $this->gender,
            'dob' => $this->dob,
            'age' => $this->age,
            'address' => $this->address,
            'phno' => $this->phno,
            'email' => $this->email,
            'installmentdate' => $this->installmentdate,
            'installmentamount' => $this->installmentamount,
            'remark' => $this->remark,
            'position' => $this->position,
            'camp' => $this->camp,
            'education' => $this->education,
            'acceptedyear' => $this->acceptedyear,
            'townshipid' => $this->township_id,
            'sectionid' => $this->section_id,
            'user' => new UserResource(User::find($this->user_id)),
            'township' => new TownshipResource(Township::find($this->township_id)),
             'section' => new SectionResource(Section::find($this->section_id)),

            'townshipname' => $this->townshipname,
            'sectiontitle' => $this->sectiontitle,
            'receiveno' => $this->receiveno,
            'codeno' => $this->codeno,
            'course' => $this->course,
            'coursefees'    =>  $this->fees,
            'courseid'  =>  $this->courseid,
            'startdate' =>  $this->startdate,
            'time'  =>  $this->d_time,

            // 'teachers'  =>  $this->teachers,
            // 'teachers_id'   =>  $this->teachers_id,

            's_id'      =>  $this->s_id,
            's_codeno'  =>  $this->s_codeno,
            's_title'   =>  $this->s_title,
            's_startdate'   =>  $this->s_startdate,
            's_enddate'     =>  $this->s_enddate,
            'd_days'        =>  $this->d_days,
            'd_during'      =>  $this->d_during,
            'city_name'     =>  $this->city_name
           
        ];
    }
}
