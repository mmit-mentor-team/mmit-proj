<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Township;
use App\Model\Company;
use App\User;
use Illuminate\Support\Facades\DB;
use Auth;
use App\Http\Resources\CompanyResource;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $townships =  Township::all();
        $company=DB::table('companies')
                ->join('townships','townships.id','=','companies.township_id')
                ->join('users','users.id','=','companies.user_id')
                ->select('companies.*','townships.name as township_name','users.name as user_name')
                ->get();
        $company=CompanyResource::collection($company);

        return response()->json([
            'company' => $company
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
            'name' => 'required',
            'hrname' => 'required',
            'address' => 'required',
            'logo' => 'required',
            'phno' => 'required',
            // 'remark' => 'required',
            'township_id' => 'required',
            // 'fblink' => 'required',
            'email'=>'email|unique:companies',
        ]);

        if ($request->get('logo')) {
            
            $logo=$request->get('logo');
            $image=time().'.'.explode('/', explode(':', substr($logo, 0,strpos($logo, ';')))[1])[1];
            \Image::make($request->get('logo'))->save(public_path('mmit_image/company/').$image);
        }



        // dd($image);

        $request_remark = request('remark');

        if ($request_remark == null) 
        {
            $remark = '';
        }
        else
        {
            $remark = $request_remark;
        }

        $company=Company::create([
            'logo' => $image,
            'name' => request('name'),
            'hrname' => request('hrname'),
            'phno' => request('phno'),
            'email' => request('email'),
            'address' => request('address'),
            'remark' => $remark,
            'township_id' => request('township_id'),
            'fblink' => request('fblink'),
            'user_id'=>Auth::user()->id,
           
        ]);

        $company = new CompanyResource($company);
        return response()->json([
            'company' => $company,
            'message'   =>  'Successfully Staff Added!'
            
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
            "name"=>'required',
            "hrname"=>'required',
            "email"=>'required'
        ]);

        if($request->get('logo'))
        {
            $logo=$request->get('logo');
            $image=time().'.'.explode('/', explode(':', substr($logo, 0,strpos($logo, ';')))[1])[1];
            \Image::make($request->get('logo'))->save(public_path('mmit_image/company/').$image);
        }
        else
        {
            $image=request('oldimage');
        }

        $request_remark = request('remark');

        if ($request_remark == null) 
        {
            $remark = '';
        }
        else
        {
            $remark = $request_remark;
        }


        $company=Company::find($id);
        $company->logo=$image;
        $company->name=request("name");
        $company->hrname=request("hrname");
        $company->phno=request("phno");
        $company->email=request("email");
        $company->address=request("address");
        $company->remark=$remark;
        $company->township_id=request("township_id");
        $company->fblink=request("fblink");
        $company->user_id=Auth::user()->id;

        $company->save();
        return response()->json([
            "message" =>  'Company updated successfully!'
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
        $company = Company::find($id);
        $company->delete();
        return response()->json([
            "message"=>"Successfully Deleted"
        ],200);
    }
}
