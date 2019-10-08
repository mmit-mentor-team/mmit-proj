<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Location;
use App\Model\Staff;
use App\Model\Role;

use App\Http\Resources\LocationResource;

use App\User;
use App\Http\Resources\UserResource;

class StaffResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {

        /*return parent::toArray($request);*/
        return[
            'id'            => $this->id,
            'dob'           => $this->dob,
            'fathername'    => $this->fathername,
            'nrc'           => $this->nrc,
            'phone'         => $this->phone,
            'photo'         => $this->photo,
            'joineddate'    => $this->joineddate,
            'leavedate'     => $this->leavedate,
            'status'        => $this->status,
            'location_id'   => $this->location_id,
            'user_id'       => $this->user_id,
            'courses' => CourseResource::collection(Staff::find($this->id)->courses),
            'location'     => new LocationResource(Location::find($this->location_id)),
            'user'         => new UserResource(User::find($this->user_id)),
        ];
    }
}
