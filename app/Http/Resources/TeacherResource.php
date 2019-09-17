<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Course;
use App\Model\Staff;
use App\Http\Resources\StaffResource;
use App\Http\Resources\CourseResource;

use App\User;
use App\Http\Resources\UserResource;

class TeacherResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // /*return parent::toArray($request);*/
        return[
            'id'            => $this->id,
            'staff_id'      =>  $this->staff_id,
            'course_id'     =>  $this->course_id,
            'user_id'       =>  $this->user_id,

            'user'         => new UserResource(User::find($this->user_id)),
            'staff'        => new StaffResource(Staff::find($this->staff_id)),
            'course'       => new CourseResource(Course::find($this->course_id)),

            /*'income_staffid' => $this->staff_id,
            'income_courseid' => $this->course_id,*/
        ];
    }
}
