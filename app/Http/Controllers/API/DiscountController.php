<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Storage;
use Illuminate\Support\Facades\Input;
use App\Discount;
use App\ProductDetail;
use DB;

class DiscountController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Discount::latest()->paginate(env('PAGE_NO', '10'));
    }

    public function filterByGender(Request $request)
    {
        $gender = explode(',',$request->genders);
        $respo = DB::table('product_details')
        ->select('product_details.id', 'product_details.model_no')
        ->join('genders', 'product_details.gender_id', '=', 'genders.id')
        ->where(function($query) use ($gender) {
            if(is_array($gender)){
                return $query->whereIn('product_details.gender_id', (array)$gender);
            }
        })
        ->get();
        // dd($respo);
        return $respo;
    }

    public function filterByBrand(Request $request)
    {
        $brands = explode(',',$request->brands);
        $respo = DB::table('product_details')
        ->select('product_details.id', 'product_details.model_no')
        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
        ->where(function($query) use ($brands) {
            if(is_array($brands)){
                return $query->whereIn('product_details.brand_id', (array)$brands);
            }
        })
        ->get();
        // dd($respo);
        return $respo;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {		
        $data = array();

        $data['discount_by'] = $request->discount_by;
        $data['product_by'] = $request->product_by;
        $data['gender_id'] = implode(',',$request->gender_id);
        $data['brand_id'] = implode(',',$request->brand_id);
        $data['product_ids'] = implode(',',$request->product_ids);
        $data['discount_type'] = $request->discount_type;
        $data['discount_value'] = $request->discount_value;
        $data['max_value'] = $request->max_value;
        $data['discount_upto'] = $request->discount_upto;
        $data['discount_activation_date'] = $request->discount_activation_date;
        $data['discount_expiry_date'] = $request->discount_expiry_date;
        
		
        $st = DB::table('discounts')->insert($data);

        if ($st)
        {
            return ('Discount Added Successfully.');
        }
        else
        {
            return ('Error! Discount Not Added.');
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

        $data = Discount::where('id', '=', $id)->firstOrFail();

        $data->discount_by = $request->discount_by;
        $data->product_by = $request->product_by;
        $data->gender_id = implode(',',$request->gender_id);
        $data->brand_id = implode(',',$request->brand_id);
        $data->product_ids = implode(',',$request->product_ids);
        $data->discount_type = $request->discount_type;
        $data->discount_value = $request->discount_value;
        $data->max_value = $request->max_value;
        $data->discount_upto = $request->discount_upto;
        $data->discount_activation_date = $request->discount_activation_date;
        $data->discount_expiry_date = $request->discount_expiry_date;
		
        $data->save();

        if ($data->save())
        {
            return ('Discount Updated Successfully.');
        }
        else
        {
            return ('Error! Discount Not Updated.');
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
        $Discount = Discount::where('id', '=', $id)->firstOrFail();
        $Discount->delete();
        return ['message' => 'Discount Deleted.'];
    }

    public function search($query){
        if ($query) {
            $searchData = Discount::where('discount_by','LIKE', '%'.$query.'%')
            ->orderBy('created_at', 'desc')
            ->paginate(env('PAGE_NO', '10'));
        }

        return $searchData;
    }
}
