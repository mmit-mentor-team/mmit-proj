<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\City;
use App\User;

use App\Http\Resources\CityResource;
use Auth;

class CityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cities = City::all();
        $cities =  CityResource::collection($cities);

        return response()->json([
            'cities' => $cities,
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
        $this->validate($request, [
            'name'  => 'required',
        ]);

        $city = City::create([
            'name'  =>  request('name'),
            'user_id'    =>  Auth::user()->id,
        ]);

        $city = new CityResource($city);

        return response()->json([
            'city'  =>  $city,
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
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name'  =>  'required|max:255',
        ]);
        $city = City::find($id);

        $city->name = request('name');
        $city->user_id=  Auth::user()->id;
        $city->save();

        return response()->json([
            'message'   =>  'City updated successfully!'
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
        $city = City::find($id);
        $city->delete();

        return response()->json([
            'message'   =>  'City deleted successfully!'
        ],200);
    }
}
