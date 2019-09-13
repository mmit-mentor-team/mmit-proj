<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\User;
use App\Model\Course;
use App\Model\Staff;
use App\Http\Resources\StaffResource;

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
            'id' => $this->id,
            'coursename' => $this->coursename,
            'username' => $this->username,
            'cityname'  =>  $this->cityname,
            'users' => new UserResource(User::find($this->user_id)),
            'staffs' => new StaffResource(Staff::find($this->staff_id)),
            'courses' => new CourseResource(Course::find($this->course_id)),
            'teacher_staffid' => $this->staff_id,
            'teacher_courseid' => $this->course_id,

            /*'income_staffid' => $this->staff_id,
            'income_courseid' => $this->course_id,*/
        ];
    }
}
