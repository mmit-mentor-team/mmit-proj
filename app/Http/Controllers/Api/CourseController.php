<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Course;
use App\Model\Location;
use App\User;
use App\Http\Resources\CourseResource;
use Auth;
use Illuminate\Support\Facades\DB;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        
        $locations = Location::all();
        $courses =  DB::table('courses')
            ->join('locations', 'locations.id', '=', 'courses.location_id')
            ->join('users', 'users.id', '=', 'courses.user_id')
            ->join('cities', 'cities.id', '=', 'locations.city_id')
            ->select('courses.*', 'locations.name as locationname', 'users.name as username','cities.name as cityname')
            ->get();

        $courses =  CourseResource::collection($courses);

        return response()->json([
            'courses' => $courses,
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
            'name'  => 'required',
        ]);

        $course = Course::create([
            'name'  =>  request('name'),
            'fees'  =>  request('fees'),
            'location_id'  =>  request('location'),
            'user_id'    =>  Auth::user()->id,
        ]);

        $course = new CourseResource($course);

        return response()->json([
            'course'  =>  $course,
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
        $this->validate($request, [
            'name'  =>  'required|max:255',
        ]);
        // dd(request('location'));
        $course = Course::find($id);

        $course->name = request('name');
        $course->fees = request('fees');
        
        $course->location_id = request('location');

        $course->user_id=  Auth::user()->id;
        $course->save();

        return response()->json([
            'message'   =>  'Course updated successfully!'
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
        $course = Course::find($id);
        $course->delete();

        return response()->json([
            'message'   =>  'Course deleted successfully!'
        ],200);
    }
}
