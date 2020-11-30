<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\ProductDetail;
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
use App\MainCategory;
use DB;
use Image;
use Illuminate\Support\Str;

class ProductDetailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ProductDetail::latest()->paginate(env('PAGE_NO', '10'));
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
            'model_no' => 'required | string | max:100',
            'h1' => 'nullable | string | max:255',
            'meta_title' => 'nullable | string | max:255',
            'meta_description' => 'nullable | string | max:500',
            'meta_keyword' => 'nullable | string | max:400',
        ]);
        
        // dd($request->all());
        // die;
		
        $data = array();

        $data['main_category_id'] = $request->main_category_id;
        $data['brand_id'] = $request->brand_id;
        $data['colour_id'] = $request->colour_id;
        $data['clock_type_id'] = $request->clock_type_id;
        $data['collection_id'] = $request->collection_id;
        $data['movement_id'] = $request->movement_id;
        $data['movement_type_id'] = $request->movement_type_id;
        $data['case_size_id'] = $request->case_size_id;
        $data['case_shape_id'] = $request->case_shape_id;
        $data['case_material_id'] = $request->case_material_id;
        $data['glass_material_id'] = $request->glass_material_id;
        $data['dial_colour_id'] = $request->dial_colour_id;
        $data['strap_material_id'] = $request->strap_material_id;
        $data['strap_colour_id'] = $request->strap_colour_id;
        $data['gender_id'] = $request->gender_id;
        // $data['feature_id'] = json_encode($request->feature_id);
        $data['feature_id'] = implode(',', $request->feature_id);
        $data['model_no'] = $request->model_no;
        $data['series'] = $request->series;
        $data['price'] = $request->price;
        $data['material'] = $request->material;
        $data['buckle'] = $request->buckle;
        $data['size'] = $request->size;
        $data['shape'] = $request->shape;
        $data['frame_colour'] = $request->frame_colour;
        $data['lens'] = $request->lens;
        $data['visible_ray'] = $request->visible_ray;
        $data['dimensions'] = $request->dimensions;
        $data['nib'] = $request->nib;
        $data['length_mm'] = $request->length_mm;
        $data['taper'] = $request->taper;
        $data['clasp_type'] = $request->clasp_type;
        $data['clasp_size'] = $request->clasp_size;
        $data['lock_system'] = $request->lock_system;
        $data['description'] = $request->description;
        $data['warranty_period'] = $request->warranty_period;
        $data['h1'] = $request->h1;
        $data['meta_title'] = $request->meta_title;
        $data['meta_description'] = $request->meta_description;
        $data['meta_keyword'] = $request->meta_keyword;

        $imageData = $request->images;

        if(count($imageData)>0){
            foreach($imageData as $image){
                $name = Str::random(12).'.' . explode('/', explode(':', substr($image, 0, strpos($image, ';')))[1])[1];
                $des_path = 'app/watch_images/';

                Image::make($image)->save(storage_path($des_path).$name);
                $arrImage[] = $name;

                $destinationPaththumb = 'storage/app/watch_thumb';

                $resize_image = Image::make($image);

                $resize_image->resize(277, 277, function($constraint){
                $constraint->aspectRatio();
                })->save($destinationPaththumb . '/' . $name);
            
            }
            $data['thumb_img'] = implode(',', $arrImage);
            $data['images'] = implode(',', $arrImage);
        }
        
        $data['status'] = $request->status;
        $data['featured_status'] = $request->featured_status;
        // dd($data);
        // die;
		
        $st = DB::table('product_details')->insert($data);

        if ($st)
        {
            return ('ProductDetail Added Successfully.');
        }
        else
        {
            return ('Error! ProductDetail Not Added.');
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
            'model_no' => 'required | string | max:100',
            'h1' => 'nullable | string | max:255',
            'meta_title' => 'nullable | string | max:255',
            'meta_description' => 'nullable | string | max:500',
            'meta_keyword' => 'nullable | string | max:400',
        ]);

        // dd($request->all());
        // die;

        $data = ProductDetail::where('id', '=', $id)->firstOrFail();
        $data->main_category_id = $request->main_category_id;
        $data->brand_id = $request->brand_id;
        $data->colour_id = $request->colour_id;
        $data->clock_type_id = $request->clock_type_id;
        $data->collection_id = $request->collection_id;
        $data->movement_id = $request->movement_id;
        $data->movement_type_id = $request->movement_type_id;
        $data->case_size_id = $request->case_size_id;
        $data->case_shape_id = $request->case_shape_id;
        $data->case_material_id = $request->case_material_id;
        $data->glass_material_id = $request->glass_material_id;
        $data->dial_colour_id = $request->dial_colour_id;
        $data->strap_material_id = $request->strap_material_id;
        $data->strap_colour_id = $request->strap_colour_id;
        $data->gender_id = $request->gender_id;
        // $data->feature_id = json_encode($request->feature_id);
        $data->feature_id = implode(',', $request->feature_id);
        $data->model_no = $request->model_no;
        $data->series = $request->series;
        $data->price = $request->price;
        $data->material = $request->material;
        $data->buckle = $request->buckle;
        $data->size = $request->size;
        $data->shape = $request->shape;
        $data->frame_colour = $request->frame_colour;
        $data->lens = $request->lens;
        $data->visible_ray = $request->visible_ray;
        $data->dimensions = $request->dimensions;
        $data->nib = $request->nib;
        $data->length_mm = $request->length_mm;
        $data->taper = $request->taper;
        $data->clasp_type = $request->clasp_type;
        $data->clasp_size = $request->clasp_size;
        $data->lock_system = $request->lock_system;
        $data->description = $request->description;
        $data->warranty_period = $request->warranty_period;
        $data->h1 = $request->h1;
        $data->meta_title = $request->meta_title;
        $data->meta_description = $request->meta_description;
        $data->meta_keyword = $request->meta_keyword;

        $imageData = $request->images;
        $currentPhotos = explode(',',$data->images);

        if(count($imageData)>0){

            $des_path = 'app/watch_images/';
            $destinationPaththumb = 'storage/app/watch_thumb';

            foreach($currentPhotos as $currentPhoto){
                $productPhoto = storage_path($des_path).$currentPhoto;
                $productThumbPhoto = storage_path('app/watch_thumb/').$currentPhoto;
                if(file_exists($productPhoto) && file_exists($productThumbPhoto)){
                    @unlink($productPhoto);
                    @unlink($productThumbPhoto);
                }
            }

            foreach($imageData as $image){
                $name = Str::random(12).'.' . explode('/', explode(':', substr($image, 0, strpos($image, ';')))[1])[1];

                Image::make($image)->save(storage_path($des_path).$name);

                $arrImage[] = $name;

                $resize_image = Image::make($image);

                $resize_image->resize(277, 277, function($constraint){
                $constraint->aspectRatio();
                })->save($destinationPaththumb . '/' . $name);
            }

        $data->thumb_img = implode(',',$arrImage);
        $data->images = implode(',',$arrImage);
        }

        
        $data->status = $request->status;
        $data->featured_status = $request->featured_status;

        // dd($data);
        // die;
		
        $data->save();

        if ($data->save())
        {
            return ('ProductDetail Updated Successfully.');
        }
        else
        {
            return ('Error! ProductDetail Not Updated.');
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
        $product = ProductDetail::where('id', '=', $id)->firstOrFail();
        $currentPhotos = explode(',',$product->images);

        $des_path = 'app/watch_images/';
        $destinationPaththumb = 'storage/app/watch_thumb';

        foreach($currentPhotos as $currentPhoto){
            $productPhoto = storage_path($des_path).$currentPhoto;
            $productThumbPhoto = storage_path('app/watch_thumb/').$currentPhoto;
            if(file_exists($productPhoto) && file_exists($productThumbPhoto)){
                @unlink($productPhoto);
                @unlink($productThumbPhoto);
            }
        }
        $product->delete();
        return ['message' => 'ProductDetail Deleted.'];
    }



    public function search($query){
        if ($query) {
            $searchData = ProductDetail::where('model_no','LIKE', '%'.$query.'%')->ORwhere('id', '=', $query)->paginate(env('PAGE_NO', '10'));
        }

        return $searchData;
    }
    
    public function updateStatus(Request $request, $id){
        $data = ProductDetail::where('id', '=', $id)->firstOrFail();
        
        $data->status = $request->status;
		
        $data->save();

        if ($data->save())
        {
            return ('ProductDetail Updated Successfully.');
        }
        else
        {
            return ('Error! ProductDetail Not Updated.');
        }
    }
    
    public function updateFeaturedStatus(Request $request, $id){
        $data = ProductDetail::where('id', '=', $id)->firstOrFail();
        
        $data->featured_status = $request->featured_status;
		
        $data->save();

        if ($data->save())
        {
            return ('ProductDetail Updated Successfully.');
        }
        else
        {
            return ('Error! ProductDetail Not Updated.');
        }
    }

    function import(Request $request)
    {
        $request->validate([
            'select_file'  => 'required'
        ]);
        $realdata = json_decode($request->select_file, true);
        $brandData = Brand::select('id','name')->get();
        $CaseMaterialData = CaseMaterial::select('id','name')->get();
        $CaseShapeData = CaseShape::select('id','name')->get();
        $CaseSizeData = CaseSize::select('id','case_size')->get();
        $CollectionData = Collection::select('id','name')->get();
        $DialColourData = DialColour::select('id','name')->get();
        $FeatureData = Feature::select('id','name')->get();
        $GenderData = Gender::select('id','gender')->get();
        $GlassMaterialData = GlassMaterial::select('id','name')->get();
        $MovementData = Movement::select('id','name')->get();
        $MovementTypeData = MovementType::select('id','name')->get();
        $StrapColourData = StrapColour::select('id','name')->get();
        $StrapMaterialData = StrapMaterial::select('id','name')->get();
        $MainCategoryData = MainCategory::select('id','name')->get();

      foreach($realdata as $value)
      {
          foreach($brandData as $brand){
            if(trim($value['field24'], " ") == $brand->name){
                $brand_id = $brand->id;
            }
            else{$brand_id==NULL;}
          }
          foreach($CaseMaterialData as $CaseMaterial){
            if(trim($value['field30'], " ") == $CaseMaterial->name){
                $CaseMaterial_id = $CaseMaterial->id;
            }
            else{$CaseMaterial_id==NULL;}
          }
          foreach($CaseShapeData as $CaseShape){
            if(trim($value['field29'], " ") == $CaseShape->name){
                $CaseShape_id = $CaseShape->id;
            }
            else{$CaseShape_id==NULL;}
          }
          foreach($CaseSizeData as $CaseSize){
            if(trim($value['field28'], " ") == $CaseSize->case_size){
                $CaseSize_id = $CaseSize->id;
            }
            else{$CaseSize_id==NULL;}
          }
          foreach($CollectionData as $Collection){
            if(trim($value['field25'], " ") == $Collection->name){
                $Collection_id = $Collection->id;
            }
            else{$Collection_id==NULL;}
          }
          foreach($DialColourData as $DialColour){
            if(trim($value['field32'], " ") == $DialColour->name){
                $DialColour_id = $DialColour->id;
            }
            else{$DialColour_id==NULL;}
          }
          foreach($GenderData as $Gender){
            if(trim($value['field35'], " ") == $Gender->gender){
                $Gender_id = $Gender->id;
            }
            else{$Gender_id==NULL;}
          }
          foreach($GlassMaterialData as $GlassMaterial){
            if(trim($value['field31'], " ") == $GlassMaterial->name){
                $GlassMaterial_id = $GlassMaterial->id;
            }
            else{$GlassMaterial_id==NULL;}
          }
          foreach($MovementData as $Movement){
            if(trim($value['field26'], " ") == $Movement->name){
                $Movement_id = $Movement->id;
            }
            else{$Movement_id==NULL;}
          }
          foreach($MovementTypeData as $MovementType){
            if(trim($value['field27'], " ") == $MovementType->name){
                $MovementType_id = $MovementType->id;
            }
            else{$MovementType_id==NULL;}
          }
          foreach($StrapColourData as $StrapColour){
            if(trim($value['field34'], " ") == $StrapColour->name){
                $StrapColour_id = $StrapColour->id;
            }
            else{$StrapColour_id==NULL;}
          }
          foreach($StrapMaterialData as $StrapMaterial){
            if(trim($value['field33'], " ") == $StrapMaterial->name){
                $StrapMaterial_id = $StrapMaterial->id;
            }
            else{$StrapMaterial_id==NULL;}
          }
          foreach($MainCategoryData as $MainCategory){
            if(trim($value['field21'], " ") == $MainCategory->id){
                $MainCategory_id = $MainCategory->id;
            }
            else{$MainCategory_id==NULL;}
          }
          $strValue = str_replace(', ', ',',trim($value['field36'], " "));
          $expo = explode(',',$strValue);
          $Feature_id = [];
          for($i=0;$i<count($expo);$i++){
            foreach($FeatureData as $Feature){
                    if($Feature->name == $expo[$i]){
                        $Feature_id[] = $Feature->id;
                    }
                }
                $Feature_ids = (is_Array($Feature_id))?implode(',',$Feature_id):NULL; 
          }
          if(!empty($value['field2']) && !empty($value['field4'])){
            $insert_data = array(
                'id' => $value['field1'],
                'model_no' => !empty($value['field2'])?trim($value['field2'], " "):NULL,
                'series' => (trim($value['field3'], " ")!="N/A" && !empty($value['field3']))?trim($value['field3'], " "):NULL,
                'price' => !empty($value['field4'])?trim($value['field4'], " "):NULL,
                'material' => !empty($value['field5'])?trim($value['field5'], " "):NULL, 
                'buckle' => !empty($value['field6'])?trim($value['field6'], " "):NULL,
                'size' => !empty($value['field7'])?trim($value['field7'], " "):NULL,
                'shape' => !empty($value['field8'])?trim($value['field8'], " "):NULL,
                'frame_colour' => !empty($value['field9'])?trim($value['field9'], " "):NULL,
                'lens' => !empty($value['field10'])?trim($value['field10'], " "):NULL,
                'visible_ray' => !empty($value['field11'])?trim($value['field11'], " "):NULL,
                'dimensions' => !empty($value['field12'])?trim($value['field12'], " "):NULL,
                'nib' => !empty($value['field13'])?trim($value['field13'], " "):NULL,
                'length_mm' => !empty($value['field14'])?trim($value['field14'], " "):NULL,
                'taper' => !empty($value['field15'])?trim($value['field15'], " "):NULL,
                'clasp_type' => !empty($value['field16'])?trim($value['field16'], " "):NULL,
                'clasp_size' => !empty($value['field17'])?trim($value['field17'], " "):NULL,
                'lock_system' => !empty($value['field18'])?trim($value['field18'], " "):NULL,
                'description' => !empty($value['field19'])?trim($value['field19'], " "):NULL,
                'warranty_period' => !empty($value['field20'])?trim($value['field20'], " "):NULL,
                'status' => 1,
                'featured_status' => 0,
                'main_category_id' => !empty($MainCategory_id)?$MainCategory_id:NULL,
                'colour_id' => !empty($value['field22'])?trim($value['field22'], " "):NULL,
                'clock_type_id' => !empty($value['field23'])?trim($value['field23'], " "):NULL,
                'brand_id' => !empty($brand_id)?$brand_id:NULL,
                'collection_id' => !empty($Collection_id)?$Collection_id:NULL,
                'movement_id' => !empty($Movement_id)?$Movement_id:NULL,
                'movement_type_id' => !empty($MovementType_id)?$MovementType_id:NULL,
                'case_size_id' => !empty($CaseSize_id)?$CaseSize_id:NULL,
                'case_shape_id' => !empty($CaseShape_id)?$CaseShape_id:NULL,
                'case_material_id' => !empty($CaseMaterial_id)?$CaseMaterial_id:NULL,
                'glass_material_id' => !empty($GlassMaterial_id)?$GlassMaterial_id:NULL,
                'dial_colour_id' => !empty($DialColour_id)?$DialColour_id:NULL,
                'strap_material_id' => !empty($StrapMaterial_id)?$StrapMaterial_id:NULL,
                'strap_colour_id' => !empty($StrapColour_id)?$StrapColour_id:NULL,
                'gender_id' => !empty($Gender_id)?$Gender_id:NULL,
                'feature_id' => !empty($Feature_ids)?$Feature_ids:NULL
                );

                if(!empty($insert_data))
                {
                    DB::table('product_details')->insert($insert_data);
                }
            }
      }
     return ('Excel Data Imported successfully.');
    }
}
