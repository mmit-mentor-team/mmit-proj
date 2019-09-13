<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Location;
use App\Model\Staff;
use App\Model\City;
use Auth;
class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return[
            "id" => Auth::user()->id,
            "name" => $this->name,
            "email" => $this->email,
            "password" => $this->password,
            "role_id"=>$this->role_id,
            "role_name" => $this->role_name,
            "role_guard_name" => $this->role_guard_name,
            // "staff"=>new StaffResource(Staff::find($this->staff)),
            "staff_id"=>$this->staff_id,
            "staff_dob"=>$this->staff_dob,
            "staff_fathername"=>$this->staff_fathername,
            "staff_nrc" => $this->staff_nrc,
            "staff_photo" => $this->staff_photo,
            // "staff_joindate" => $this->staff_joindate,
            "location_id" => $this->location_id,
            "location_name" => $this->location_name,
            "city_id"=>$this->city_id,
            "city_name" => $this->city_name,
            "location"=>new LocationResource(Location::find($this->location_id)),
            "staff"=> new StaffResource(Staff::find($this->staff_id)),
            "city"=>new CityResource(City::find($this->city_id)),

        ];
    }
}
