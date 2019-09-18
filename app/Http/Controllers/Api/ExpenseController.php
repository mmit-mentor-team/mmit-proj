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
        if(request('month') && request('year') ){
         $month = $request->month;
         $year = $request->year;

        switch ($month) {
            case 'Jan':
                $month='01';
                break;

            case 'Feb':
                $month='02';
                break;
            
            case 'Mar':
                $month='03';
                break;

            case 'April':
                $month='04';
                break;

            case 'May':
                $month='05';
                break;

            case 'June':
                $month='06';
                break;

            case 'July':
                $month='07';
                break;

            case 'Aug':
                $month='08';
                break;

            case 'Sep':
                $month='09';
                break;

            case 'Oct':
                $month='10';
                break;

            case 'Nov':
                $month='11';
                break;

            case 'Dec':
                $month='12';
                break;
            default:
                
                break;
        }
        //dd($month);
        $startdate = $year.'-'.$month.'-01';
        //dd($startdate);
        $enddate = $year.'-'.$month.'-31';
        //dd($enddate);
        $result = DB::table('expenses')
                    ->join('users','users.id','=','expenses.user_id')
                    ->select('expenses.*','users.name as uname')
                    ->whereBetween('date',[$startdate,$enddate])
                    ->get();
                    //dd($result);
        $iresult = DB::table('incomes')
                    ->join('users','users.id','=','incomes.user_id')
                    ->select('incomes.*','users.name as iuname')
                    ->whereBetween('date',[$startdate,$enddate])
                    ->get();
                    //dd($iresult);
                    /*dd($result);*/
         return response()->json([
            "result"=>$result,
            "iresult"=>$iresult
        ],200);
     }
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
