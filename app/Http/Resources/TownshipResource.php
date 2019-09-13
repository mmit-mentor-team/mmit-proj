<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Township;
use App\Model\City;
use App\User;

use App\Http\Resources\CityResource;
use App\Http\Resources\UserResource;

class TownshipResource extends JsonResource
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
            'city_id' => $this->city_id,
            'city' => new CityResource(City::find($this->city_id)),
            'user' => new UserResource(User::find($this->user_id))
        ];
    }
}
