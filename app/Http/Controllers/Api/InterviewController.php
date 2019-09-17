<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\Model\Interview;
use App\Http\Resources\InterviewResource;
use App\Http\Resources\JobcareerResource;
use App\Http\Resources\interviews\StudentResource;
use App\Model\Student;
use App\Model\Jobcareer;
use App\Model\Inquire;
use Illuminate\Support\Facades\DB;

class InterviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $interviews = DB::table('interviews')
        ->join('students','students.id','=', 'interviews.student_id')
        ->join('inquires','inquires.id', '=', 'students.inquire_id')
        ->join('sections','sections.id', '=', 'inquires.section_id')
        ->join('durations','durations.id', '=', 'sections.duration_id')
        ->join('courses','courses.id', '=', 'durations.course_id')
        ->select('interviews.*','inquires.name as inquirename','courses.name as coursename','sections.title as sectionname')
        ->whereNotExists(function($q){
            $q->select(DB::raw(1))
            ->from('hires')
            ->whereRaw('hires.interview_id = interviews.id');
        })
        ->whereNotExists(function($q){
            $q->select(DB::raw(1))
            ->from('dismisses')
            ->whereRaw('dismisses.interview_id = interviews.id');
        })->get();


        $interviews = InterviewResource::collection($interviews);
        return response()->json([
            'interviews' => $interviews,
        ],200);  
    }

    public function getSections(Request $request)
    {
        $course_id = request('course_id');
        $sections = DB::table('sections')
            ->join('durations','durations.id','=','sections.duration_id')
            ->join('courses','courses.id','=','durations.course_id')
            ->select('sections.*')
            ->where('courses.id',$course_id)
            ->get();

        return response()->json([
            'sections' => $sections,
        ],200);

    }

    public function getStudentsForInterview(Request $request){

        $section = $request['section_id'];
        $jobcareer = $request['jobcareer_id'];
        $myList = [];

        $jobgender = Jobcareer::find($jobcareer);
        $gender = $jobgender->gender;

        if ($gender == 'both') {
            $students = Student::whereHas('inquire', function($q) use ($section){
                $q->where('section_id', $section);
            })->whereDoesntHave('interviews', function($query) use ($jobcareer){
                $query->where('jobcareer_id', $jobcareer);
            })
            ->get();
        } else {
            $students = Student::whereHas('inquire', function($q) use ($section, $gender){
                $q->where('section_id', $section)
                ->where('gender', $gender);
            })->whereDoesntHave('interviews', function($query) use ($jobcareer){
                $query->where('jobcareer_id', $jobcareer);
            })
            ->get();
        }

        $getstudents = StudentResource::collection($students);


        return response()->json([
            'interviewstudent' => $getstudents,
        ],200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function create(Request $request)
    {
        //
    }

    public function store(Request $request)
    {
        //
        $this->validate($request, [
            'appointment'  => 'required',
            'remark'   => 'required',
            'student_id'  => 'required',
            'jobcareer_id' => 'required'
        ]);

        $appointment = request('appointment');
        $remark = request('remark');
        $status = 1;
        $student_id  = request('student_id');
        $jobcareer_id = request('jobcareer_id');
        $user_id = Auth::user()->id;


        foreach($student_id as $l){
            $interview = Interview::create([
                'appointment' => $appointment,
                'remark' => $remark,
                'status' => $status,
                'student_id' => $l,
                'jobcareer_id' => $jobcareer_id,
                'user_id' => $user_id,
            ]);
        }

        $interview = new InterviewResource($interview);

        return response()->json([
            'interview' => $interview,
            'message'   => 'Successfully added!'
        ],200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $interviews = DB::table('interviews')
        ->join('students','students.id','=', 'interviews.student_id')
        ->join('jobcareers','jobcareers.id','=','interviews.jobcareer_id')
        ->join('inquires','inquires.id', '=', 'students.inquire_id')
        ->join('sections','sections.id', '=', 'inquires.section_id')
        ->join('durations','durations.id', '=', 'sections.duration_id')
        ->join('courses','courses.id', '=', 'durations.course_id')
        ->select('interviews.*','inquires.name as inquirename','courses.name as coursename','sections.title as sectionname')
        ->whereNotExists(function($q){
            $q->select(DB::raw(1))
            ->from('hires')
            ->whereRaw('hires.interview_id = interviews.id');
        })
        ->whereNotExists(function($q){
            $q->select(DB::raw(1))
            ->from('dismisses')
            ->whereRaw('dismisses.interview_id = interviews.id');
        })
        ->where('jobcareers.id',$id)
        ->get();
        $interviews = InterviewResource::collection($interviews);
        return response()->json([
            'interviews' => $interviews,
        ],200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $jobcareer = Jobcareer::find($id);
        $jobcareer->status = 0;
        $jobcareer->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //

        $interview = Interview::find($id);
        $interview->delete();

        return response()->json([
            'message'  => 'Interview delete Successfully!!'
        ],200);
    }
}
