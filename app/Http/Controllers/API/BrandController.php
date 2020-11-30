<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\Brand;
use DB;
use Image;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class BrandController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Brand::latest()->paginate(env('PAGE_NO', '10'));
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
        $data['name_color'] = $request->name_color;

        if($request->logo_img){
            $name = time().'.' . explode('/', explode(':', substr($request->logo_img, 0, strpos($request->logo_img, ';')))[1])[1];
            $des_path = 'storage/app/brand_images/';

            $resize_image = Image::make($request->logo_img);

            $resize_image->resize(170, 35, function($constraint){
            $constraint->aspectRatio();
            })->save($des_path . $name);
            $data['logo_img'] = $name;
        }


        if($request->banner_img){
            $name = time().'.' . explode('/', explode(':', substr($request->banner_img, 0, strpos($request->banner_img, ';')))[1])[1];
            $des_path = 'app/header_image/';

            Image::make($request->banner_img)->save(storage_path($des_path).$name);
            $data['banner_img'] = $name;
        }
        
        $q = Input::get('slug');
		if($q != ""){
			$data['slug'] = $q;
		}
		else{
			$slug = SlugService::createSlug(Brand::class, 'slug', $request->name);
            $data['slug'] = $slug;
		}
        
        $data['status'] = $request->status;
		
        $st = DB::table('brands')->insert($data);

        if ($st)
        {
            return ('Brand Added Successfully.');
        }
        else
        {
            return ('Error! Brand Not Added.');
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
        return Brand::select('id', 'name')->get();
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

        $data = Brand::where('id', '=', $id)->firstOrFail();

        $data->name = $request->name;
        $data->name_color = $request->name_color;

        $currentPhoto = $data->logo_img;

        if($request->logo_img != $currentPhoto){
            $name = time().'.' . explode('/', explode(':', substr($request->logo_img, 0, strpos($request->logo_img, ';')))[1])[1];
            $des_path = 'storage/app/brand_images/';

            $resize_image = Image::make($request->logo_img);

            $resize_image->resize(170, 35, function($constraint){
            $constraint->aspectRatio();
            })->save($des_path . $name);
            $data->logo_img = $name;

            $BlogPhoto = storage_path($des_path).$currentPhoto;
            if(file_exists($BlogPhoto)){
                @unlink($BlogPhoto);
            }
        }

        $currentBanPhoto = $data->banner_img;

        if($request->banner_img != $currentBanPhoto){
            $name = time().'.' . explode('/', explode(':', substr($request->banner_img, 0, strpos($request->banner_img, ';')))[1])[1];
            $des_path = 'app/header_image/';

            Image::make($request->banner_img)->save(storage_path($des_path).$name);
            $data->banner_img = $name;

            $BlogPhoto = storage_path($des_path).$currentBanPhoto;
            if(file_exists($BlogPhoto)){
                @unlink($BlogPhoto);
            }
        }
        
        $q = Input::get('slug');
		if($q != ""){
			$data->slug = $q;
		}
		else{
			$slug = SlugService::createSlug(Brand::class, 'slug', $request->name);
            $data->slug = $slug;
		}
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('Brand Updated Successfully.');
        }
        else
        {
            return ('Error! Brand Not Updated.');
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
        $Brand = Brand::where('id', '=', $id)->firstOrFail();
        $des_path = 'app/brand_images/';
        $desBan_path = 'app/header_image/';
        $currentPhoto = $Brand->logo_img;
        $currentBanPhoto = $Brand->banner_img;

        $BlogPhoto = storage_path($des_path).$currentPhoto;
        $BannerPhoto = storage_path($desBan_path).$currentBanPhoto;
        if(file_exists($BlogPhoto)){
            @unlink($BlogPhoto);
        }
        if(file_exists($BannerPhoto)){
            @unlink($BannerPhoto);
        }
        $Brand->delete();
        return ['message' => 'Brand Deleted.'];
    }



    public function search($query){
        if ($query) {
            $searchData = Brand::where('name','LIKE', '%'.$query.'%')->select('slug', 'name', 'id', 'status')
            ->orderBy('created_at', 'desc')
            ->paginate(env('PAGE_NO', '10'));
        }

        return $searchData;
    }
    
    public function updateStatus(Request $request, $id){
        $data = Brand::where('id', '=', $id)->firstOrFail();
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('Brand Updated Successfully.');
        }
        else
        {
            return ('Error! Brand Not Updated.');
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
            DB::table('brands')->insert($insert_data);
        }
      }
     return ('Excel Data Imported successfully.');
    }
}
