<?php

namespace App\Http\Controllers;

use App\Model\Section;
use App\Model\Teacher;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\AttendanceExport;

class AttendanceController extends Controller
{
    protected $sections;

    public function __construct(){
        $this->middleware('auth');
    }

    public function attendanceCollect(){

        $sections = $this->getSections();        
        return view('attendances.collect')->with(['sections' => $sections, 'today' => Carbon::now()]);
    }

    public function attendanceReport(){
        $sections = $this->getSections();
        return view('attendances.reports')->with(['sections' => $sections]);
    }

    private function getSections(){
        $teacher = Teacher::whereHas('staff', function($q){
            $q->where('user_id', Auth::user()->id);
        })->first();
        return $teacher->sections()->where('enddate', '>=', Carbon::now())->get();
    }

    public function Export($section_id){
        return Excel::download(new AttendanceExport($section_id), 'Attendance Report.xlsx');
    }
}
