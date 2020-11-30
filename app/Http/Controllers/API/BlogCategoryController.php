<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\BlogCategory;
use DB;
use Image;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class BlogCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return BlogCategory::latest()->paginate(env('PAGE_NO', '10'));
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
            'parent' => 'nullable | string | max:255',
            'h1' => 'nullable | string | max:255',
            'meta_title' => 'nullable | string | max:255',
            'meta_description' => 'nullable | string | max:255',
		]);
		
        $data = array();

        $data['name'] = $request->name;
        $data['parent'] = $request->parent;
        $data['h1'] = $request->h1;
        $data['meta_title'] = $request->meta_title;
        $data['meta_description'] = $request->meta_description;

        if($request->img){
            $name = time().'.' . explode('/', explode(':', substr($request->img, 0, strpos($request->img, ';')))[1])[1];
            $des_path = 'app/img/';

            Image::make($request->img)->save(storage_path($des_path).$name);
            $data['img'] = $name;
        }
        
        $q = Input::get('slug');
		if($q != ""){
			$data['slug'] = $q;
		}
		else{
			$slug = SlugService::createSlug(BlogCategory::class, 'slug', $request->name);
            $data['slug'] = $slug;
		}
        
            $data['status'] = $request->status;
		
        $st = DB::table('blog_categories')->insert($data);

        if ($st)
        {
            return ('Blog Category Added Successfully.');
        }
        else
        {
            return ('Error! Blog Category Not Added.');
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
        return BlogCategory::select('id', 'name')->get();
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
            'parent' => 'nullable | string | max:255',
            'h1' => 'nullable | string | max:255',
            'meta_title' => 'nullable | string | max:255',
            'meta_description' => 'nullable | string | max:255',
        ]);

        $data = BlogCategory::where('id', '=', $id)->firstOrFail();

        $data->name = $request->name;
        $data->parent = $request->parent;
        $data->h1 = $request->h1;
        $data->meta_title = $request->meta_title;
        $data->meta_description = $request->meta_description;

        $currentPhoto = $data->img;

        if($request->img != $currentPhoto){
            $name = time().'.' . explode('/', explode(':', substr($request->img, 0, strpos($request->img, ';')))[1])[1];
            $des_path = 'app/img/';

            Image::make($request->img)->save(storage_path($des_path).$name);
            $data->img = $name;

            $BlogCategoryPhoto = storage_path($des_path).$currentPhoto;
            if(file_exists($BlogCategoryPhoto)){
                @unlink($BlogCategoryPhoto);
            }
        }
        
        $q = Input::get('slug');
		if($q != ""){
			$data->slug = $q;
		}
		else{
			$slug = SlugService::createSlug(BlogCategory::class, 'slug', $request->name);
            $data->slug = $slug;
		}
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('Blog Category Updated Successfully.');
        }
        else
        {
            return ('Error! Blog Category Not Updated.');
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
        $BlogCategory = BlogCategory::where('id', '=', $id)->firstOrFail();
        \Storage::delete('img/'.$BlogCategory['img']);
        $BlogCategory->delete();
        return ['message' => 'Blog Category Deleted.'];
    }



    public function search($query){
        if ($query) {
            $searchData = BlogCategory::where('name','LIKE', '%'.$query.'%')->select('slug', 'name', 'id', 'status')
            ->orderBy('created_at', 'desc')
            ->paginate(20);
        }

        return $searchData;
    }
    
    public function updateStatus(Request $request, $id){
        $data = BlogCategory::where('id', '=', $id)->firstOrFail();
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('Blog Category Updated Successfully.');
        }
        else
        {
            return ('Error! Blog Category Not Updated.');
        }
    }
}
