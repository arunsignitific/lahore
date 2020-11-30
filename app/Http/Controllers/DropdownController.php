<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use Auth;
use Image;
use Upload;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use DB;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;

use App\Blog;
use App\BannerHeading;
use App\ProductDetail;
use App\SeoTag;
use App\Brand;
use App\CaseMaterial;
use App\CaseShape;
use App\CaseSize;
use App\Collection;
use App\DialColour;
use App\Feature;
use App\Gender;
use App\GlassMaterial;
use App\Movement;
use App\MovementType;
use App\StrapColour;
use App\StrapMaterial;
use App\Discount;
use App\MainCategory;

class DropdownController extends Controller
{
    public function passwordedit() {
        $user = Auth::user(); //Get user with specified id
        return view('auth.changepassword', compact('user')); //pass user data to view
    }

    public function changepassword(Request $request) {
        $user = Auth::user(); //Get role specified by id

    //Validate name, password fields    
        $this->validate($request, [
            'old_password' => 'required',
            'password'=>'required|min:6|confirmed|different:old_password'
        ]);
        if (\Hash::check($request->get('old_password'), Auth::user()->password)) {

        $user->password = \Hash::make($request->password); //Retreive the name, password fields

        $user->save();

            if ($user->save())
            {
                return 'success';
            }
            else
            {
                return 'error';
            }
        }
        return 'not_match';
        
    }

    public function imageForm(){
      ini_set('max_execution_time', 0);
      ini_set('memory_limit',-1);
      
        $products = ProductDetail::all();

        foreach($products as $product){
            $imageName = [];
            $folder = trim($product->model_no," ");
            $dirpath = 'storage/app/watch_fullsize/'.$folder;
            // $dirpath = 'storage/app/watch_fullsize/AX2104';
            $dirlarge = 'storage/app/watch_large/';
            $dirorg = 'storage/app/watch_images/';
            $dirthumb = 'storage/app/watch_thumb/';
            
            if(File::isDirectory($dirpath)){
                $fileNames = File::files($dirpath);
                $allowed = array('gif', 'png', 'jpg');

                foreach($fileNames as $filefull){
                    $ext = pathinfo($filefull, PATHINFO_EXTENSION);
                    if (in_array($ext, $allowed)) {
                        $name = Str::random(12).'.jpg';
                    
                        $resize_image800 = Image::make($filefull->getRealPath());

                        $resize_image800->resize(800, 800, function($constraint){
                        $constraint->aspectRatio();
                        });
                        $resize_image800->resizeCanvas(800, 800)->save($dirlarge . $name);


                        $resize_image400 = Image::make($filefull->getRealPath());

                        $resize_image400->resize(400, 400, function($constraint){
                        $constraint->aspectRatio();
                        });
                        $resize_image400->resizeCanvas(400, 400)->save($dirorg . $name);

                        $resize_image277 = Image::make($filefull->getRealPath());
                        
                        $resize_image277->resize(277, 277, function($constraint){
                        $constraint->aspectRatio();
                        });
                        $resize_image277->resizeCanvas(277, 277)->save($dirthumb . $name);

                        $imageName[] = $name; 

                    }
                }

                $data = ProductDetail::where('id', '=', $product->id)->firstOrFail();
                
                $data->images = implode(',', $imageName);
                $data->thumb_img = implode(',', $imageName);
                
                $data->save();
            }
        }

            // $dirpath = 'storage/app/watch_fullsize/AX2104';

            // $fileNames = File::files($dirpath);
            // $dirorg = 'storage/app/watch_images/';
            // $dirthumb = 'storage/app/watch_thumb/';
            // $allowed = array('gif', 'png', 'jpg');

            // foreach($fileNames as $filefull){
            //     $ext = pathinfo($filefull, PATHINFO_EXTENSION);
            //     if (in_array($ext, $allowed)) {
            //         $name = Str::random(12).'.jpg';
                
            //         $resize_image = Image::make($filefull->getRealPath());
            //         $resize_image->resize(400, 400, function($constraint){
            //             $constraint->aspectRatio();
            //             });
            //         $resize_image->resizeCanvas(400, 400)->save($dirthumb . $name);
            //         $resize_image->resize(400, 400, function($constraint){
            //         $constraint->aspectRatio();
            //         })->save($dirorg . $name);
                    
            //         $resize_image->resize(277, 277, function($constraint){
            //         $constraint->aspectRatio();
            //         })->save($dirthumb . $name);
            //     }
            // }
            
      
        // $products = ProductDetail::all();

        // foreach($products as $product){
        //     $imageName = [];
        //     $folder = trim($product->model_no," ");
        //     // $dirpath = 'storage/app/watch_fullsize/'.$folder;
        //     $dirpath = 'storage/app/watch_fullsize/AX2104';
        //     $dirorg = 'storage/app/watch_images/';
        //     $dirthumb = 'storage/app/watch_thumb/';

        //     $this->createThumbs($dirpath,$dirorg,470,470);
        //     $this->createThumbs($dirpath,$dirthumb,277,277);
        // } 
        return ('Images Updated Successfully.');
    }

    public function createThumbs( $pathToImages, $pathToThumbs, $sizeX, $sizeY) 
    {
      // open the directory
      $dir = opendir( $pathToImages );
    
      // loop through it, looking for any/all JPG files:
      while (false !== ($fname = readdir( $dir ))) {
        // parse path for the extension
          
         $info = pathinfo($pathToImages . $fname);
    
         //   print_r($info);
         if(!empty($info['basename']) && $info['basename']!='.' && $info['basename'] != '..'){
                $handle = new Upload($pathToImages . $info['basename']);
                $handle->image_resize          = true;
                $handle->image_ratio_fill      = true;
                $handle->allowed = array('image/*');
                $handle->image_x       = $sizeX;
                $handle->image_y       = $sizeY;
                $handle->Process($pathToThumbs);
                if ($handle->processed) {
                     echo '<p class="result">';
                    echo '  <b>File uploaded with success</b><br />';
                    echo '  File: <a href="' . $pathToThumbs . '/' . $handle->file_dst_name . '">' . $handle->file_dst_name . '</a>';
                    echo '   (' . round(filesize($handle->file_dst_pathname) / 256) / 4 . 'KB)';
                    echo '</p>';
                } else {
                    // one error occured
                    echo '<p class="result">';
                    echo '  <b>File not uploaded to the wanted location</b><br />';
                    echo '  Error: ' . $handle->error . '';
                    echo '</p>';
                } 
    
                //Update images in database
         }
     
      }
      // close the directory
      closedir( $dir );
    }
}
