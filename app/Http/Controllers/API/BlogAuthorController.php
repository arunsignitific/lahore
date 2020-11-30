<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\BlogAuthor;
use DB;
use Image;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class BlogAuthorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return BlogAuthor::latest()->paginate(env('PAGE_NO', '10'));
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
			$slug = SlugService::createSlug(BlogAuthor::class, 'slug', $request->name);
            $data['slug'] = $slug;
		}
		
        $st = DB::table('blog_authors')->insert($data);

        if ($st)
        {
            return ('Blog Author Added Successfully.');
        }
        else
        {
            return ('Error! Blog Author Not Added.');
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
        return BlogAuthor::select('id', 'name')->get();
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

        $data = BlogAuthor::where('id', '=', $id)->firstOrFail();

        $data->name = $request->name;

        $currentPhoto = $data->img;

        if($request->img != $currentPhoto){
            $name = time().'.' . explode('/', explode(':', substr($request->img, 0, strpos($request->img, ';')))[1])[1];
            $des_path = 'app/img/';

            Image::make($request->img)->save(storage_path($des_path).$name);
            $data->img = $name;

            $BlogAuthorPhoto = storage_path($des_path).$currentPhoto;
            if(file_exists($BlogAuthorPhoto)){
                @unlink($BlogAuthorPhoto);
            }
        }
        
        $q = Input::get('slug');
		if($q != ""){
			$data->slug = $q;
		}
		else{
			$slug = SlugService::createSlug(BlogAuthor::class, 'slug', $request->name);
            $data->slug = $slug;
		}
		
        $data->save();

        if ($data->save())
        {
            return ('Blog Author Updated Successfully.');
        }
        else
        {
            return ('Error! Blog Author Not Updated.');
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
        $BlogAuthor = BlogAuthor::where('id', '=', $id)->firstOrFail();
        \Storage::delete('img/'.$BlogAuthor['img']);
        $BlogAuthor->delete();
        return ['message' => 'Blog Author Deleted.'];
    }



    public function search($query){
        if ($query) {
            $searchData = BlogAuthor::where('name','LIKE', '%'.$query.'%')->select('slug', 'name', 'id')
            ->orderBy('created_at', 'desc')
            ->paginate(20);
        }

        return $searchData;
    }
}
