<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
})->middleware('guest');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/print/{id}','HomeController@print')->name('print');


Route::get('/city', 'HomeController@city')->name('city');
Route::get('/township', 'HomeController@township')->name('township');

Route::get('/role', 'HomeController@role')->name('role');
Route::get('/permission', 'HomeController@permission')->name('permission');
Route::get('/dashboard', 'HomeController@dashboard')->name('dashboard');

//Hein
Route::get('/course', 'HomeController@course')->name('course');
Route::get('/location', 'HomeController@location')->name('location');
Route::get('/duration', 'HomeController@duration')->name('duration');

//Chan
Route::get('/teacher', 'HomeController@teacher')->name('teacher');
Route::get('/staff', 'HomeController@staff')->name('staff');

//AyeLwinSoe
Route::get('/expense', 'HomeController@expense')->name('expense');
Route::get('/income', 'HomeController@income')->name('income');
Route::post('/upload',function(Request $request){
	$uploadedfile = $request->pic;
	$uploadedfile->store('expenses');
	return response(['status'=>'success'],200);
});

// Kyaw Gyi
Route::get('/section', 'HomeController@section')->name('section');

// Nyi Ye Lin
Route::get('company','HomeController@company')->name('company');
Route::get('position','HomeController@position')->name('position');
Route::get('profile','HomeController@profile')->name('profile');


// Si Thu Aung
Route::get('/inquire', 'HomeController@inquire')->name('inquire');
Route::get('/education', 'HomeController@education')->name('education');

// Aye Chan Oo
Route::get('/student', 'HomeController@student')->name('student');

// Min Pike Mhu
Route::get('/jobcareer', 'HomeController@jobcareer')->name('jobcareer');

// Honey Htun
Route::get('/interview/{id}','HomeController@interview')->name('interview');
Route::get('/interviewform/{id}','HomeController@interviewform')->name('interviewform');
Route::get('/interviewformlist','HomeController@interviewformlist')->name('interviewformlist');

Route::get('/hire','HomeController@hire')->name('hire');
Route::get('/dismiss','HomeController@dismiss')->name('dismiss');

Route::get('/role','HomeController@role')->name('role');

//Report
Route::get('/export/{month}/{year}', 'ExportController@export');
Route::get('/report', 'HomeController@report')->name('report');
Route::get('/attendances/collection', 'AttendanceController@attendanceCollect')->name('attendances.collect');
Route::get('/attendances/reports', 'AttendanceController@attendanceReport')->name('attendances.reports');
Route::get('/attendances/export/{section_id}','AttendanceController@Export');