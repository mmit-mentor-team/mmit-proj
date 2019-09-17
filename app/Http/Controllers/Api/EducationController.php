<?php
namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Education;
use App\User;
use App\Http\Resources\EducationResource;
use Auth;
class EducationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        {
            $educations = Education::orderBy('id','DESC')->get();
            $educations =  EducationResource::collection($educations);
            // dd($educations);
            return response()->json([
                'educations' => $educations,
            ],200);
        }
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
          // $name = request('name');
          // dd($name);
        $educations = Education::create([
            'name'  =>  request('name'),
            'user_id'    =>  Auth::user()->id,
        ]);

        $educations = new EducationResource($educations);
        return response()->json([
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
        $education = Education::find($id);
       // dd($education);
        $education->name = request('name');
        $education->user_id=  Auth::user()->id;
        $education->save();
        return response()->json([
            'message'   =>  'Education updated successfully!'
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
          $education = Education::find($id);
        $education->delete();
        return response()->json([
            'education'  =>  $education,
            'message'   =>  'Staff deleted successfully!'
        ],200);
    }
}