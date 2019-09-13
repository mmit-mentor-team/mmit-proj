<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use App\User;
use App\Model\Staff;
use App\Model\City;
use Illuminate\Support\Facades\DB;
use App\Model\Location;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Hash;
use errors;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        // $user=Auth::user()->id;
        // dd($user);
        $staffs=Staff::all();
        $locations=Location::all();
        $cities=City::all();
        $profile=DB::table('users')
                ->join('staffs','staffs.user_id','=','users.id')
                ->join('roles','roles.id','=','users.role_id')
                ->join('locations','locations.id','=','staffs.location_id')
                ->join('cities','cities.id','=','locations.city_id')
                ->select('users.*','roles.id as role_id','roles.name as role_name','roles.guard_name as role_guard_name','staffs.id as staff_id','staffs.dob as staff_dob','staffs.fathername as staff_fathername','staffs.nrc as staff_nrc','staffs.photo as staff_photo','staffs.user_id as staff_user_id','locations.id as location_id','locations.name as location_name','cities.name as city_name','cities.id as city_id')
                ->where('users.id','=',Auth::user()->id)
                ->get();

        // $user=$profile->staff_nrc;
        // dd($user);

        // $user_password=sha1($profile[0]->password);


        $profile=UserResource::collection($profile);
        return response()->json([
            'profile'=>$profile

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
        //
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

    public function password_edit(Request $request, $id)
    {
        $this->validate($request,[
            'password'=>'min:8|confirmed',
        ]);
        $newpassword=request('password');
        $cnfpassword=request('password_confirmation');

        if ($newpassword) {
            $password=Hash::make($newpassword);
       }

       else{
            $password=request('pass');
       }


       $profile_password=User::find($id);
       $profile_password->password=$password;
       $profile_password->save();

         return response()->json([
            "message" => "Successfully update"
        ],200);

    }


    public function update(Request $request, $id)
    {
        //
        $this->validate($request,[
            'email'=>'email',
        ]);
        
       
      
        if ($request->get('image')) {
            $image=$request->get('image');
            $image_name=time().'.'.explode('/', explode(':', substr($image, 0,strpos($image, ';')))[1])[1];
            \Image::make($request->get('image'))->save(public_path('mmit_image/staff/').$image_name);
        }
        else{
            $image_name=request('oldimage');
        }

        // $profile=User::find($id);
        // $profile->name=request('name');
        // $profile->email=request('email');
        // $profile->save();

        // $staffs=Staff::all();
        // $staffs_id=$staffs->user_id=Auth::user()->id;
        // dd($staffs_id);
        $user=DB::table('users')
             ->join('staffs','staffs.user_id','=','users.id')
             ->where('users.id','=',Auth::user()->id)
             ->where('staffs.user_id','=',Auth::user()->id)
             ->update(
                    ['users.email'=>request('email'),
                    'users.name'=>request('name'),
                    'staffs.dob'=>request('dob'),
                    'staffs.fathername'=>request('fathername'),
                    'staffs.nrc'=>request('nrc'),
                    'staffs.photo'=>$image_name,
                    'staffs.user_id'=>Auth::user()->id
                    ],

                    );

        // $staff=DB::table('staffs')
        //      ->where('staffs.user_id','=',Auth::user()->id)
        //      ->update(
        //             ['staffs.dob'=>request('dob'),
        //             'staffs.fathername'=>request('fathername'),
        //             'staffs.nrc'=>request('nrc'),
        //             'staffs.photo'=>$image_name,
        //             'staffs.user_id'=>Auth::user()->id]
        //      );
        //      dd($staff);
              
             
        // $staff=Staff::find($staffs_id);
        // $staff->user_id=Auth::user()->id;
        // $staff->dob=request('dob');
        // $staff->photo=$image_name;
        // $staff->fathername=request('fathername');
        // $staff->nrc=request('nrc');
        // $staff->location_id=request('location');
        // $staff->save();

        // $location=Location::find($id);
        // $location->city_id= request("city");
        // $location->save();

        return response()->json([
            "message" => "Successfully update"
        ],200);


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
