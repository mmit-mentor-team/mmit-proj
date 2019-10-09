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
        
        $courses = Course::all();
        $courses =  CourseResource::collection($courses);

        return response()->json([
            'courses' => $courses,
        ],200);
    }

    public function permissioncourse(Request $request)
    {
        $permissioncourse = Auth::user()->staff->courses;

        $courses =  CourseResource::collection($permissioncourse);

        return response()->json([
            'courses' => $courses,
        ],200);
        
        // dd($permissioncourse);
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

        $course_db_codeno=Course::orderBy('id','desc')
                ->first();

        if ($course_db_codeno == null) 
        {
            $codeno = '00001';
        }
        else
        {
            $last_codeno = $course_db_codeno['codeno'];
            $number = ++$last_codeno;
            $codeno = '0000'.$number;
        }    

        $course = Course::create([
            'codeno'        =>  request('codeno'),
            'name'          =>  request('name'),
            'fees'          =>  request('fees'),
            'location_id'   =>  request('location'),
            'user_id'       =>  Auth::user()->id,
        ]);

        $course = new CourseResource($course);

        return response()->json([
            'course'    =>  $course,
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

        $course->codeno = request('codeno');
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
