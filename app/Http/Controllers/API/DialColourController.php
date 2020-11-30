<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\DialColour;
use DB;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class DialColourController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return DialColour::latest()->paginate(env('PAGE_NO', '10'));
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
            'name' => 'required | string | max:255',
		]);
		
        $data = array();

        $data['name'] = $request->name;
        
        $q = Input::get('slug');
		if($q != ""){
			$data['slug'] = $q;
		}
		else{
			$slug = SlugService::createSlug(DialColour::class, 'slug', $request->name);
            $data['slug'] = $slug;
		}
        
        $data['status'] = $request->status;
		
        $st = DB::table('dial_colours')->insert($data);

        if ($st)
        {
            return ('DialColour Added Successfully.');
        }
        else
        {
            return ('Error! DialColour Not Added.');
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
        return DialColour::select('id', 'name')->get();
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
            'name' => 'required | string | max:255',
        ]);

        $data = DialColour::where('id', '=', $id)->firstOrFail();

        $data->name = $request->name;
        
        $q = Input::get('slug');
		if($q != ""){
			$data->slug = $q;
		}
		else{
			$slug = SlugService::createSlug(DialColour::class, 'slug', $request->name);
            $data->slug = $slug;
		}
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('DialColour Updated Successfully.');
        }
        else
        {
            return ('Error! DialColour Not Updated.');
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
        $DialColour = DialColour::where('id', '=', $id)->firstOrFail();
        $DialColour->delete();
        return ['message' => 'DialColour Deleted.'];
    }



    public function search($query){
        if ($query) {
            $searchData = DialColour::where('name','LIKE', '%'.$query.'%')->select('slug', 'name', 'id', 'status')
            ->orderBy('created_at', 'desc')
            ->paginate(env('PAGE_NO', '10'));
        }

        return $searchData;
    }
    
    public function updateStatus(Request $request, $id){
        $data = DialColour::where('id', '=', $id)->firstOrFail();
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('DialColour Updated Successfully.');
        }
        else
        {
            return ('Error! DialColour Not Updated.');
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
                'name' => $value['field2'],
                'slug' => str_replace(' ', '-', strtolower($value['field2'])),
                'status' => 1
                );

        if(!empty($insert_data))
        {
            DB::table('dial_colours')->insert($insert_data);
        }
      }
     return ('Excel Data Imported successfully.');
    }
}
