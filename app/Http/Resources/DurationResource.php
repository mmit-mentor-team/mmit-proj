<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Course;

use App\User;
use App\Http\Resources\UserResource;

class DurationResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
            'id'        =>  $this->id,
            'time'      =>  $this->time,
            'days'      =>  $this->days,
            'during'    =>  $this->during,
            'course_id' =>  $this->course_id,
            'user_id'   =>  $this->user_id,
            'course'    =>  new CourseResource(Course::find($this->course_id)),
            'user'      =>  new UserResource(User::find($this->user_id)),
        ];
    }
}
