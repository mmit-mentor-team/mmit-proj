<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\StudentResource;
use App\Model\Student;
use Auth;
use DB;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        //for ygn hr
        $studentHrYgn =  DB::table('students')
            ->select(
                'students.*', 
                'inquires.name as inquire_name',
                'courses.fees as coursefees',
                'inquires.name as i_name',
                'inquires.receiveno as i_receiveno', 
                'inquires.gender as i_gender', 
                'inquires.dob as i_dob', 
                'inquires.age as i_age', 
                'inquires.address as i_address', 
                'inquires.phno as i_phno', 
                'inquires.email as i_email', 
                'inquires.installmentdate as i_installmentdate', 
                'inquires.installmentamount as i_installmentamount', 
                'inquires.camp as i_camp', 
                'inquires.education as i_education', 
                'inquires.acceptedyear as i_acceptedyear',
                'sections.codeno as s_codeno', 
                'sections.title as s_title', 
                'sections.startdate as s_startdate', 
                'sections.enddate as s_enddate', 
                'durations.time as d_time', 
                'durations.days as d_days', 
                'durations.during as d_during', 
                'courses.name as c_name', 
                'cities.name as city_name',
            )
            ->join('inquires', 'inquires.id', '=', 'students.inquire_id')
            ->join('sections', 'sections.id', '=', 'inquires.section_id')
            ->join('durations', 'durations.id', '=', 'sections.duration_id')
            ->join('courses','courses.id','=','durations.course_id')
            ->join('locations','locations.id','=','courses.location_id')
            ->join('cities','cities.id','=','locations.city_id')
            ->where('durations.course_id','=',1)
            ->orderBy('sections.id', 'desc')
            ->get();

            //for hr mdy
            $studentHrMdy =  DB::table('students')
            ->select(
                'students.*', 
                'inquires.name as inquire_name',
                'courses.fees as coursefees',
                'inquires.name as i_name',
                'inquires.receiveno as i_receiveno', 
                'inquires.gender as i_gender', 
                'inquires.dob as i_dob', 
                'inquires.age as i_age', 
                'inquires.address as i_address', 
                'inquires.phno as i_phno', 
                'inquires.email as i_email', 
                'inquires.installmentdate as i_installmentdate', 
                'inquires.installmentamount as i_installmentamount', 
                'inquires.camp as i_camp', 
                'inquires.education as i_education', 
                'inquires.acceptedyear as i_acceptedyear',
                'sections.codeno as s_codeno', 
                'sections.title as s_title', 
                'sections.startdate as s_startdate', 
                'sections.enddate as s_enddate', 
                'durations.time as d_time', 
                'durations.days as d_days', 
                'durations.during as d_during', 
                'courses.name as c_name', 
                'cities.name as city_name',
            )
            ->join('inquires', 'inquires.id', '=', 'students.inquire_id')
            ->join('sections', 'sections.id', '=', 'inquires.section_id')
            ->join('durations', 'durations.id', '=', 'sections.duration_id')
            ->join('courses','courses.id','=','durations.course_id')
            ->join('locations','locations.id','=','courses.location_id')
            ->join('cities','cities.id','=','locations.city_id')
            ->where('durations.course_id','=',2)
            ->orderBy('sections.id', 'desc')
            ->get();
            
        //for php course
        $studentphp =  DB::table('students')
            ->select(
                'students.*', 
                'inquires.name as inquire_name',
                'courses.fees as coursefees',
                'inquires.name as i_name',
                'inquires.receiveno as i_receiveno', 
                'inquires.gender as i_gender', 
                'inquires.dob as i_dob', 
                'inquires.age as i_age', 
                'inquires.address as i_address', 
                'inquires.phno as i_phno', 
                'inquires.email as i_email', 
                'inquires.installmentdate as i_installmentdate', 
                'inquires.installmentamount as i_installmentamount', 
                'inquires.camp as i_camp', 
                'inquires.education as i_education', 
                'inquires.acceptedyear as i_acceptedyear',
                'sections.codeno as s_codeno', 
                'sections.title as s_title', 
                'sections.startdate as s_startdate', 
                'sections.enddate as s_enddate', 
                'durations.time as d_time', 
                'durations.days as d_days', 
                'durations.during as d_during', 
                'courses.name as c_name', 
                'cities.name as city_name',
            )
            ->join('inquires', 'inquires.id', '=', 'students.inquire_id')
            ->join('sections', 'sections.id', '=', 'inquires.section_id')
            ->join('durations', 'durations.id', '=', 'sections.duration_id')
            ->join('courses','courses.id','=','durations.course_id')
            ->join('locations','locations.id','=','courses.location_id')
            ->join('cities','cities.id','=','locations.city_id')
            ->where('durations.course_id','=',3)
            ->orderBy('sections.id', 'desc')
            ->get();

            //for ios course
            $studentIos =  DB::table('students')
            ->select(
                'students.*', 
                'inquires.name as inquire_name',
                'courses.fees as coursefees',
                'inquires.name as i_name',
                'inquires.receiveno as i_receiveno', 
                'inquires.gender as i_gender', 
                'inquires.dob as i_dob', 
                'inquires.age as i_age', 
                'inquires.address as i_address', 
                'inquires.phno as i_phno', 
                'inquires.email as i_email', 
                'inquires.installmentdate as i_installmentdate', 
                'inquires.installmentamount as i_installmentamount', 
                'inquires.camp as i_camp', 
                'inquires.education as i_education', 
                'inquires.acceptedyear as i_acceptedyear',
                'sections.codeno as s_codeno', 
                'sections.title as s_title', 
                'sections.startdate as s_startdate', 
                'sections.enddate as s_enddate', 
                'durations.time as d_time', 
                'durations.days as d_days', 
                'durations.during as d_during', 
                'courses.name as c_name', 
                'cities.name as city_name',
            )
            ->join('inquires', 'inquires.id', '=', 'students.inquire_id')
            ->join('sections', 'sections.id', '=', 'inquires.section_id')
            ->join('durations', 'durations.id', '=', 'sections.duration_id')
            ->join('courses','courses.id','=','durations.course_id')
            ->join('locations','locations.id','=','courses.location_id')
            ->join('cities','cities.id','=','locations.city_id')
            ->where('durations.course_id','=',4)
            ->orderBy('sections.id', 'desc')
            ->get();

        // $students=Student::all();

        $studentHRYGN=StudentResource::collection($studentHrYgn);
        $studentHRMDY=StudentResource::collection($studentHrMdy);
        $studentPHP=StudentResource::collection($studentphp);
        $studentIOS=StudentResource::collection($studentIos);
        return response()->json([
            'ygn_students' => $studentHRYGN,
            'mdy_students'   => $studentHRMDY,
            'php_students'  =>  $studentPHP,
            'ios_students'  =>  $studentIOS
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
        $name='';$remark="no thing";
        
        //dd($status);
        $inquireId=request('enquire');
        $student=DB::table('students')
        ->where('inquire_id','=',$inquireId)
        ->get();
        if(count($student)>0){
            return response()->json([
            "failed"=>"already exist"],200);
        }

            


        $this->validate($request, [

            'installmentdate'  => 'required',
            'installmentamount'  => 'required',
            // 'resume'  => 'mimes:doc,docx,pdf',
            
            // 'enquire'  => 'required',
        ]);

        

        if(request('remark')){
            $remark=request('remark');
        }
        if($request->hasFile('resume')){
                $file=request('resume');
        $filename=$file->getClientOriginalName();
        $file->move(public_path().'/resume/',time().$filename);
            $name=time().$filename;
        }else{
            $name="no resume";
        }
        
        //echo (request('installmentdate'));
        Student::create([
            'secinstallmentdate'=>request('installmentdate'),
            'secinstallmentamount'=>request('installmentamount'),
            'remark'=>$remark,
            'resume'=>$name,
            'status'=>request('status'), 
            'inquire_id'=>request('enquire'),
            'user_id'=>Auth::user()->id
        ]);

        

        return response()->json([
            "succsssful"=>"succesfully added"],200);
            
        
            

        

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
         



        //dd($request);
       $dbfilename='no data';$error='';

       if($request->hasFile('resume')){
        $file=request('resume');
        if($file->getClientOriginalExtension()=='docx'|| $file->getClientOriginalExtension()=='doc'||$file->getClientOriginalExtension()=='pdf'){
           $filename=$file->getClientOriginalName();
            $file->move(public_path().'/resume/',time().$filename);
            $dbfilename=time().$filename; 
        }else{

            $error="new file resume isn't accepted";
            $dbfilename=request('oldresume');
        }  
        
       }
       else{
        $dbfilename=request('oldresume');
       }
       $student=Student::find($id);
       $student->secinstallmentdate=request('installmentdate');
       $student->secinstallmentamount=request('installmentamount');
       $student->remark=request('remark');
       $student->resume=$dbfilename;
       $student->status=request('status');
       $student->inquire_id=request('enquire');

       $student->save();
       if(!empty($error)){
        return response()->json(["errors"=>$error]);
        }else{
        return response()->json(["successful"=>'successfully updated']);  
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $student=Student::find($id);
        $student->delete();
        return response()->json([
            "message"=>"successfully deleted"
        ],200);
    }

    public function showstudents($id){
        // dd($id);
        $students =  DB::table('students')
            ->select(
                'students.*', 
                'inquires.name as inquire_name',
                'courses.fees as coursefees',
                'inquires.name as i_name',
                'inquires.receiveno as i_receiveno', 
                'inquires.gender as i_gender', 
                'inquires.dob as i_dob', 
                'inquires.age as i_age', 
                'inquires.address as i_address', 
                'inquires.phno as i_phno', 
                'inquires.email as i_email', 
                'inquires.installmentdate as i_installmentdate', 
                'inquires.installmentamount as i_installmentamount', 
                'inquires.camp as i_camp', 
                'inquires.education as i_education', 
                'inquires.acceptedyear as i_acceptedyear',
                'sections.codeno as s_codeno', 
                'sections.title as s_title', 
                'sections.startdate as s_startdate', 
                'sections.enddate as s_enddate', 
                'durations.time as d_time', 
                'durations.days as d_days', 
                'durations.during as d_during', 
                'courses.name as c_name', 
                'cities.name as city_name',
            )
            ->join('inquires', 'inquires.id', '=', 'students.inquire_id')
            ->join('sections', 'sections.id', '=', 'inquires.section_id')
            ->join('durations', 'durations.id', '=', 'sections.duration_id')
            ->join('courses','courses.id','=','durations.course_id')
            ->join('locations','locations.id','=','courses.location_id')
            ->join('cities','cities.id','=','locations.city_id')
            ->where('sections.id','=',$id)
            ->orderBy('sections.id', 'desc')
            ->get();

        // dd($students);
        $student=StudentResource::collection($students);
        return response()
        ->json(["students"=>$student],200);
    }

    public function updateamount(Request $request,$id){
        //dd($id);
        //dd($request);
        $student=Student::find($id);
        
        $student->secinstallmentdate=request('installmentdate');
        $student->secinstallmentamount=request('installmentamount');
        $student->save();
       return response()->json([
            "message"=>"full amount is successfully installed"
        ],200);
    }
}

