<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\Blog;
use DB;
use Image;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Blog::latest()->paginate(env('PAGE_NO', '10'));
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
            'title' => 'required | string | max:255',
            'h1' => 'nullable | string | max:255',
            'meta_title' => 'nullable | string | max:255',
            'meta_description' => 'nullable | string | max:500',
            'meta_keyword' => 'nullable | string | max:400',
		]);
		
        $data = array();

        $data['blog_category_id'] = $request->blog_category_id;
        $data['blog_author_id'] = $request->blog_author_id;
        $data['title'] = $request->title;
        $data['info'] = $request->info;
        $data['sort_info'] = $request->sort_info;
        $data['h1'] = $request->h1;
        $data['meta_title'] = $request->meta_title;
        $data['meta_description'] = $request->meta_description;
        $data['meta_keyword'] = $request->meta_keyword;

        if($request->header_img){
            $name = time().'.' . explode('/', explode(':', substr($request->header_img, 0, strpos($request->header_img, ';')))[1])[1];
            $des_path = 'app/blog_image/';

            Image::make($request->header_img)->save(storage_path($des_path).$name);
            $data['header_img'] = $name;
        }
        
        $q = Input::get('slug');
		if($q != ""){
			$data['slug'] = $q;
		}
		else{
			$slug = SlugService::createSlug(Blog::class, 'slug', $request->title);
            $data['slug'] = $slug;
		}
        
            $data['status'] = $request->status;
		
        $st = DB::table('blogs')->insert($data);

        if ($st)
        {
            return ('Blog Added Successfully.');
        }
        else
        {
            return ('Error! Blog Not Added.');
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
            'title' => 'required | string | max:255',
            'h1' => 'nullable | string | max:255',
            'meta_title' => 'nullable | string | max:255',
            'meta_description' => 'nullable | string | max:500',
            'meta_keyword' => 'nullable | string | max:400',
        ]);

        $data = Blog::where('id', '=', $id)->firstOrFail();

        $data->blog_category_id = $request->blog_category_id;
        $data->blog_author_id = $request->blog_author_id;
        $data->title = $request->title;
        $data->info = $request->info;
        $data->sort_info = $request->sort_info;
        $data->h1 = $request->h1;
        $data->meta_title = $request->meta_title;
        $data->meta_description = $request->meta_description;
        $data->meta_keyword = $request->meta_keyword;

        $currentPhoto = $data->header_img;

        if($request->header_img != $currentPhoto){
            $name = time().'.' . explode('/', explode(':', substr($request->header_img, 0, strpos($request->header_img, ';')))[1])[1];
            $des_path = 'app/blog_image/';

            Image::make($request->header_img)->save(storage_path($des_path).$name);
            $data->header_img = $name;

            $BlogPhoto = storage_path($des_path).$currentPhoto;
            if(file_exists($BlogPhoto)){
                @unlink($BlogPhoto);
            }
        }
        
        $q = Input::get('slug');
		if($q != ""){
			$data->slug = $q;
		}
		else{
			$slug = SlugService::createSlug(Blog::class, 'slug', $request->title);
            $data->slug = $slug;
		}
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('Blog Updated Successfully.');
        }
        else
        {
            return ('Error! Blog Not Updated.');
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
        $Blog = Blog::where('id', '=', $id)->firstOrFail();
        \Storage::delete('blog_thumbnail/'.$Blog['thumb_img'], 'blog_image/'.$Blog['header_img']);
        $Blog->delete();
        return ['message' => 'Blog Deleted.'];
    }



    public function search($query){
        if ($query) {
            $searchData = Blog::where('title','LIKE', '%'.$query.'%')->paginate(20);
        }

        return $searchData;
    }
    
    public function updateStatus(Request $request, $id){
        $data = Blog::where('id', '=', $id)->firstOrFail();
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('Blog Updated Successfully.');
        }
        else
        {
            return ('Error! Blog Not Updated.');
        }
    }
}
