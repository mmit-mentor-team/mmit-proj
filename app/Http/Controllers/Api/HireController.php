<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Hire;
use App\Model\Interview;
use Auth;
use App\Http\Resources\HireResource;
use Illuminate\Support\Facades\DB;

class HireController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $hires = DB::table('hires')
                ->join('interviews','interviews.id','=','hires.interview_id')
                ->join('students','students.id','=','interviews.student_id')
                ->join('jobcareers','jobcareers.id','=','interviews.jobcareer_id')
                ->join('companies','companies.id','=','jobcareers.company_id')
                ->join('inquires','inquires.id','=','students.inquire_id')
                ->join('sections','sections.id','=','inquires.section_id')
                ->join('durations','durations.id','=','sections.duration_id')
                ->join('courses','courses.id','=','durations.course_id')
                ->select('hires.*','inquires.name as inquirename','inquires.id as inquire_id','sections.title as sectionname','courses.name as coursename','companies.name as companiename')
                ->get();
             
        $hires = HireResource::collection($hires);

        return response()->json([
            'hires' => $hires,

        ],200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $this->validate($request, [
            'startdate'  => 'required',
                'salary'   => 'required',
                'remark'   => 'required',
             
        ]);

        $startdate = request('startdate');
             $salary = request('salary');
             $remark = request('remark');
        $interview_id  = request('interview_id');
         $user_id = Auth::user()->id;
       
        $hire = Hire::create([
            'startdate' => $startdate,
                 'salary' => $salary,
                 'remark' => $remark,
         'interview_id' => $interview_id,
           
                'user_id' => $user_id,
        ]);

        $hire = Interview::find($interview_id);
        $hire->status = 0;
        $hire->save();
    

        $hire = new HireResource($hire);

        return response()->json([
            'hires' => $hire,
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
        //
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
    }
}
