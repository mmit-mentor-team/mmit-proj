<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Teacher;
use App\User;
use App\Model\Course;
use App\Http\Resources\TeacherResource;
use Auth;
use Illuminate\Support\Facades\DB;
class TeacherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        /*SELECT users.name, courses.name from users
        inner join teachers on users.id = teachers.user_id
        inner join courses on courses.user_id = teachers.id*/
        $courses = Course::all();
        $teachers = DB::table('teachers')
            ->join('courses', 'courses.id', '=', 'teachers.course_id')
           ->join('staffs', 'staffs.id', '=', 'teachers.staff_id')
           ->join('users', 'users.id', '=', 'staffs.user_id')
           ->join('locations', 'locations.id', '=', 'courses.location_id')
           ->join('cities', 'cities.id', '=', 'locations.city_id')
            ->select('teachers.*', 'courses.name as coursename', 'users.name as username','cities.name as cityname')
            ->get();
        $teachers =  TeacherResource::collection($teachers);

        return response()->json([
            'teachers' => $teachers,
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
        /*$this->validate($request, [
            'name'  => 'required',
        ]);*/

        $teacher = Teacher::create([
            'staff_id'  =>  request('staff_id'),
            'course_id'  =>  request('course_id'),
            'user_id'    =>  Auth::user()->id,
        ]);

        $teacher = new TeacherResource($teacher);

        return response()->json([
            'teacher'  =>  $teacher,
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
        $teachers = DB::table('teachers')
            ->join('courses', 'courses.id', '=', 'teachers.course_id')
            ->join('staffs', 'staffs.id', '=', 'teachers.staff_id')
            ->join('users', 'users.id', '=', 'staffs.user_id')
            ->join('locations', 'locations.id', '=', 'courses.location_id')
            ->join('cities', 'cities.id', '=', 'locations.city_id')
            ->where('courses.id',$id)
            ->select('teachers.*', 'courses.name as coursename', 'users.name as username','cities.name as cityname')
            ->get();
            // dd($teachers);

            $teachers =  TeacherResource::collection($teachers);

            // dd($teachers);

        return response()->json([
            'teachers' => $teachers,
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
        /*$this->validate($request, [
            'name'  =>  'required|max:255',
        ]);*/
        $teacher = Teacher::find($id);

        $teacher->staff_id = request('staff_id');        
        $teacher->course_id = request('course_id');

        $teacher->user_id=  Auth::user()->id;
        $teacher->save();

        return response()->json([
            'message'   =>  'Teacher updated successfully!'
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
        $teacher = Teacher::find($id);
        $teacher->delete();

        return response()->json([
            'message'   =>  'Teacher deleted successfully!'
        ],200);
    }
    
}
