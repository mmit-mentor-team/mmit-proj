<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\User;
use App\Model\Location;

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
            'id' => $this->id,
            'name' => $this->name,
            'fees' => $this->fees,

            'locationid' => $this->location_id,
            'location' =>new LocationResource(Location::find($this->location_id)),
            'locationname' => $this->locationname,
            'cityname'  => $this->cityname
        ];
    }
}
