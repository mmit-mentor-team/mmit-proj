<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'setup', 'middleware' => 'auth:api'], function()
{
	Route::resource('/township', 'Api\TownshipController');
	Route::resource('/city', 'Api\CityController');
	Route::resource('/teacher', 'Api\TeacherController');
	Route::resource('/staff', 'Api\StaffController');
	Route::resource('/location', 'Api\LocationController');
	Route::resource('/course', 'Api\CourseController');
	Route::resource('/duration', 'Api\DurationController');
	Route::resource('/expense', 'Api\ExpenseController');
	Route::resource('/income', 'Api\IncomeController');
	Route::resource('/section', 'Api\SectionController');
	Route::resource('/role', 'Api\RoleController');
	Route::resource('/company', 'Api\CompanyController');
	Route::resource('/inquire','Api\InquireController');
	Route::resource('/role','Api\RoleController');
	Route::resource('/student', 'Api\StudentController');
	Route::resource('/jobcareer', 'Api\JobcareerController');
	Route::resource('/position', 'Api\PositionController');

	Route::resource('/interview', 'Api\InterviewController');
	Route::resource('/hire', 'Api\HireController');
	Route::resource('/dismiss', 'Api\DismissController');
	Route::get('/interviews/students', 'Api\InterviewController@getStudentsForInterview');
	Route::get('/interviews/sections', 'Api\InterviewController@getSections');
	
	Route::resource('/role', 'Api\RoleController');
	Route::resource('/permission', 'Api\PermissionController');
	Route::get('/print/{id}','Api\InquireController@print');

	Route::get('/getinquirebyId/{id}','Api\InquireController@getInquire');
	Route::get('/showstudent/{id}','Api\StudentController@showstudents');

	Route::patch('/updateamountstudent/{sample}', 'Api\StudentController@updateamount');

	Route::get('/lastinquire','Api\InquireController@lastinquire');

	Route::get('/inquire/teacherlist/{id}','Api\InquireController@teacherlist');

	Route::resource('/profile','Api\UserController');
	Route::resource('/password_edit','Api\ChangePasswordController');
	
	// By Thet Paing Htut
	Route::resource('/sectionTeacher', 'Api\SectionTeacherController');

});

// Student
Route::get('/studentall', 'Api\StudentController@index');

// Interview

// Hire


// Dismiss


// Attendance
Route::resource('/attendance', 'Api\AttendanceController');

//Location
Route::resource('/location', 'Api\LocationController');

