<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Township;
use App\Model\Inquire;
use App\Model\Section;

use App\Http\Resources\TownshipResource;
use App\Http\Resources\SectionResource;

use App\User;
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
            'id'                =>     $this->id,
            'inquireno'         =>     $this->inquireno,
            'receiveno'         =>     $this->receiveno,
            'name'              =>     $this->name,
            'gender'            =>     $this->gender,
            'dob'               =>     $this->dob,
            'age'               =>     $this->age,
            'address'           =>     $this->address,
            'phno'              =>     $this->phno,
            'email'             =>     $this->email,
            'installmentdate'   =>     $this->installmentdate,
            'installmentamount' =>     $this->installmentamount,
            'remark'            =>     $this->remark,
            'position'          =>     $this->position,
            'camp'              =>     $this->camp,
            'education'         =>     $this->education,
            'acceptedyear'      =>     $this->acceptedyear,
            'actionstatus'      =>     $this->actionstatus,
            'section_id'        =>     $this->section_id,
            'township_id'       =>     $this->township_id,
            'user_id'           =>     $this->user_id,

            'section'           => new SectionResource(Section::find($this->section_id)),
            'township'          => new TownshipResource(Township::find($this->township_id)),
            'user'              => new UserResource(User::find($this->user_id)),
           
        ];
    }
}
