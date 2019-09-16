<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\User;
use App\Model\Location;

use App\Http\Resources\UserResource;
class CourseResource extends JsonResource
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
            'id'            => $this->id,
            'name'          => $this->name,
            'fees'          => $this->fees,
            'location_id'   =>  $this->location_id,
            'user_id'       =>  $this->user_id,

            'location'      =>new LocationResource(Location::find($this->location_id)),
            'user'         => new UserResource(User::find($this->user_id)),
        ];
    }
}
