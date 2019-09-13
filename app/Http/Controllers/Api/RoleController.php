<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Role;

use App\Http\Resources\RoleResource;
use Illuminate\Support\Facades\DB;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $roles =  Role::all();
        $roles = DB::table('roles')
                 ->select('roles.*')
                 ->whereNotIn('id', [1])
                 ->get();

        $roles =  RoleResource::collection($roles);

        return response()->json([
            'roles' => $roles,
        ],200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        $this->validate($request, [
            'name'  => 'required',
        ]);

        $role = Role::create([
            'name'  =>  request('name'),
            'guard_name' => 'web'
            // 'user_id'    =>  Auth::user()->id,
        ]);

        $role = new RoleResource($role);

        return response()->json([
            'role'  =>  $role,
            'message'   =>  'Successfully Added!'
        ],200);
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
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
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
            'name'  =>  'required|max:255',
        ]);
        $role = Role::find($id);

        $role->name = request('name');
        $role->guard_name=  'web';
        $role->save();

        return response()->json([
            'message'   =>  'Role updated successfully!'
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
        $role = Role::find($id);
        $role->delete();

        return response()->json([
            'message'   =>  'Role deleted successfully!'
        ],200);
    }
}
