<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\Student;
use App\Model\Jobcareer;
use App\Model\Inquire;
use App\User;
use App\Http\Resources\StudentResource;
use App\Http\Resources\UserResource;
use App\Http\Resources\JobcareerResource;
use App\Http\Resources\InquireResource;

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
                 'student' => new StudentResource(Student::find($this->student_id)),
            'jobcareer' => new JobcareerResource(Jobcareer::find($this->jobcareer_id)),
            
                 'user' => new UserResource(User::find($this->user_id))

        ];
    }
}
