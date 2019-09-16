<?php

namespace App\Http\Resources\attendances;

use App\Model\Inquire;
use Illuminate\Http\Resources\Json\JsonResource;

class MyStudentResource extends JsonResource
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
            'name' => new MyInquireResource(Inquire::find($this->inquire_id))
        ];
    }
}
