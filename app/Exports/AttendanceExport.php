<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use App\Model\Inquire;
use App\Model\Attendance;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class AttendanceExport implements FromView,ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    protected $section_id = '';
    public function __construct($section_id){
        $this->section_id = $section_id;
    }

    public function view(): View
    {
    	$students = Inquire::where('section_id', $this->section_id)->with('student.attendances')->get();
        $dates = Attendance::select('date')->distinct()->get();
        $total = count($dates);
        $attendancereports = [];
        $attendanceArray = [];
      	foreach ($students as $student) {
      		$attendanceArray[] = [
      			'name' => $student->name,
      			'attendances' => $student->attendances->toArray()
      		];
      	}

      	foreach ($attendanceArray as $key => $attendance) {
      		$absent_count = count(array_filter($attendance['attendances'], function($attendance){
      				return $attendance['status'] == 0;
      			}));

      		$attendancereports[$key] = [
      			'name' => $attendance['name'],
      			'total' => $total,
      			'absents' => $absent_count,
      			'percent' => ceil((($total - $absent_count)/$total)*100)
      		];

      	}

    	return view('attendances.attendance_export', [
            'attendancereports'=>$attendancereports

        ]);
    }

    public function registerEvents(): array
    {
        return [
            AfterSheet::class    => function(AfterSheet $event) {
                $cellRange = 'A1:Z1'; // All headers
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(14);
              
            },
        ];
    }
}
