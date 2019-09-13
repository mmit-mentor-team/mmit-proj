<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Staff;
use App\Http\Resources\StaffResource;
use App\Model\Location;
use App\Model\Role;
use Spatie\Permission\Models\Permission;
use Auth;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use DateTime;

class StaffController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $locations = Location::all();
        $staffs = DB::table('staffs')
            ->join('locations', 'locations.id', '=', 'staffs.location_id')
            ->join('users', 'users.id', '=', 'staffs.user_id')
            ->join('roles','roles.id', '=', 'users.role_id')
            /*->join('model_has_roles', 'model_has_roles.role_id','=', 'users.role_id')
            ->join('model_has_permissions', 'model_has_permissions.model_id','=','model_has_roles.model_id')
            ->join('permissions', 'permissions.id', '=', 'model_has_permissions.permission_id')*/
            ->select('staffs.*', 'locations.name as locationname', 'users.name as username', 'users.id as userid', 'users.email as useremail', 'users.role_id as userroleid', 'users.password as userpassword', 'roles.name as rolename', 'roles.id as roleid')
            ->where('staffs.status','=',0)
            ->get();
        $staffs =  StaffResource::collection($staffs);

        $leavestaffs = DB::table('staffs')
            ->join('locations', 'locations.id', '=', 'staffs.location_id')
            ->join('users', 'users.id', '=', 'staffs.user_id')
            ->join('roles','roles.id', '=', 'users.role_id')
            ->select('staffs.*', 'locations.name as locationname', 'users.name as username', 'users.id as userid', 'users.email as useremail', 'users.role_id as userroleid', 'users.password as userpassword', 'roles.name as rolename', 'roles.id as roleid')
            ->where('staffs.status','=',1)
            ->get();
        $leavestaffs =  StaffResource::collection($leavestaffs);

        $teacherstaffs = DB::table('staffs')
            ->join('locations', 'locations.id', '=', 'staffs.location_id')
            ->join('users', 'users.id', '=', 'staffs.user_id')
            ->join('roles','roles.id', '=', 'users.role_id')
            ->select('staffs.*', 'locations.name as locationname', 'users.name as username', 'users.id as userid', 'users.email as useremail', 'users.role_id as userroleid', 'users.password as userpassword', 'roles.name as rolename', 'roles.id as roleid')
            ->where('roles.name','=','Teacher')
            ->get();
        $teacherstaffs =  StaffResource::collection($teacherstaffs);


        return response()->json([
            'staffs' => $staffs,
            'leavestaffs' => $leavestaffs,
            'teacherstaffs' => $teacherstaffs
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
        //
      /*dd($request);*/
      $userid = $request->userid;

      /*dd($userid);*/
      if ($userid) {
        $permissions = DB::table('model_has_permissions')
            ->join('permissions', 'permissions.id', '=', 'model_has_permissions.permission_id')
            ->where('model_has_permissions.model_id', '=', $userid)
            ->select('permissions.id')
            ->get();
           /* dd($permissions);*/
           return response()->json([
            'permissions' => $permissions,
        ],200);
      }else{
      
      
        $this->validate($request, [

            'dob'  => 'required',
            'fname'  => 'required|max:100',
            'nrc'  => 'required',
            /*'image'  => 'required|mimes:jpeg,jpg,png,JPEG,JPG,PNG',*/
            'jdate'  => 'required',
            // 'ldate'  => 'required',
            // 'status'  => 'required|max:191',
            'location_id'  => 'required',
        ]);
      
        if($request->get('image'))
        {
          $image = $request->get('image');
          $name = time().'.' . explode('/', explode(':', substr($image, 0, strpos($image, ';')))[1])[1];
          \Image::make($request->get('image'))->save(public_path('mmit_image/staff/').$name);
        }

        $roleid = request('role_id');

        $roles = Role::find($roleid);
        $rolename = $roles->name;

        $user =  User::create([
            'name'  =>  request('name'),
            'email' =>  request('email'),
            'role_id' =>  $roleid,
            'password'  =>  Hash::make('123456789')
        ]);

        $user->assignRole($rolename);

        // Permissions
        $new_permissions = request('permissions_id');

        for ($i=0; $i < count($new_permissions); $i++) { 
          $permission = Permission::find($new_permissions[$i]);
          $permissionName = $permission->name;
          $user->givePermissionTo($permissionName);
        }

        $staff = Staff::create([
            'dob'  =>  request('dob'),
            'fathername'  =>  request('fname'),
            'nrc'  =>  request('nrc'),
            'phone' =>  request('phone'),
            'photo'  =>  $name,
            'joineddate'  =>  request('jdate'),
            'leavedate'  =>  date("Y-m-d"),
            'status'  =>  '0',
            'location_id'  =>  request('location_id'),
            'user_id'    =>  $user->id,
        ]);

        $staff = new StaffResource($staff);

        return response()->json([
            'staff'  =>  $staff,
            'message'   =>  'Successfully Staff Added!'
        ],200);
      }
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
        //
        $this->validate($request, [

            'dob'  => 'required',
            'fname'  => 'required|max:100',
            'nrc'  => 'required',
            /*'image'  => 'required',*/
            'jdate'  => 'required',
            'ldate'  => 'required',
            'location_id'  => 'required',
        ]);
        
        if($request->get('image'))
       {
          $image = $request->get('image');
          $name = time().'.' . explode('/', explode(':', substr($image, 0, strpos($image, ';')))[1])[1];
          \Image::make($request->get('image'))->save(public_path('mmit_image/staff/').$name);
        }else{
            $name = request('oldimage');
        }

        $old_roleid = request('old_roleid');
        $new_roleid = request('roleid');

        $userid = request('userid');
        $user = User::find($userid);

        $old_role = Role::find($old_roleid);
        $old_rolename = $old_role->name;

        $new_role = Role::find($new_roleid);
        $new_rolename = $new_role->name;

        if ($old_roleid == $new_roleid) 
        {}
        else
        {
          $user->assignRole($new_rolename);
          $user->removeRole($old_rolename);
          $user->syncRoles($new_rolename);

          $user->name = request('username');
          $user->email = request('useremail');
          $user->role_id = $new_roleid;
          $user->password = request('userpassword');
          $user->save();

        }



        $new_permissions = request('permissions_id');
        //dd($new_permissions);
        $old_permissions = DB::table('model_has_permissions')->where('model_id', '=', $userid)->get();

        foreach ($old_permissions as $permission) {
          $permission_id = $permission->permission_id;
          //dd($permission_id);
          $permission = Permission::find($permission_id);
          //dd($permission);
          $permissionName = $permission->name;
          //dd($permissionName);
          $user->revokePermissionTo($permissionName);
        }
        for ($i=0; $i < count($new_permissions); $i++) { 
          //$permissionArray[$i] == permission's id;
          $permission = Permission::find($new_permissions[$i]);
          /*dd($new_permissions[$i]);*/
          $permissionName = $permission->name;
          /*dd($permissionName);*/

          $user->givePermissionTo($permissionName);
        }
        
        $staff = Staff::find($id);

        $staff->dob = request('dob');        
        $staff->fathername = request('fname');
        $staff->nrc = request('nrc');        
        $staff->photo = $name;
        $staff->joineddate = request('jdate');        
        $staff->leavedate = request('ldate');
        $staff->status = '0';        
        $staff->location_id = request('location_id');
        $staff->user_id=  request('userid');
        $staff->save();

        return response()->json([
            'message'   =>  'Staff updated successfully!'
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
        $staff = Staff::find($id);

        $now = new DateTime();
        $today = date('Y-m-d');

        $staff->dob = $staff->dob;        
        $staff->fathername = $staff->fathername;
        $staff->nrc = $staff->nrc;        
        $staff->photo = $staff->photo;
        $staff->joineddate = $staff->joineddate;        
        $staff->leavedate = $today;
        $staff->status = 1;        
        $staff->location_id = $staff->location_id;
        $staff->user_id=  $staff->user_id;
        $staff->save();


        // $staff->delete();

        return response()->json([
            'message'   =>  'Staff has been left!'
        ],200);
    }
}