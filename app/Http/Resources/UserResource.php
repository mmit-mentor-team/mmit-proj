<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Location;
use App\Model\Staff;
use App\Model\City;
use App\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

use App\Http\Resources\RoleResource;
use Auth;
class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return[
            "id"            => $this->id,
            "name"          => $this->name,
            "email"         => $this->email,
            "password"      => $this->password,
            "role_id"       => $this->role_id,
            
            "roles"         =>  RoleResource::collection(User::find($this->id)->roles),
            "permissions"   =>   PermissionResource::collection(User::find($this->id)->permissions)
        ];


    }
}
