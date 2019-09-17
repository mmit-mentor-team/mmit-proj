<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Student;
use App\Model\Jobcareer;
use App\Model\Inquire;
use App\Http\Resources\StudentResource;
use App\Http\Resources\JobcareerResource;
use App\Http\Resources\InquireResource;

use App\User;
use App\Http\Resources\UserResource;

class InterviewResource extends JsonResource
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
            'appointment' => $this->appointment,
            'remark' => $this->remark,
            'status' => $this->status,
            'student_id' => $this->student_id,
            'jobcareer_id' => $this->jobcareer_id,
            'inquires' => $this->inquirename,
            'courses' => $this->coursename,
            'sections' => $this->sectionname
        ];
    }
}
