<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\BannerHeading;
use DB;
use Image;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class BannerHeadingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return BannerHeading::latest()->paginate(env('PAGE_NO', '10'));
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
            'heading' => 'nullable | string | max:255',
        ]);
		
        $data = array();

        $data['page_name'] = $request->page_name;
        $data['heading'] = $request->heading;
        $data['heading_color'] = $request->heading_color;
        $data['info'] = $request->info;
        $data['info_color'] = $request->info_color;
        $data['url'] = $request->url;

        if($request->banner_img){
            $image = $request->banner_img;
            $width = $request->width;
            $height = $request->height;
            $name = time().'.' . explode('/', explode(':', substr($image, 0, strpos($image, ';')))[1])[1];

            $destinationPaththumb = 'storage/app/header_image/';

            if($width != "" && $height != ""){
                $resize_image = Image::make($image);

                $resize_image->resize($width, $height, function($constraint){
                $constraint->aspectRatio();
                })->save($destinationPaththumb.$name);
            }else{
                Image::make($image)->save($destinationPaththumb.$name);
            }
        
            $data['banner_img'] = $name;
        }
		
        $st = DB::table('banner_headings')->insert($data);

        if ($st)
        {
            return ('Banner Heading Added Successfully.');
        }
        else
        {
            return ('Error! Banner Heading Not Added.');
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
            'heading' => 'nullable | string | max:255',
        ]);

        $data = BannerHeading::where('id', '=', $id)->firstOrFail();

        $data->page_name = $request->page_name;
        $data->heading = $request->heading;
        $data->heading_color = $request->heading_color;
        $data->info = $request->info;
        $data->info_color = $request->info_color;
        $data->url = $request->url;

        $currentPhoto = $data->banner_img;

        if($request->banner_img != $currentPhoto){
            $image = $request->banner_img;
            $width = $request->width;
            $height = $request->height;
            $name = time().'.' . explode('/', explode(':', substr($image, 0, strpos($image, ';')))[1])[1];

            $destinationPaththumb = 'storage/app/header_image/';

            if($width != "" && $height != ""){
                $resize_image = Image::make($image);
    
                $resize_image->resize($width, $height, function($constraint){
                $constraint->aspectRatio();
                })->save($destinationPaththumb.$name);
            }else{
                Image::make($image)->save($destinationPaththumb.$name);
            }
        
            $data->banner_img = $name;

            $BlogPhoto = storage_path($destinationPaththumb).$currentPhoto;
            if(file_exists($BlogPhoto)){
                @unlink($BlogPhoto);
            }
        }
		
        $data->save();

        if ($data->save())
        {
            return ('Banner Heading Updated Successfully.');
        }
        else
        {
            return ('Error! Banner Heading Not Updated.');
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
        $BannerHeading = BannerHeading::where('id', '=', $id)->firstOrFail();
        \Storage::delete('header_image/'.$BannerHeading['banner_img']);
        $BannerHeading->delete();
        return ['message' => 'Banner Heading Deleted.'];
    }

    public function search($query){
        if ($query) {
            $searchData = BannerHeading::where('heading','LIKE', '%'.$query.'%')->ORwhere('page_name','LIKE', '%'.$query.'%')->select('page_name', 'heading', 'id')
            ->orderBy('created_at', 'desc')
            ->paginate(env('PAGE_NO', '10'));
        }

        return $searchData;
    }
}
