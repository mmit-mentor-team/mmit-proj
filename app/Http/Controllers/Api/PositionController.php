<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Position;
use App\User;

use App\Http\Resources\PositionResource;
use Auth;

class PositionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */ 
    public function index()
    {
        //
        $positions=Position::all();
        $positions=PositionResource::collection($positions);
        return response()->json([
            'positions'=>$positions
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

        $this->validate($request,[
            'name'=> 'required',
        ]);

        $positions= Position::Create([
            'name' => request('name'),
            'user_id'=> Auth::user()->id,
        ]);
        return response()->json([
            'positions'=>$positions,
            'message'=>"New Position has been successfully added",
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
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $this->validate($request,[
            'name'=>'required|max:25',
        ]);

        $position=Position::find($id);
        $position->name=request('name');
        $position->user_id=Auth::user()->id;
        $position->save();
        return response()->json([
            'message'=>'successfully update',
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
        $position=Position::find($id);
        $position->delete();
        return response()->json([
            'message' => 'successfully deleted'
        ],200);
    }
}
