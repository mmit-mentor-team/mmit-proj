<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class AttendanceController extends Controller
{
    //
    public function getStudents($section_id){
        $students = DB::table('students')
                    ->join('inquires', 'inquires.id', '=', 'students.inquire_id')
                    ->where('inquires.section_id', '=', $section_id)
                    ->select('inquires.name', 'students.id')
                    ->get();
        return response()->json($students, 200);
    }
}
