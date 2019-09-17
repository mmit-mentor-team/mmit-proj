<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Inquire;
use App\Http\Resources\InquireResource;

use App\User;
use App\Http\Resources\UserResource;

class DismissResource extends JsonResource
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
            'remark' => $this->remark,
            'interview_id' => $this->interview_id,            
            'inquiresname' => $this->inquirename,
            'companiename' => $this->companiename,
            'inquire_id' =>$this->inquire_id,
            'inquires' => new InquireResource(Inquire::find($this->inquire_id)),
            'courses' => $this->coursename ,
            'sections' => $this->sectionname,

        ];
    }
}
