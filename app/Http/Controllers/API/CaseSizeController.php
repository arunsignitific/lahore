<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\CaseSize;
use DB;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class CaseSizeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return CaseSize::latest()->paginate(env('PAGE_NO', '10'));
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
            'case_size' => 'required | string | max:255',
		]);
		
        $data = array();

        $data['case_size'] = $request->case_size;
        
        $q = Input::get('slug');
		if($q != ""){
			$data['slug'] = $q;
		}
		else{
			$slug = SlugService::createSlug(CaseSize::class, 'slug', $request->case_size);
            $data['slug'] = $slug;
		}
        
        $data['status'] = $request->status;
		
        $st = DB::table('case_sizes')->insert($data);

        if ($st)
        {
            return ('CaseSize Added Successfully.');
        }
        else
        {
            return ('Error! CaseSize Not Added.');
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
        return CaseSize::select('id', 'case_size')->get();
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
            'case_size' => 'required | string | max:255',
        ]);

        $data = CaseSize::where('id', '=', $id)->firstOrFail();

        $data->case_size = $request->case_size;
        
        $q = Input::get('slug');
		if($q != ""){
			$data->slug = $q;
		}
		else{
			$slug = SlugService::createSlug(CaseSize::class, 'slug', $request->case_size);
            $data->slug = $slug;
		}
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('CaseSize Updated Successfully.');
        }
        else
        {
            return ('Error! CaseSize Not Updated.');
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
        $CaseSize = CaseSize::where('id', '=', $id)->firstOrFail();
        $CaseSize->delete();
        return ['message' => 'CaseSize Deleted.'];
    }



    public function search($query){
        if ($query) {
            $searchData = CaseSize::where('case_size','LIKE', '%'.$query.'%')->select('slug', 'case_size', 'id', 'status')
            ->orderBy('created_at', 'desc')
            ->paginate(env('PAGE_NO', '10'));
        }

        return $searchData;
    }
    
    public function updateStatus(Request $request, $id){
        $data = CaseSize::where('id', '=', $id)->firstOrFail();
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('CaseSize Updated Successfully.');
        }
        else
        {
            return ('Error! CaseSize Not Updated.');
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
                'case_size' => $value['field2'],
                'slug' => str_replace(' ', '-', strtolower($value['field2'])),
                'status' => 1
                );

        if(!empty($insert_data))
        {
            DB::table('case_sizes')->insert($insert_data);
        }
      }
     return ('Excel Data Imported successfully.');
    }
}
