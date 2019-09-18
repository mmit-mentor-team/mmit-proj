<?php

namespace App\Http\Resources\interviews;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\interviews\InquireResource;
use App\Model\Inquire;

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
        return [
            'id' => $this->id,
            'inquire_id' => $this->inquire_id,
            'inquires' => new InquireResource(Inquire::find($this->inquire_id))
            
        ];
    }
}
