<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\Model\Interview;
use App\Http\Resources\InterviewResource;
use App\Http\Resources\JobcareerResource;
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
    public function index(Request $request)
    {
        $jobcareerid = request('id');
        dd($jobcareerid);
       $inquires = Inquire::all();
       $students = Student::all();
       $jobcareers = Jobcareer::all();
       /*$interviews = Interview::all();*/
       $interviews = DB::table('interviews')
            ->join('jobcareers','jobcareers.id','=', 'interviews.jobcareer_id')
            ->join('students','students.id', '=', 'interviews.student_id')
            ->join('inquires','inquires.id', '=', 'students.inquire_id')
            ->join('companies','companies.id', '=', 'jobcareers.company_id')
            ->join('positions','positions.id', '=', 'Jobcareers.position_id')
            ->select('interviews.*','inquires.name as inquirename','companies.name as companyname','positions.name as positionname')
            ->get();
        //dd($interviews);

       $interviews = InterviewResource::collection($interviews);

       return response()->json([
            'interviews' => $interviews,
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
        $id = request('id');
        // dd($jobcareer);
        $jobcareer =  DB::table('jobcareers')
                ->where('jobcareers.id','=',$id)
                ->get();

        $jobcareers =  JobcareerResource::collection($jobcareer);

       return response()->json([
            'jobcareers' => $jobcareers,
       ],200);
    }

    public function store(Request $request)
    {
        //

        //dd($request);
        $this->validate($request, [
            'appointment'  => 'required',
                'remark'   => 'required',
                'status'   => 'required',
             'student_id'  => 'required',
            'jobcareer_id' => 'required'
        ]);

        $appointment = request('appointment');
             $remark = request('remark');
             $status = request('status');
        $student_id  = request('student_id');
       $jobcareer_id = request('jobcareer_id');
            $user_id = Auth::user()->id;

        $interview = Interview::create([
            'appointment' => $appointment,
                 'remark' => $remark,
                 'status' => $status,
             'student_id' => $student_id,
           'jobcareer_id' => $jobcareer_id,
                'user_id' => $user_id,
        ]);

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
        echo "string";
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
        //
        dd($request);
        $this->validate($request, [
            'appointment' => 'required',
                'remark'  => 'required|max:255',
                'status'  => 'required|max:225',
            'student_id'  => 'required',
           'jobcareer_id' => 'required',
        ]);

        $interview = Interview::find($id);

        $interview->appointment = request('appointment');
        $interview->remark = request('remark');
        $interview->status = request('status');
        $interview->student_id = request('student_id');
        $interview->jobcareer_id = request('jobcareer_id');
        $interview->user_id = Auth::user()->id;
        $interview->save();

        return response()->json([

            'message' => 'Interview updated Successfully'
        ],200);
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
