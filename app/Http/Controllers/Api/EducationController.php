<?php
<<<<<<< HEAD

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Model\Education;
use App\User;

use App\Http\Resources\EducationResource;
use Auth;


=======
namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Education;
use App\User;
use App\Http\Resources\EducationResource;
use Auth;
>>>>>>> origin/YTMN-mmit-proj
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
<<<<<<< HEAD
            $educations = Education::all();
            $educations =  EducationResource::collection($educations);
            // dd($educations);

=======
            $educations = Education::orderBy('id','DESC')->get();
            $educations =  EducationResource::collection($educations);
            // dd($educations);
>>>>>>> origin/YTMN-mmit-proj
            return response()->json([
                'educations' => $educations,
            ],200);
        }
    }
<<<<<<< HEAD

=======
>>>>>>> origin/YTMN-mmit-proj
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
         
    }
<<<<<<< HEAD

=======
>>>>>>> origin/YTMN-mmit-proj
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
<<<<<<< HEAD

        $this->validate($request, [
            'name'  => 'required',
        ]);


          // $name = request('name');
          // dd($name);

=======
        $this->validate($request, [
            'name'  => 'required',
        ]);
          // $name = request('name');
          // dd($name);
>>>>>>> origin/YTMN-mmit-proj
        $educations = Education::create([
            'name'  =>  request('name'),
            'user_id'    =>  Auth::user()->id,
        ]);

        $educations = new EducationResource($educations);
<<<<<<< HEAD

        return response()->json([
            
            'message'   =>  'Successfully Added!'
        ],200);
    }

=======
        return response()->json([
            'message'   =>  'Successfully Added!'
        ],200);
    }
>>>>>>> origin/YTMN-mmit-proj
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
<<<<<<< HEAD

=======
>>>>>>> origin/YTMN-mmit-proj
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
<<<<<<< HEAD

=======
>>>>>>> origin/YTMN-mmit-proj
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
<<<<<<< HEAD

        $education->name = request('name');
        $education->user_id=  Auth::user()->id;
        $education->save();

=======
        $education->name = request('name');
        $education->user_id=  Auth::user()->id;
        $education->save();
>>>>>>> origin/YTMN-mmit-proj
        return response()->json([
            'message'   =>  'Education updated successfully!'
        ],200);
    }
<<<<<<< HEAD

=======
>>>>>>> origin/YTMN-mmit-proj
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
<<<<<<< HEAD

          $education = Education::find($id);
        $education->delete();

=======
          $education = Education::find($id);
        $education->delete();
>>>>>>> origin/YTMN-mmit-proj
        return response()->json([
            'education'  =>  $education,
            'message'   =>  'Staff deleted successfully!'
        ],200);
    }
<<<<<<< HEAD
}
=======
}
>>>>>>> origin/YTMN-mmit-proj
