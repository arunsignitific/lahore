<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\SeoTag;
use DB;
use Image;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class SeoTagController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return SeoTag::latest()->paginate(env('PAGE_NO', '10'));
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
            'page_name' => 'required | string | max:255',
            'h1' => 'nullable | string | max:255',
            'meta_title' => 'nullable | string | max:255',
            'meta_description' => 'nullable | string | max:500',
            'meta_keyword' => 'nullable | string | max:400',
		]);
		
        $data = array();

        $data['page_name'] = $request->page_name;
        $data['h1'] = $request->h1;
        $data['meta_title'] = $request->meta_title;
        $data['meta_description'] = $request->meta_description;
        $data['meta_keyword'] = $request->meta_keyword;
		
        $st = DB::table('seo_tags')->insert($data);

        if ($st)
        {
            return ('Seo Tag Added Successfully.');
        }
        else
        {
            return ('Error! Seo Tag Not Added.');
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
            'page_name' => 'required | string | max:255',
            'h1' => 'nullable | string | max:255',
            'meta_title' => 'nullable | string | max:255',
            'meta_description' => 'nullable | string | max:500',
            'meta_keyword' => 'nullable | string | max:400',
        ]);

        $data = SeoTag::where('id', '=', $id)->firstOrFail();

        $data->page_name = $request->page_name;
        $data->h1 = $request->h1;
        $data->meta_title = $request->meta_title;
        $data->meta_description = $request->meta_description;
        $data->meta_keyword = $request->meta_keyword;
		
        $data->save();

        if ($data->save())
        {
            return ('Seo Tag Updated Successfully.');
        }
        else
        {
            return ('Error! Seo Tag Not Updated.');
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
        $SeoTag = SeoTag::where('id', '=', $id)->firstOrFail();
        $SeoTag->delete();
        return ['message' => 'Seo Tag Deleted.'];
    }



    public function search($query){
        if ($query) {
            $searchData = SeoTag::where('page_name','LIKE', '%'.$query.'%')->select('page_name', 'id')
            ->orderBy('created_at', 'desc')
            ->paginate(env('PAGE_NO', '10'));
        }

        return $searchData;
    }
}
