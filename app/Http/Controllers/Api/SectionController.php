<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Section;
use App\User;
use App\Http\Resources\SectionResource;
use Auth;
use Carbon\Carbon;
use App\Model\Duration;
use Illuminate\Support\Facades\DB;


class SectionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
       /* $sections = Section::all();*/
        $hr_ygn_sections =  DB::table('sections')
            ->select(

                    DB::raw('GROUP_CONCAT(section_teacher.section_id) AS section_id'),
                    DB::raw('GROUP_CONCAT(users.name) AS teachers'),
                    DB::raw('GROUP_CONCAT(section_teacher.teacher_id) AS teachers_id'),

                    'sections.*', 
                    'courses.name as coursename', 
                    'courses.id as courseid', 
                    'durations.time as time', 
                    'durations.days as day', 
                    'durations.during as during', 
                    'locations.name as location', 
                    'cities.name as city'
                )
            ->distinct()
            ->join('section_teacher', 'section_teacher.section_id', '=', 'sections.id')
            ->join('teachers', 'section_teacher.teacher_id', '=', 'teachers.id')
            ->join('staffs','teachers.staff_id', '=', 'staffs.id')
            ->join('users','staffs.user_id', '=', 'users.id')
            ->join('durations', 'durations.id', '=', 'sections.duration_id')
            ->join('courses','courses.id','=','durations.course_id')
            ->join('locations','locations.id','=','courses.location_id')
            ->join('cities','cities.id','=','locations.city_id')
            ->groupBy('section_teacher.section_id')
            ->where('durations.course_id','=',1)
            ->orderBy('sections.id', 'desc')
            ->get();
            // dd($sections);

        $hr_mdy_sections =  DB::table('sections')
            ->select(

                    DB::raw('GROUP_CONCAT(section_teacher.section_id) AS section_id'),
                    DB::raw('GROUP_CONCAT(users.name) AS teachers'),
                    DB::raw('GROUP_CONCAT(section_teacher.teacher_id) AS teachers_id'),

                    'sections.*', 
                    'courses.name as coursename', 
                    'courses.id as courseid', 
                    'durations.time as time', 
                    'durations.days as day', 
                    'durations.during as during', 
                    'locations.name as location', 
                    'cities.name as city'
                )
            ->distinct()
            ->join('section_teacher', 'section_teacher.section_id', '=', 'sections.id')
            ->join('teachers', 'section_teacher.teacher_id', '=', 'teachers.id')
            ->join('staffs','teachers.staff_id', '=', 'staffs.id')
            ->join('users','staffs.user_id', '=', 'users.id')
            ->join('durations', 'durations.id', '=', 'sections.duration_id')
            ->join('courses','courses.id','=','durations.course_id')
            ->join('locations','locations.id','=','courses.location_id')
            ->join('cities','cities.id','=','locations.city_id')
            ->groupBy('section_teacher.section_id')
            ->where('durations.course_id','=',2)
            ->orderBy('sections.id', 'desc')
            ->get();

        $php_sections =  DB::table('sections')
            ->select(

                    DB::raw('GROUP_CONCAT(section_teacher.section_id) AS section_id'),
                    DB::raw('GROUP_CONCAT(users.name) AS teachers'),
                    DB::raw('GROUP_CONCAT(section_teacher.teacher_id) AS teachers_id'),

                    'sections.*', 
                    'courses.name as coursename', 
                    'courses.id as courseid', 
                    'durations.time as time', 
                    'durations.days as day', 
                    'durations.during as during', 
                    'locations.name as location', 
                    'cities.name as city'
                )
            ->distinct()
            ->join('section_teacher', 'section_teacher.section_id', '=', 'sections.id')
            ->join('teachers', 'section_teacher.teacher_id', '=', 'teachers.id')
            ->join('staffs','teachers.staff_id', '=', 'staffs.id')
            ->join('users','staffs.user_id', '=', 'users.id')
            ->join('durations', 'durations.id', '=', 'sections.duration_id')
            ->join('courses','courses.id','=','durations.course_id')
            ->join('locations','locations.id','=','courses.location_id')
            ->join('cities','cities.id','=','locations.city_id')
            ->groupBy('section_teacher.section_id')
            ->where('durations.course_id','=',3)
            ->orderBy('sections.id', 'desc')
            ->get();

        // dd($php_sections);

        $ios_sections =  DB::table('sections')
            ->select(

                    DB::raw('GROUP_CONCAT(section_teacher.section_id) AS section_id'),
                    DB::raw('GROUP_CONCAT(users.name) AS teachers'),
                    DB::raw('GROUP_CONCAT(section_teacher.teacher_id) AS teachers_id'),

                    'sections.*', 
                    'courses.name as coursename', 
                    'courses.id as courseid', 
                    'durations.time as time', 
                    'durations.days as day', 
                    'durations.during as during', 
                    'locations.name as location', 
                    'cities.name as city'
                )
            ->distinct()
            ->join('section_teacher', 'section_teacher.section_id', '=', 'sections.id')
            ->join('teachers', 'section_teacher.teacher_id', '=', 'teachers.id')
            ->join('staffs','teachers.staff_id', '=', 'staffs.id')
            ->join('users','staffs.user_id', '=', 'users.id')
            ->join('durations', 'durations.id', '=', 'sections.duration_id')
            ->join('courses','courses.id','=','durations.course_id')
            ->join('locations','locations.id','=','courses.location_id')
            ->join('cities','cities.id','=','locations.city_id')
            ->groupBy('section_teacher.section_id')
            ->where('durations.course_id','=',4)
            ->orderBy('sections.id', 'desc')
            ->get();
           

        $hr_ygn_sections =  SectionResource::collection($hr_ygn_sections);
        $hr_mdy_sections =  SectionResource::collection($hr_mdy_sections);
        $php_sections =  SectionResource::collection($php_sections);
        $ios_sections =  SectionResource::collection($ios_sections);


        return response()->json([
            'sections' => $hr_ygn_sections,
            'hr_mdy'   => $hr_mdy_sections,
            'php_sections'  =>  $php_sections,
            'ios_sections'  =>  $ios_sections
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
            'title'  => 'required',
            'startdate'  => 'required',
            'closedays'  => 'required',
            'duration_id'  => 'required',
            'teachers'  => 'required',
        ]);

        $duration = Duration::find(request('duration_id'));

        $sd = Carbon::create(request('startdate'));
        $secd = Carbon::parse($sd->copy()->addDays($duration->during)); // 07112019

        // dd($secd);

        // Find weekends from secd
        $weekends = $sd->diffInDaysFiltered(function(Carbon $date) {
            return $date->isWeekend();
        }, $secd); // 8

        // dd($weekends);

        // replace days for weekends
        
        $enddate = Carbon::parse($secd->copy()->addDays($weekends)); // 15112019
        dd($enddate);
        
        // Find weekends from secd
        $weekends = $secd->diffInDaysFiltered(function(Carbon $date) {
            return $date->isWeekend();
        }, $enddate); // 2

        if ($weekends > 0) {
            $enddatelast = $enddate->copy()->addDays($weekends+request('closedays')); // 25112019
        }
        // dd($enddatelast);

        $weekends = $enddate->diffInDaysFiltered(function(Carbon $date) {
            return $date->isWeekend();
        }, $enddatelast); // 2

        if ($weekends > 0) {
            $enddatedata = $enddatelast->copy()->addDays($weekends); // 27112019
        }

        $startdate = request('startdate');

        $date = Carbon::create($startdate);
        $codeno = $date->isoFormat('Do MMM YYYY'); 

        $section = Section::create([
            'codeno'  =>  $codeno,
            'title'  =>  request('title'),
            'startdate'  =>  $startdate,
            'enddate'  =>  $enddatedata,
            'duration_id'  =>  request('duration_id'),
            'user_id'    =>  Auth::user()->id,
        ]);
        $section->teachers()->sync($request->teachers);
        
        $section = new SectionResource($section);

        return response()->json([
            'section'  =>  $section,
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
        $section =  DB::table('sections')
            ->select(

                    DB::raw('GROUP_CONCAT(section_teacher.section_id) AS section_id'),
                    DB::raw('GROUP_CONCAT(users.name) AS teachers'),
                    DB::raw('GROUP_CONCAT(section_teacher.teacher_id) AS teachers_id'),

                    'sections.*', 
                    'courses.name as coursename', 
                    'courses.id as courseid', 
                    'durations.time as time', 
                    'durations.days as day', 
                    'durations.during as during', 
                    'locations.name as location', 
                    'cities.name as city'
                )
            ->distinct()
            ->join('section_teacher', 'section_teacher.section_id', '=', 'sections.id')
            ->join('teachers', 'section_teacher.teacher_id', '=', 'teachers.id')
            ->join('staffs','teachers.staff_id', '=', 'staffs.id')
            ->join('users','staffs.user_id', '=', 'users.id')
            ->join('durations', 'durations.id', '=', 'sections.duration_id')
            ->join('courses','courses.id','=','durations.course_id')
            ->join('locations','locations.id','=','courses.location_id')
            ->join('cities','cities.id','=','locations.city_id')
            ->groupBy('section_teacher.section_id')
            ->where('sections.duration_id','=',$id)
            ->orderBy('sections.id', 'desc')
            ->get();
            // dd($section);

            $sections =  SectionResource::collection($section);

        return response()->json([
            'sections' => $sections,
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
            'title'  =>  'required',
            'startdate'  =>  'required',
            'enddate'  =>  'required',
            'duration_id'  =>  'required',
        ]);
        $section = Section::find($id);


        $startdate = request('startdate');

        $date = Carbon::create($startdate);
        $codeno = $date->isoFormat('Do MMM YYYY'); 

        $section->codeno = $codeno;
        $section->title = request('title');
        $section->startdate = request('startdate');
        $section->enddate = request('enddate');
        $section->duration_id = request('duration_id');
        $section->user_id=  Auth::user()->id;
        $section->save();

        $section->teachers()->detach($request->teachers);
        $section->teachers()->attach($request->teachers);

        return response()->json([
            'message'   =>  'Section updated successfully!'
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
    $section = Section::find($id);
        $section->delete();

        return response()->json([
            'message'   =>  'Section deleted successfully!'
        ],200);
    }
}
