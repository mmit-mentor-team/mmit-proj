<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\User;
use App\Model\City;

class LocationResource extends JsonResource
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
            'cityid' => $this->city_id,
            'city' =>new CityResource(City::find($this->city_id)),
            'cityname' => $this->cityname,
            // 'cityid'   => $this->cityid,
            'username' => $this->username
        ];
    }
}
