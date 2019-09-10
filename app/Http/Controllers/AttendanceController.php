<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AttendanceController extends Controller
{
    public function attendanceCollect(){
        $today = Carbon::now();
        $sections = DB::table('sections')
                    ->join('section_teacher', 'sections.id', '=', 'section_teacher.section_id')
                    ->where('sections.enddate', '>=', $today)
                    ->join('teachers', 'teachers.id', '=', 'section_teacher.teacher_id')
                    ->join('staffs', 'staffs.id', '=', 'teachers.staff_id')
                    ->join('users', 'users.id', '=', 'staffs.user_id')
                    ->where('users.id', '=', Auth::user()->id)
                    ->join('durations', 'durations.id', '=', 'sections.duration_id')
                    ->join('courses', 'courses.id', '=', 'durations.course_id')
                    ->join('locations', 'locations.id', '=', 'courses.location_id')
                    ->join('cities', 'cities.id', '=', 'locations.city_id')
                    ->select('sections.id','sections.title')
                    ->get();

        return view('attendances.collect', compact('today', 'sections'));
    }

    public function attendanceReport(){
        return true;
    }
}
