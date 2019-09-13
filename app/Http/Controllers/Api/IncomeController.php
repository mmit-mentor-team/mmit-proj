<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Income;
use App\Http\Resources\IncomeResource;
use Auth;
use App\User;
use App\Model\Location;
use Illuminate\Support\Facades\DB;


class IncomeController extends Controller
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
         $incomes = DB::table('incomes')
          ->join('locations', 'locations.id', '=', 'incomes.location_id')
          ->join('users','users.id','=','incomes.user_id')
          ->select('incomes.*','locations.name as locationname','users.name as username')
          ->get();
        $incomes =  IncomeResource::collection($incomes);

        return response()->json([
            'incomes' => $incomes,
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
         $this->validate($request, [
            'amount'  => 'required',
            'description'  => 'required',
            'date'  => 'required'
        ]);

        $income = Income::create([
            'amount'  =>  request('amount'),
            'description'  =>  request('description'),
            'date'  =>  request('date'),
            'location_id'  =>  request('location_id'),
            'user_id'    =>  Auth::user()->id
        ]);

        $income = new IncomeResource($income);

        return response()->json([
            'income'  =>  $income,
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
        //
        $this->validate($request, [
            'amount'  =>  'required|max:255',
            'description'  =>  'required|max:255',
            'date'  =>  'required',

        ]);
        $income = Income::find($id);

        $income->amount = request('amount');
        $income->description = request('description');
        $income->date = request('date');
        $income->location_id = request('location_id');
        $income->user_id = Auth::user()->id;
        $income->save();

        return response()->json([
            'message'   =>  'Income updated successfully!'
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
         $income = Income::find($id);
        $income->delete();

        return response()->json([
            'message'   =>  'Income deleted successfully!'
        ],200);
    }
}
