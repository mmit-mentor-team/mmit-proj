<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Inquire;
use PDF;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function print($id)
    {
        $inquire = Inquire::find($id)->toArray();

        // dd($inquire);
        $data=[
            "testing" => "hello world"
        ];

        $css_file_one = asset('vendor/fontawesome-free/css/all.min.css');
        $css_file_two = asset('css/sb-admin-2.min.css');

        $js_file_one = asset('vendor/jquery/jquery.min.js');
        $js_file_two = asset('vendor/bootstrap/js/bootstrap.bundle.min.js');
        $js_file_three = asset('vendor/jquery-easing/jquery.easing.min.js');
        $js_file_four = asset('js/sb-admin-2.min.js');

        // dd($css_file_two);

        $design = '<!DOCTYPE html>
        <html>
        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>Page Title</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        </head>
        <body>
        
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
        
                        <div class="card shadow mb-4">
        
                            <div class="card-header py-3">
        
                            <h3 class="m-0 font-weight-bold text-danger">
        
                                '.$inquire["name"].'
        
                            </h3>
        
        
        
                            </div>
        
                        </div>
        
                    </div>
                </div>
            </div>
            
        </body>
        </html>
        ';


        // $pdf = PDF::loadHTML($design, $data);

        // return $pdf->download('file.pdf');



        // return view('print',compact('inquire'));

    }

    public function city()
    {
        return view('city');
    }

    public function township()
    {
        return view('township');
    }

    public function role()
    {
        return view('role');
    }

    public function permission()
    {
        return view('permission');
    }

    public function dashboard()
    {
        return view('dashboard');
    }

    public function report()
    {
        return view('report');
    }

    public function course()
    {
        return view('course');
    }

    public function location()
    {
        return view('location');
    }
    public function duration()
    {
        return view('duration');
    }

    public function teacher()
    {
        return view('teacher');
    }
    public function staff()
    {
        return view('staff');
    }

    public function expense()
    {
        return view('expense');
    }

    public function income()
    {
        return view('income');
    }

    public function section()
    {
        return view('section');
    }

    public function company()
    {
        return view('company');
    }

    public function inquire()
    {
        return view('inquire');
    }

    public function student()
    {
        return view('student');
    }

    public function jobcareer()
    {
        return view('jobcareer');
    }

    public function interview()
    {
        return view('interview');
    }

    public function interviewform($id)
    {
        $jobcarrer_id = $id;
        return view('interview',compact('jobcarrer_id'));
    }

    public function position()
    {
        return view('position');
    }

    public function profile(Request $require)
    {
        return view('profile');
    }

}
