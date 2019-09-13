<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\User;
use App\Model\Course;


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
            'id' => $this->id,
            'time' => $this->time,
            'days' => $this->days,
            'during' => $this->during,

            'courseid' => $this->course_id,
            'course' =>new CourseResource(Course::find($this->course_id)),
        ];
    }
}
