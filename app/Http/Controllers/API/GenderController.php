<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\Gender;
use DB;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class GenderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Gender::latest()->paginate(env('PAGE_NO', '10'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'gender' => 'required | string | max:255',
		]);
		
        $data = array();

        $data['gender'] = $request->gender;
        
        $q = Input::get('slug');
		if($q != ""){
			$data['slug'] = $q;
		}
		else{
			$slug = SlugService::createSlug(Gender::class, 'slug', $request->gender);
            $data['slug'] = $slug;
		}
        
		
        $st = DB::table('genders')->insert($data);

        if ($st)
        {
            return ('Gender Added Successfully.');
        }
        else
        {
            return ('Error! Gender Not Added.');
        }
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

    public function idsShow()
    {
        return Gender::select('id', 'gender')->get();
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
        $request->validate([
            'gender' => 'required | string | max:255',
        ]);

        $data = Gender::where('id', '=', $id)->firstOrFail();

        $data->gender = $request->gender;
        
        $q = Input::get('slug');
		if($q != ""){
			$data->slug = $q;
		}
		else{
			$slug = SlugService::createSlug(Gender::class, 'slug', $request->gender);
            $data->slug = $slug;
		}
		
        $data->save();

        if ($data->save())
        {
            return ('Gender Updated Successfully.');
        }
        else
        {
            return ('Error! Gender Not Updated.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Gender = Gender::where('id', '=', $id)->firstOrFail();
        $Gender->delete();
        return ['message' => 'Gender Deleted.'];
    }



    public function search($query){
        if ($query) {
            $searchData = Gender::where('gender','LIKE', '%'.$query.'%')->select('slug', 'gender', 'id', 'status')
            ->orderBy('created_at', 'desc')
            ->paginate(env('PAGE_NO', '10'));
        }

        return $searchData;
    }
    
    public function updateStatus(Request $request, $id){
        $data = Gender::where('id', '=', $id)->firstOrFail();
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('Gender Updated Successfully.');
        }
        else
        {
            return ('Error! Gender Not Updated.');
        }
    }
    
    function import(Request $request)
    {
        $request->validate([
            'select_file'  => 'required'
        ]);
        $realdata = json_decode($request->select_file, true);

      foreach($realdata as $value)
      {
            $insert_data = array(
                'id' => $value['field1'],
                'gender' => $value['field2'],
                'slug' => str_replace(' ', '-', strtolower($value['field2']))
                );

        if(!empty($insert_data))
        {
            DB::table('genders')->insert($insert_data);
        }
      }
     return ('Excel Data Imported successfully.');
    }
}
