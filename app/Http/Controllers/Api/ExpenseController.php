<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Expense;
use App\Http\Resources\ExpenseResource;
use Auth;
use App\User;
use Illuminate\Support\Facades\DB;

class ExpenseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $expenses = Expense::all();
     
        $expenses =  ExpenseResource::collection($expenses);
        
        return response()->json([
            'expenses' => $expenses,
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
         // dd($request);
         $this->validate($request, [
             'type'  => 'required',
            'amount'  => 'required',
            'description'  => 'required',
           'date'  => 'required',
     ]);

        $data=[];
        if ($request->hasfile('attachments')) {
            foreach($request->file('attachments') as $image)
            {
                $name=$image->getClientOriginalName();
                $image->move(public_path().'/img/', $name);  
                $filename = '/img/'.$name; 
                array_push($data, $filename); 
            }
        }
        $photoString = implode(',', $data);

       /* print_r($photoString);
        die();*/

        $expense = Expense::create([
            'type'  =>  request('type'),
            'amount'  =>  request('amount'),
            'description'  =>  request('description'),
            'date'  =>  request('date'),
            'user_id'    =>  Auth::user()->id,
            'attachment' => $photoString
        ]);
         
         
        $expense = new ExpenseResource($expense);


        return response()->json([
            'expense'  =>  $expense,
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
         //dd($request);
        
        $this->validate($request, [
            'type'  =>  'required|max:255',
            'amount' =>  'required|max:255',
            'description'  =>  'required|max:255',
            'date'  =>  'required',
        ]);
        $expense = Expense::find($id);

        $expense->type = request('type');
        $expense->amount = request('amount');
        $expense->description = request('description');
        $expense->date = request('date');

        $data=[];
        if ($request->hasfile('attachments')) {
            foreach($request->file('attachments') as $image)
            {
                $name=$image->getClientOriginalName();
                $image->move(public_path().'/img/', $name);  
                $filename = '/img/'.$name; 
                array_push($data, $filename); 
                 $photoString = implode(',', $data);
            }

        }else{
            $photoString = request('oldimage');
        }
      
       //dd($photoString);
        $expense->attachment = $photoString;

         //dd($expense);

        $expense->save();

        return response()->json([
            'message'   =>  'Expense updated successfully!'
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
        $expense = Expense::find($id);
        $expense->delete();

        return response()->json([
            'message'   =>  'Expense deleted successfully!'
        ],200);
    }
}
