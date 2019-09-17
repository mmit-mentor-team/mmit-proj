<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

use App\Model\Teacher;
use App\Model\Staff;
use App\Model\Duration;
use App\Model\Section;

use App\Http\Resources\TeacherResource;
use App\Http\Resources\StaffResource;
use App\Http\Resources\DurationResource;

use App\User;
use App\Http\Resources\UserResource;

class SectionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
       /* return parent::toArray($request);*/

        $teachers_string = $this->teachers;
        $teachers_array = explode(',', $teachers_string);

        $teachersid_string = $this->teachers_id;
        $teachersid_array = explode(',', $teachersid_string);

        return [
            'id'            => $this->id,
            'codeno'        => $this->codeno,
            'title'         => $this->title,
            'startdate'     => $this->startdate,
            'enddate'       => $this->enddate,
            'duration_id'   => $this->duration_id,
            'user_id'       => $this->user_id,

            'duration'      => new DurationResource(Duration::find($this->duration_id)),
            'user'          => new UserResource(User::find($this->user_id)),
            "teachers"      =>  TeacherResource::collection(Section::find($this->id)->teachers),
        ];
    }
}
