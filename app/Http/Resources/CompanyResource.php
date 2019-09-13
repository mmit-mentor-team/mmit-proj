<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Township;
use Auth;

class CompanyResource extends JsonResource
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
            // catch at api=>databasename
            "id"=>$this->id,
            "logo"=>$this->logo,
            "name"=>$this->name,
            "hrname"=>$this->hrname,
            "phno"=>$this->phno,
            "email"=>$this->email,
            "address"=>$this->address,
            "remark"=>$this->remark,
            "fblink"=>$this->fblink,
            "township_id"=>$this->township_id,
            "township_name"=>$this->township_name,
            "user"=>$this->user_name,
            "township"=>new TownshipResource(Township::find($this->township_id)),
            "user_id"=>$this->user_id,
        ];
    }
}
