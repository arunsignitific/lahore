<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\Page;
use DB;
use Image;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class PageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Page::latest()->paginate(env('PAGE_NO', '10'));
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
            'info' => 'required',
            'h1' => 'nullable | string | max:255',
            'meta_title' => 'nullable | string | max:255',
            'meta_description' => 'nullable | string | max:500',
            'meta_keyword' => 'nullable | string | max:400',
		]);
		
        $data = array();

        $data['name'] = $request->name;
        $data['info'] = $request->info;
        $data['h1'] = $request->h1;
        $data['meta_title'] = $request->meta_title;
        $data['meta_description'] = $request->meta_description;
        $data['meta_keyword'] = $request->meta_keyword;

        if($request->header_img){
            $name = time().'.' . explode('/', explode(':', substr($request->header_img, 0, strpos($request->header_img, ';')))[1])[1];
            $des_path = 'app/header_image/';

            Image::make($request->header_img)->save(storage_path($des_path).$name);
            $data['header_img'] = $name;
        }
        
        $q = Input::get('slug');
		if($q != ""){
			$data['slug'] = $q;
		}
		else{
			$slug = SlugService::createSlug(Page::class, 'slug', $request->name);
            $data['slug'] = $slug;
		}
        
            $data['status'] = $request->status;
		
        $st = DB::table('pages')->insert($data);

        if ($st)
        {
            return ('Page Added Successfully.');
        }
        else
        {
            return ('Error! Page Not Added.');
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
            'name' => 'required | string | max:255',
            'info' => 'required',
            'h1' => 'nullable | string | max:255',
            'meta_title' => 'nullable | string | max:255',
            'meta_description' => 'nullable | string | max:500',
            'meta_keyword' => 'nullable | string | max:400',
        ]);

        $data = Page::where('id', '=', $id)->firstOrFail();

        $data->name = $request->name;
        $data->info = $request->info;
        $data->h1 = $request->h1;
        $data->meta_title = $request->meta_title;
        $data->meta_description = $request->meta_description;
        $data->meta_keyword = $request->meta_keyword;

        $currentPhoto = $data->header_img;

        if($request->header_img != $currentPhoto){
            $name = time().'.' . explode('/', explode(':', substr($request->header_img, 0, strpos($request->header_img, ';')))[1])[1];
            $des_path = 'app/header_image/';

            Image::make($request->header_img)->save(storage_path($des_path).$name);
            $data->header_img = $name;

            $pagePhoto = storage_path($des_path).$currentPhoto;
            if(file_exists($pagePhoto)){
                @unlink($pagePhoto);
            }
        }
        
        $q = Input::get('slug');
		if($q != ""){
			$data->slug = $q;
		}
		else{
			$slug = SlugService::createSlug(Page::class, 'slug', $request->name);
            $data->slug = $slug;
		}
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('Page Updated Successfully.');
        }
        else
        {
            return ('Error! Page Not Updated.');
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
        $page = Page::where('id', '=', $id)->firstOrFail();
        $page->delete();
        return ['message' => 'Page Deleted.'];
    }



    public function search($query){
        if ($query) {
            $searchData = Page::where('name','LIKE', '%'.$query.'%')->paginate(env('PAGE_NO', '10'));
        }

        return $searchData;
    }
    
    public function updateStatus(Request $request, $id){
        $data = Page::where('id', '=', $id)->firstOrFail();
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('Page Updated Successfully.');
        }
        else
        {
            return ('Error! Page Not Updated.');
        }
    }
}
