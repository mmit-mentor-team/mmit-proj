<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

use App\Model\Teacher;
use App\Model\Staff;
use App\Model\Duration;

use App\User;

use App\Http\Resources\TeacherResource;
use App\Http\Resources\UserResource;
use App\Http\Resources\StaffResource;
use App\Http\Resources\DurationResource;

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
            'id' => $this->id,
            'codeno' => $this->codeno,
            'title' => $this->title,
            'startdate' => $this->startdate,
            'enddate' => $this->enddate,
            'duration_id' => $this->duration_id,

            'durations' =>new DurationResource(Duration::find($this->duration_id)),
            'coursename' => $this->coursename,
            'courseid'  => $this->courseid,
            'teachers'  =>  $this->teachers,
            'teachers_id'   =>  $this->teachers_id,

            'time'      => $this->time,
            'days'      => $this->day,
            'during'    =>  $this->during,
            'location'  =>  $this->location,
            'city'      =>  $this->city


            // 'cityid'   => $this->cityid,
            //'username' => $this->username
        ];
    }
}
