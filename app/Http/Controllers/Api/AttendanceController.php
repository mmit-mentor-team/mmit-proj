<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Inquire;
use App\Model\Section;
use App\Model\Student;
use Illuminate\Support\Facades\DB;

class AttendanceController extends Controller
{
    //
    public function getStudents($section_id){

    //    $students = Inquire::with('section')->where('section_id', $section_id)->get();
    $students = [];
       $studentList = Student::whereHas('inquire', function($q) use ($section_id){
           $q->where('section_id', $section_id);
       })->get();

       foreach($studentList as $student){
           $students[] = [
                            'id' => $student->id,
                            'name' => $student->inquire->name
                        ];
       }
        return response()->json($students, 200);
    }
}
