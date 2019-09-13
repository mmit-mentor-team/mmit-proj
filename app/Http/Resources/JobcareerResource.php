<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Position;
use App\Model\Company;
use App\User;

use App\Http\Resources\PositionResource;
use App\Http\Resources\CompanyResource;
use App\Http\Resources\UserResource;

class JobcareerResource extends JsonResource
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
            'id'=>$this->id,
            'gender' => $this->gender,
            'senddate' => $this->senddate,
            'remark' => $this->remark,
             'status' => $this->status,
            'company_id' => $this->company_id,
            'position_id' => $this->position_id,
            'company'=>new CompanyResource(Company::find($this->company_id)),
            'position' => new PositionResource(Position::find($this->position_id)),
            'user_id' => new UserResource(User::find($this->user_id))
        ];
    }
}
