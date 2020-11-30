<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\GlassMaterial;
use DB;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class GlassMaterialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return GlassMaterial::latest()->paginate(env('PAGE_NO', '10'));
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
			$slug = SlugService::createSlug(GlassMaterial::class, 'slug', $request->name);
            $data['slug'] = $slug;
		}
        
        $data['status'] = $request->status;
		
        $st = DB::table('glass_materials')->insert($data);

        if ($st)
        {
            return ('GlassMaterial Added Successfully.');
        }
        else
        {
            return ('Error! GlassMaterial Not Added.');
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
        return GlassMaterial::select('id', 'name')->get();
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

        $data = GlassMaterial::where('id', '=', $id)->firstOrFail();

        $data->name = $request->name;
        
        $q = Input::get('slug');
		if($q != ""){
			$data->slug = $q;
		}
		else{
			$slug = SlugService::createSlug(GlassMaterial::class, 'slug', $request->name);
            $data->slug = $slug;
		}
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('GlassMaterial Updated Successfully.');
        }
        else
        {
            return ('Error! GlassMaterial Not Updated.');
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
        $GlassMaterial = GlassMaterial::where('id', '=', $id)->firstOrFail();
        $GlassMaterial->delete();
        return ['message' => 'GlassMaterial Deleted.'];
    }



    public function search($query){
        if ($query) {
            $searchData = GlassMaterial::where('name','LIKE', '%'.$query.'%')->select('slug', 'name', 'id', 'status')
            ->orderBy('created_at', 'desc')
            ->paginate(env('PAGE_NO', '10'));
        }

        return $searchData;
    }
    
    public function updateStatus(Request $request, $id){
        $data = GlassMaterial::where('id', '=', $id)->firstOrFail();
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('GlassMaterial Updated Successfully.');
        }
        else
        {
            return ('Error! GlassMaterial Not Updated.');
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
            DB::table('glass_materials')->insert($insert_data);
        }
      }
     return ('Excel Data Imported successfully.');
    }
}
