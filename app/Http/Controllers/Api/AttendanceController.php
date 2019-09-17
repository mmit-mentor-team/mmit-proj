<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\attendances\AttendanceResource;
use App\Http\Resources\attendances\MyStudentResource;
use App\Model\Attendance;
use App\Model\Inquire;
use App\Model\Section;
use App\Model\Student;
use Carbon\Carbon;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AttendanceController extends Controller
{
    public function __construct(){
        $this->middleware(['auth:api']);
    }
    //
    public function getStudents($section_id){
        
        $students = [];
        $studentList = Student::whereHas('inquire', function($q) use ($section_id){
            $q->where('section_id', $section_id);
        })->whereDoesntHave('attendances', function($query){
            $query->where('date', Carbon::today());
        })->paginate(2);
        
        return MyStudentResource::collection($studentList);
        
    }
    
    public function store(Request $request){
        DB::beginTransaction();
        try{
            foreach($request->data as $record){
                $attendance = new Attendance();
                $attendance->date = Carbon::now();
                $attendance->status = $record['status'];
                $attendance->remark = $record['remark'];
                $attendance->student_id = $record['student_id'];
                $attendance->user_id = Auth::user()->id;
                $attendance->save();
            }
            DB::commit();
            return response()->json(['message' => 'Attendances are stored successfully']);
            
        } catch(\Exception $e){
            
            DB::rollBack();
            return response()->json(['message' => 'Something is wrong. Please try again']);
        }
    }
    
    public function getAttendances($section_id){
        
        $attendances = DB::table('attendances')
        ->join('students', 'students.id', '=', 'attendances.student_id')
        ->join('inquires', 'inquires.id', '=', 'students.inquire_id')
        ->where('inquires.section_id', $section_id)
        ->select('attendances.*', 'inquires.name')
        ->get();
        
        //    $attendances = Section::with('inquires.student.attendances')->where('id', $section_id)->get();
        
        return response()->json($attendances);
    }
}

