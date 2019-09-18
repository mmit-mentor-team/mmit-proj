<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\City;

use App\User;
use App\Http\Resources\UserResource;

class CityResource extends JsonResource
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
            'id'        => $this->id,
            'zipcode'   =>  $this->zipcode,
            'name'      => $this->name,
            'user'      => new UserResource(User::find($this->user_id))
        ];
    }
}
