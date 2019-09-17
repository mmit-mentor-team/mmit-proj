<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

use App\User;
use App\Http\Resources\UserResource;

class ExpenseResource extends JsonResource
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
            'type' => $this->type,
            'amount'=> $this->amount,
            'description'=>$this->description,
            'date'=>$this->date,
            'attachment'=>$this->attachment,
        ];
    }
}
