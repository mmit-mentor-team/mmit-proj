<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Duration;
use App\Model\Course;
use App\User;
use App\Http\Resources\DurationResource;
use Auth;
use Illuminate\Support\Facades\DB;

class DurationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $courses = Course::all();
        $durations =  DB::table('durations')
            ->join('courses', 'courses.id', '=', 'durations.course_id')
            ->join('users', 'users.id', '=', 'durations.user_id')
            ->select('durations.*', 'courses.name as coursename', 'users.name as username')
            ->orderby('durations.id','ASC')

            ->get();

        $durations =  DurationResource::collection($durations);

        return response()->json([
            'durations' => $durations,
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
            'time'  =>  'required',
            'days'  =>  'required',
            'during'  =>  'required',
            'course_id'  =>  'required',
        ]);

        $duration = Duration::create([
            'time'  =>  request('time'),
            'days'  =>  request('days'),
            'during'  =>  request('during'),

            'course_id'  =>  request('course_id'),
            'user_id'    =>  Auth::user()->id,
        ]);

        $duration = new DurationResource($duration);

        return response()->json([
            'duration'  =>  $duration,
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
        // dd($id);
        $durations = DB::table('durations')
            ->join('courses','courses.id','=', 'durations.course_id')
            ->join('users', 'users.id', '=', 'durations.user_id')
            ->where('courses.id',$id)
            ->select('durations.*', 'courses.name as coursename', 'users.name as username')
            ->orderby('durations.id','ASC')

            ->get();
            //dd($durations1);

            $durations =  DurationResource::collection($durations);

        return response()->json([
            'durations' => $durations,
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
        //
        $this->validate($request, [
            'time'  =>  'required',
            'days'  =>  'required',
            'during'  =>  'required',
            'course_id'  =>  'required',

        ]);
        $duration = Duration::find($id);

        $duration->time = request('time');
        $duration->days = request('days');
        $duration->during = request('during');

        
        $duration->course_id = request('course_id');

        $duration->user_id=  '1';
        $duration->save();

        return response()->json([
            'message'   =>  'Duration updated successfully!'
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
        $duration = Duration::find($id);
        $duration->delete();

        return response()->json([
            'message'   =>  'Duration deleted successfully!'
        ],200);
    }
}
