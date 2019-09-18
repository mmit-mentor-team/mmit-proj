<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Jobcareer;
use App\Model\Position;
use App\Model\Company;
use App\Model\Interview;
use App\User;

use App\Http\Resources\JobcareerResource;
use Auth;

use Illuminate\Support\Facades\DB;

class JobcareerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Position = Position::all();
        $jobcareers =  Jobcareer::all();

        $jobcareers =  JobcareerResource::collection($jobcareers);

        return response()->json([
            'jobcareer' => $jobcareers,
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
       
        
        $this->validate($request, [
            'gender'  => 'required',
            'senddate'  => 'required',
            'remark'  => 'required',
            'company_id'  => 'required',
            'position_id'  => 'required',
        ]);

        $gender = request('gender');
        $senddate = request('senddate');
        $nos=request('nos');

        $remark = request('remark');
        $status=1;
        $company_id = request('company_id');
        $position_id = request('position_id');
        $userid = Auth::user()->id;

        $jobcareers = Jobcareer::create([
            'gender'       =>  $gender,
            'senddate'    =>  $senddate,
            'nos'=>$nos,
            'remark'    =>  $remark,
             'status'    =>  $status,
            'company_id'    =>  $company_id,
            'position_id'    =>  $position_id,
            'user_id'    =>  $userid,
             ]);

        $jobcareers = new JobcareerResource($jobcareers);

        return response()->json([
            'jobcareer'  =>  $jobcareers,
            'message'   =>  'Successfully Added!'
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
        //HoneyHtun
        $jobcareers = DB::table('jobcareers')
                ->join('companies','companies.id','=','jobcareers.company_id')
                ->join('positions','positions.id','=','jobcareers.position_id')
                ->select('jobcareers.*','companies.name as companiesname','positions.name as positionsname')
                ->where('jobcareers.id',$id)
                ->first();

        $jobcareers = new JobcareerResource($jobcareers);

        return response()->json([
            'jobcareers' => $jobcareers

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
        $this->validate($request, [
                'gender'  => 'required',
                'senddate'  => 'required',
                'remark'  => 'required|max:255',
                'company_id'  => 'required',
                'position_id'  => 'required',
            ]);
            $jobcareer = Jobcareer::find($id);

           

             $jobcareer->gender = request('gender');
               $jobcareer->senddate = request('senddate');
                 $jobcareer->remark = request('remark');
                  
                   $jobcareer->company_id = request('company_id');
           $jobcareer->position_id = request('position_id');
           $jobcareer->user_id = Auth::user()->id;
           $jobcareer->save();

            return response()->json([
                'message'   =>  'City updated successfully!'
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
        $jobcareer = Jobcareer::find($id);
        $jobcareer->delete();

        return response()->json([
            'message'   =>  'Jobcareer deleted successfully!'
        ],200);
    }
}
