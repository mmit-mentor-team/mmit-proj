<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Permission;

use App\Http\Resources\PermissionResource;
use Illuminate\Support\Facades\DB;
use Auth;

class PermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $roles =  Role::all();
        $permissions = DB::table('permissions')
                 ->select('permissions.*')
                 // ->whereNotIn('id', [1])
                 ->get();

        $permissions =  PermissionResource::collection($permissions);

        return response()->json([
            'permissions' => $permissions,
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

        $permission = Permission::create([
            'name'  =>  request('name'),
            'guard_name' => 'web'
            // 'user_id'    =>  Auth::user()->id,
        ]);

        Auth::user()->givePermissionTo($permission->name);

        $permission = new PermissionResource($permission);

        return response()->json([
            'permission'  =>  $permission,
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
        $permission = Permission::find($id);

        $permission->name = request('name');
        $permission->guard_name=  'web';
        $permission->save();

        return response()->json([
            'message'   =>  'Permission updated successfully!'
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
        $permission = Permission::find($id);
        $permission->delete();

        return response()->json([
            'message'   =>  'Permission deleted successfully!'
        ],200);
    }
}
