<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Dismiss;
use App\Http\Resources\DismissResource;
use App\Model\Interview;
use Auth;
use Illuminate\Support\Facades\DB;

class DismissController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $dismisses = DB::table('dismisses')
                ->join('interviews','interviews.id','=','dismisses.interview_id')
                ->join('students','students.id','=','interviews.student_id')
                ->join('jobcareers','jobcareers.id','=','interviews.jobcareer_id')
                ->join('companies','companies.id','jobcareers.company_id')
                ->join('inquires','inquires.id','=','students.inquire_id')
                ->join('sections','sections.id','=','inquires.section_id')
                ->join('durations','durations.id','=','sections.duration_id')
                ->join('courses','courses.id','=','durations.course_id')
                ->select('dismisses.*','inquires.name as inquirename','inquires.id as inquire_id','sections.title as sectionname','courses.name as coursename','companies.name as companiename')
                ->get();
               /* dd($dismisses);*/


        $dismisses = DismissResource::collection($dismisses);
        return response()->json([
            'dismisses' => $dismisses,
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

         $this->validate($request,[
            'remark' => 'required'
        ]);

        $remark = request('remark');
        $interview_id = request('interview_id');
        $user_id = Auth::user()->id;
        /*dd($remark,$interview_id,$user_id);*/
        $dismiss = Dismiss::create([
            'remark' => $remark,
            'interview_id' => $interview_id,
            'user_id' => $user_id
        ]);

        $interviews = Interview::find($interview_id);
        $interviews->status = 0;
        $interviews->save();


        $dismiss = new DismissResource($dismiss);

        return response()->json([
            'dismisses' => $dismiss,
            'message' => 'Successfully added'


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
