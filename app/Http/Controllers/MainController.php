<?php

namespace App\Http\Controllers;
use Closure;
use Session; 
   
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Collection as CollSupport;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Routing\UrlGenerator;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;
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
use App\User;
use App\GuestUser;
use App\ShippingAdd;

use DB;

class MainController extends Controller
{

public function userlogin()
{
        $seo = SeoTag::where('page_name', '=', 'home')->firstOrFail();
        $brand_cat = Brand::where('status', '=', '1')->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $userSession = Session::get('id');
        $userData = GuestUser::where('id', '=', $userSession)->get();

        return view('frontend.user-login',[
            'seo' => $seo,
            'brand_cat' => $brand_cat,
            'usersData' =>$userData,
            'usersSession'=>$userSession,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'collection_cat' => $collection_cat,
        ]);
}

public function userloginCheck(Request $request)
{ 
        $useremail = $request->email;
        $userpassword = $request->password;

        $user = DB::table('guest_users')
        ->where('email', '=', $useremail)
        ->first(); 

        if(isset($user)){ 

        if(Hash::check($userpassword, $user->password)){

            if(isset( $_COOKIE['cart_items_cookie'])){

                     $cookie = $_COOKIE['cart_items_cookie'];

                    $cart_prod =  json_decode($cookie);

                    foreach($cart_prod as $key=>$value){


$cookie = stripslashes($cookie);

   $saved_cart_items = json_decode($cookie, true);

    if(array_key_exists($key, $saved_cart_items)){
            unset($saved_cart_items[$key]);
        }
        $json = json_encode($saved_cart_items, true);
        setcookie('cart_items_cookie', $json, time() + 2592000, "/"); 



        
                        $data = [

                            'product_id'=>$key,
                            'user_id'=>$user->id

                        ];


            $cart_insert =  DB::table('cart')->insert($data); 


                    } 
  

            }
       
    Session::put('id',$user->id);
    return redirect()->route('index');

}
 
else{

return redirect()->back()->with('Error','Error! Check Your Email Id or Password');
 }

} else{

 return redirect()->back()->with('Error','Error! Check Your Email Id or Password');

      }

}     
   
        public function userLogout(){
            Session::flush();
            Session::forget('id');
            return redirect('/');
        }  
    


    public function userRegister(){

         $seo = SeoTag::where('page_name', '=', 'home')->firstOrFail();
        $brand_cat = Brand::where('status', '=', '1')->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $userSession = Session::get('id');
        $userData = GuestUser::where('id', '=', $userSession)->get();


        return view('frontend.user-login',[
            'seo' => $seo,
            'brand_cat' => $brand_cat,
            'usersData' =>$userData,
            'usersSession'=>$userSession,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'collection_cat' => $collection_cat,
        ]);

    }


 public function userInsert(Request $request){

$seo = SeoTag::where('page_name', '=', 'home')->firstOrFail();
$brand_cat = Brand::where('status', '=', '1')->get();
$collection_cat = Collection::where('status', '=', true)->get();
$strap_material_cat = StrapMaterial::where('status', '=', true)->get();
$feature_cat = Feature::where('status', '=', true)->get();
$footer_brands = Brand::where('status', '=', true)->limit(5)->get();
$userSession = Session::get('id');

$userTable = new GuestUser;

$password = Hash::make($request->password);
 
$data = [ 
  'name'=> $request->name,
  'email'=>  $request->email,
  'password'=> $password,
  'password'=> $password,
  'phone' =>  $request->phone
];

$dI = DB::table('guest_users')->insertGetId($data);

if($dI){  

$lastId = DB::table('guest_users')->where('id','=',$dI)->get();


$email = '';

foreach($lastId as $email){

$email = $email->email;

}

    return view('frontend.email-varification',
        [
            'seo' => $seo,
            'brand_cat' => $brand_cat,
            'usersSession'=>$userSession,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'collection_cat' => $collection_cat,
            'userEmail'=> $lastId
        ]
);

}else{ echo "error";}
 }


public function userDashboard($id){

$seo = SeoTag::where('page_name', '=', 'home')->firstOrFail();
$brand_cat = Brand::where('status', '=', '1')->get();
$collection_cat = Collection::where('status', '=', true)->get();
$strap_material_cat = StrapMaterial::where('status', '=', true)->get();
$feature_cat = Feature::where('status', '=', true)->get();
$footer_brands = Brand::where('status', '=', true)->limit(5)->get();
$userSession = Session::get('id');
$userData = GuestUser::where('id', '=', $userSession)->get();
$userShippingAdd = ShippingAdd::where('uid', '=', $userSession)->get();

    return view('frontend.user-dashboard',
        [
            'seo' => $seo,
            'brand_cat' => $brand_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'collection_cat' => $collection_cat,
            'usersSession' => $userSession,
            'usersData' => $userData,
            'ShippingAdd'=>$userShippingAdd
          
        ]

);
} 

public function changePassword($id){


$seo = SeoTag::where('page_name', '=', 'home')->firstOrFail();
$brand_cat = Brand::where('status', '=', '1')->get();
$collection_cat = Collection::where('status', '=', true)->get();
$strap_material_cat = StrapMaterial::where('status', '=', true)->get();
$feature_cat = Feature::where('status', '=', true)->get();
$footer_brands = Brand::where('status', '=', true)->limit(5)->get();
$userSession = Session::get('id');
$userData = GuestUser::where('id', '=', $userSession)->get();

      return view('frontend.change-password',
        [
            'seo' => $seo,
            'brand_cat' => $brand_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'collection_cat' => $collection_cat,
            'usersSession' => $userSession,
            'usersData' => $userData,
          
        ]

);

}


public function editAddress($id){

$seo = SeoTag::where('page_name', '=', 'home')->firstOrFail();
$brand_cat = Brand::where('status', '=', '1')->get();
$collection_cat = Collection::where('status', '=', true)->get();
$strap_material_cat = StrapMaterial::where('status', '=', true)->get();
$feature_cat = Feature::where('status', '=', true)->get();
$footer_brands = Brand::where('status', '=', true)->limit(5)->get();
$userSession = Session::get('id');
$userData = GuestUser::where('id', '=', $userSession)->get();

$userData = GuestUser::where('id', '=', $userSession)->get();

      return view('frontend.change-password',
        [
            'seo' => $seo,
            'brand_cat' => $brand_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'collection_cat' => $collection_cat,
            'usersSession' => $userSession,
            'usersData' => $userData,
          
        ]

);

}

    public function frontendIndex(){
        $blogs = Blog::where('status', '=', true)->orderBy('created_at', 'asc')->limit(3)->get();
        $latest_data = ProductDetail::where('status', '=', true)->where('featured_status', '=', false)->where('main_category_id', '=', 1)->orderBy('price', 'asc')->limit(8)->get();
        $brand_cat = Brand::where('status', '=', '1')->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $featured_data = ProductDetail::where('status', '=', true)->where('featured_status', '=', true)->where('main_category_id', '=', 1)->orderBy('price', 'asc')->limit(8)->get();
        $seo = SeoTag::where('page_name', '=', 'home')->firstOrFail();
        $bannerheading = BannerHeading::where('page_name', '=', 'home')->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $discount = Discount::all();

         $userSession = Session::get('id');

         $userData = GuestUser::where('id', '=', $userSession)->get(); 

           //$userData = DB::table('guest_users')->get();
        
 
        if(count($featured_data)>0){
            foreach($featured_data as $item){
                $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                $discount_rate = (!empty($data)) ? $data : '' ;
                $featured[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_rate,'brand_id'=>$item->brand_id];
            }
        }
        else{
            $featured = $featured_data;
        }

        if(count($latest_data)>0){
            foreach($latest_data as $item){
                $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                $discount_price = (!empty($data)) ? $data : '' ;
                $latest[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price,'brand_id'=>$item->brand_id];
            }
        }
        else{
            $latest = $latest_data;
        }



        return view('frontend.index', [
            'blogs' => $blogs,
            'latest' => $latest,
            'featured' => $featured,
            'brand_cat' => $brand_cat,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'discount' => $discount,
            'footer_brands' => $footer_brands,
            'bannerheading' => $bannerheading,
            'usersData' =>$userData,
            'usersSession'=>$userSession,
            'seo' => $seo
        ]);
    }

    public function about(){
        $seo = SeoTag::where('page_name', '=', 'about')->firstOrFail();
        $brand_cat = Brand::where('status', '=', true)->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $bannerheading = BannerHeading::where('page_name', '=', 'about')->get();
          $userSession = Session::get('id');
         $userData = GuestUser::where('id', '=', $userSession)->get();

        return view('frontend.about', [
            'brand_cat' => $brand_cat,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'bannerheading' => $bannerheading,
             'usersData' =>$userData,
            'usersSession'=>$userSession,
            'seo' => $seo
        ]);
    }

    public function store(){
        $seo = SeoTag::where('page_name', '=', 'about')->firstOrFail();
        $brand_cat = Brand::where('status', '=', true)->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $bannerheading = BannerHeading::where('page_name', '=', 'store')->get();
          $userSession = Session::get('id');
         $userData = GuestUser::where('id', '=', $userSession)->get();

        return view('frontend.store', [
            'brand_cat' => $brand_cat,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'bannerheading' => $bannerheading,
             'usersData' =>$userData,
            'usersSession'=>$userSession,
            'seo' => $seo
        ]);
    }

    public function repairServices(){
        $seo = SeoTag::where('page_name', '=', 'about')->firstOrFail();
        $brand_cat = Brand::where('status', '=', true)->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $bannerheading = BannerHeading::where('page_name', '=', 'repair')->get();
          $userSession = Session::get('id');
         $userData = GuestUser::where('id', '=', $userSession)->get();

        return view('frontend.repair-services', [
            'brand_cat' => $brand_cat,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'bannerheading' => $bannerheading,
             'usersData' =>$userData,
            'usersSession'=>$userSession,
            'seo' => $seo
        ]);
    }

    public function accessories(Request $request){
        $brand_cat = Brand::where('status', '=', true)->get();
        $seo = SeoTag::where('page_name', '=', 'product')->firstOrFail();
        if(!empty($request->price)){
            $price = explode('-',$request->price);
            $products = ProductDetail::where('status', '=', true)->where('main_category_id', '!=', 1)->whereBetween('price', (array)$price)->orderBy('price', 'asc')->paginate(12);
        }
        else if($request->gender == 'men'){
            $brand_slug = Gender::where('gender', '=', 'Men')->firstOrFail();
            $products = ProductDetail::where('status', '=', true)->where('main_category_id', '!=', 1)->where('gender_id','=',$brand_slug->id)->orderBy('price', 'asc')->paginate(12);
        }
        else if($request->gender == 'women'){
            $brand_slug = Gender::where('gender', '=', 'Women')->firstOrFail();
            $products = ProductDetail::where('status', '=', true)->where('main_category_id', '!=', 1)->where('gender_id','=',$brand_slug->id)->orderBy('price', 'asc')->paginate(12);
        }
        else{
            $products = ProductDetail::where('status', '=', true)->where('main_category_id', '!=', 1)->orderBy('price', 'asc')->paginate(12);
        }
        $brands = Brand::where('status', '=', true)->select('id', 'name')->get();
        $gender = Gender::select('id', 'gender')->get();
        $movementtype = MovementType::where('status', '=', true)->select('id', 'name')->get();
        $maincategory = MainCategory::where('status', '=', true)->where('id', '!=', 1)->select('id', 'name')->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $bannerheading = BannerHeading::where('page_name', '=', 'accessories')->get();
          $userSession = Session::get('id');
         $userData = GuestUser::where('id', '=', $userSession)->get();

        return view('frontend.accessories', [
            'brand_cat' => $brand_cat,
            'products' => $products,
            'brands' => $brands,
            'gender' => $gender,
            'movementtype' => $movementtype,
            'maincategory' => $maincategory,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'bannerheading' => $bannerheading,
             'usersData' =>$userData,
            'usersSession'=>$userSession,
            'seo' => $seo
        ]); 
    }

    public function product(Request $request){

        $brand_cat = Brand::where('status', '=', true)->get();
        $seo = SeoTag::where('page_name', '=', 'product')->firstOrFail();
          $userSession = Session::get('id');
         $userData = GuestUser::where('id', '=', $userSession)->get();
        if(!empty($request->price)){
            $gender_slug = [];
            $price = explode('-',$request->price);
            $bannerheading = BannerHeading::where('page_name', '=', 'all')->firstOrFail();
            $products_data = ProductDetail::where('status', '=', true)->where('main_category_id', '=', 1)->whereBetween('price', (array)$price)->orderBy('price', 'asc')->paginate(12);
            $products_data->withPath(url()->current()."?price=".$request->price);
            if(!empty($products_data)){
                foreach($products_data as $item){
                    $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                    $discount_price = (!empty($data)) ? $data : '' ;
                    $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
                }
                // if(!empty($products_all)){
                //     $products = $this->paginate($products_all,$slug=null, $request->price);
                // }
                // else{
                    $products = $products_all;
                // }
            }
            else{
                $products = $products_data;
            }
        }
        else if($request->gender == 'men'){
            $gender_slug = Gender::where('gender', '=', 'Men')->firstOrFail();
            $bannerheading = BannerHeading::where('page_name', '=', 'men-watch')->firstOrFail();
            $products_data = ProductDetail::where('status', '=', true)->where('main_category_id', '=', 1)->where('gender_id','=',$gender_slug->id)->orderBy('price', 'asc')->paginate(12);
            $products_data->withPath(url()->current()."?gender=".$request->gender);
            if(!empty($products_data)){
                foreach($products_data as $item){
                    $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                    $discount_price = (!empty($data)) ? $data : '' ;
                    $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
                }
                // if(!empty($products_all)){
                //     $products = $this->paginate($products_all,$gender_slug->slug);
                // }
                // else{
                    $products = $products_all;
                // }
            }
            else{
                $products = $products_data;
            }
        }
        else if($request->gender == 'women'){
            $gender_slug = Gender::where('gender', '=', 'Women')->firstOrFail();
            $bannerheading = BannerHeading::where('page_name', '=', 'women-watch')->firstOrFail();
            $products_data = ProductDetail::where('status', '=', true)->where('main_category_id', '=', 1)->where('gender_id','=',$gender_slug->id)->orderBy('price', 'asc')->paginate(12);
            $products_data->withPath(url()->current()."?gender=".$request->gender);
            if(!empty($products_data)){
                foreach($products_data as $item){
                    $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                    $discount_price = (!empty($data)) ? $data : '' ;
                    $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
                }
                // if(!empty($products_all)){
                //     $products = $this->paginate($products_all,$gender_slug->slug);
                // }
                // else{
                    $products = $products_all;
                // }
            }
            else{
                $products = $products_data;
            }
        }
        else if($request->gender == 'unisex'){
            $gender_slug = Gender::where('gender', '=', 'Unisex')->firstOrFail();
            $bannerheading = BannerHeading::where('page_name', '=', 'unisex-watch')->firstOrFail();
            $products_data = ProductDetail::where('status', '=', true)->where('main_category_id', '=', 1)->where('gender_id','=',$gender_slug->id)->orderBy('price', 'asc')->paginate(12);
            $products_data->withPath(url()->current()."?gender=".$request->gender);
            if(!empty($products_data)){
                foreach($products_data as $item){
                    $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                    $discount_price = (!empty($data)) ? $data : '' ;
                    $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
                }
               // if(!empty($products_all)){
                //     $products = $this->paginate($products_all,$gender_slug->slug);
                // }
                // else{
                    $products = $products_all;
                // }
            }
            else{
                $products = $products_data;
            }
        }
        else if($request->gender == 'couple'){
            $gender_slug = Gender::where('gender', '=', 'couple')->firstOrFail();
            $bannerheading = BannerHeading::where('page_name', '=', 'couple-watch')->firstOrFail();
            $products_data = ProductDetail::where('status', '=', true)->where('main_category_id', '=', 1)->where('gender_id','=',$gender_slug->id)->orderBy('price', 'asc')->paginate(12);
            $products_data->withPath(url()->current()."?gender=".$request->gender);
            if(!empty($products_data)){
                foreach($products_data as $item){
                    $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                    $discount_price = (!empty($data)) ? $data : '' ;
                    $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
                }
                // if(!empty($products_all)){
                //     $products = $this->paginate($products_all,$gender_slug->slug);
                // }
                // else{
                    $products = $products_all;
                // }
            }
            else{
                $products = $products_data;
            }
        }
        else{
            $bannerheading = BannerHeading::where('page_name', '=', 'all')->firstOrFail();
            $products_data = ProductDetail::where('status', '=', true)->where('main_category_id', '=', 1)->orderBy('price', 'asc')->paginate(12);
            $products_data->withPath(url()->current());
            foreach($products_data as $item){
                $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                $discount_price = (!empty($data)) ? $data : '' ;
                $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
            }
            $products = $products_all;
            $gender_slug = [];
        }

        $brands = Brand::where('status', '=', true)->select('id', 'name')->get();
        $casematerial = CaseMaterial::where('status', '=', true)->select('id', 'name')->get();
        $caseshape = CaseShape::where('status', '=', true)->select('id', 'name')->get();
        $casesize = CaseSize::where('status', '=', true)->select('id', 'case_size')->get();
        $collection = Collection::where('status', '=', true)->select('id', 'name')->get();
        $dialcolour = DialColour::where('status', '=', true)->select('id', 'name')->get();
        $feature = Feature::where('status', '=', true)->select('id', 'name')->get();
        $gender = Gender::select('id', 'gender', 'slug')->get();
        $glassmaterial = GlassMaterial::where('status', '=', true)->select('id', 'name')->get();
        $movement = Movement::where('status', '=', true)->select('id', 'name')->get();
        $movementtype = MovementType::where('status', '=', true)->select('id', 'name')->get();
        $strapcolour = StrapColour::where('status', '=', true)->select('id', 'name')->get();
        $strapmaterial = StrapMaterial::where('status', '=', true)->select('id', 'name')->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $discount = Discount::all();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
          $userSession = Session::get('id');
         $userData = GuestUser::where('id', '=', $userSession)->get();

        // dd($products_data);
        // die;

        return view('frontend.product', [
            'brand_cat' => $brand_cat,
            'gender_slug' => $gender_slug,
            'products' => $products,
            'products_data' => $products_data,
            'brands' => $brands,
            'casematerial' => $casematerial,
            'caseshape' => $caseshape,
            'casesize' => $casesize,
            'collection' => $collection,
            'dialcolour' => $dialcolour,
            'feature' => $feature,
            'gender' => $gender,
            'glassmaterial' => $glassmaterial,
            'movement' => $movement,
            'movementtype' => $movementtype,
            'strapcolour' => $strapcolour,
            'strapmaterial' => $strapmaterial,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'discount' => $discount,
            'footer_brands' => $footer_brands,
            'bannerheading' => $bannerheading,
             'usersData' =>$userData,
            'usersSession'=>$userSession,
            'seo' => $seo
        ]);
    }

    public function watchFinder(Request $request, $name, $slug){
        $brand_cat = Brand::where('status', '=', true)->get();
        $seo = SeoTag::where('page_name', '=', 'brand')->firstOrFail();
        $casematerial = CaseMaterial::where('status', '=', true)->select('id', 'name')->get();
        $caseshape = CaseShape::where('status', '=', true)->select('id', 'name')->get();
        $casesize = CaseSize::where('status', '=', true)->select('id', 'case_size')->get();
        $collection = Collection::where('status', '=', true)->select('id', 'name')->get();
        $dialcolour = DialColour::where('status', '=', true)->select('id', 'name')->get();
        $feature = Feature::where('status', '=', true)->select('id', 'name')->get();
        $gender = Gender::select('id', 'gender')->get();
        $glassmaterial = GlassMaterial::where('status', '=', true)->select('id', 'name')->get();
        $movement = Movement::where('status', '=', true)->select('id', 'name')->get();
        $movementtype = MovementType::where('status', '=', true)->select('id', 'name')->get();
        $strapcolour = StrapColour::where('status', '=', true)->select('id', 'name')->get();
        $strapmaterial = StrapMaterial::where('status', '=', true)->select('id', 'name')->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $brands = Brand::where('status', '=', true)->select('id', 'name')->get();
        $discount = Discount::all();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $brandHeading = [];
        $bannerheading = BannerHeading::where('page_name', '=', 'all')->get();
        $userSession = Session::get('id');
        $userData = GuestUser::where('id', '=', $userSession)->get();

        if($name=='material'){
            $material_slug = StrapMaterial::where('slug', '=', $slug)->firstOrFail();
            $brand_slug = [];
            $collection_slug = [];
            $feature_slug = [];
            $products_data = ProductDetail::where('status', '=', true)->where('main_category_id', '=', 1)->where('strap_material_id','=',$material_slug->id)->orderBy('price', 'asc')->paginate(12);
            $products_data->withPath(url()->current());
            if(!empty($products_data)){
                foreach($products_data as $item){
                    $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                    $discount_price = (!empty($data)) ? $data : '' ;
                    $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
                }
                // if(!empty($products_all)){
                //     $products = $this->paginate($products_all);
                // }
                // else{
                    $products = $products_all;
                // }
            }
            else{
                $products = $products_data;
            }
        }
        else if($name=='collection'){
            $collection_slug = Collection::where('slug', '=', $slug)->firstOrFail();
            $brand_slug = [];
            $material_slug = [];
            $feature_slug = [];
            $products_data = ProductDetail::where('status', '=', true)->where('main_category_id', '=', 1)->where('collection_id','=',$collection_slug->id)->orderBy('price', 'asc')->paginate(12);
            $products_data->withPath(url()->current());
            if(!empty($products_data)){
                foreach($products_data as $item){
                    $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                    $discount_price = (!empty($data)) ? $data : '' ;
                    $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
                }
                // if(!empty($products_all)){
                //     $products = $this->paginate($products_all);
                // }
                // else{
                    $products = $products_all;
                // }
            }
            else{
                $products = $products_data;
            }
        }
        else if($name=='feature'){
            $feature_slug = Feature::where('slug', '=', $slug)->firstOrFail();
            $brand_slug = [];
            $material_slug = [];
            $collection_slug = [];
            $products_data = ProductDetail::where('status', '=', true)->where('main_category_id', '=', 1)->whereRaw("find_in_set('".$feature_slug->id."',feature_id)")->orderBy('price', 'asc')->paginate(12);
            $products_data->withPath(url()->current());
            if(!empty($products_data)){
                foreach($products_data as $item){
                    $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                    $discount_price = (!empty($data)) ? $data : '' ;
                    $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
                }
                // if(!empty($products_all)){
                //     $products = $this->paginate($products_all);
                // }
                // else{
                    $products = $products_all;
                // }
            }
            else{
                $products = $products_data;
            }
        }
        else{}

        return view('frontend.brand', [
            'brand_cat' => $brand_cat,
            'brands' => $brands,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'products' => $products,
            'products_data' => $products_data,
            'feature_slug' => $feature_slug,
            'brand_slug' => $brand_slug,
            'material_slug' => $material_slug,
            'collection_slug' => $collection_slug,
            'casematerial' => $casematerial,
            'caseshape' => $caseshape,
            'casesize' => $casesize,
            'collection' => $collection,
            'dialcolour' => $dialcolour,
            'feature' => $feature,
            'gender' => $gender,
            'glassmaterial' => $glassmaterial,
            'movement' => $movement,
            'movementtype' => $movementtype,
            'strapcolour' => $strapcolour,
            'strapmaterial' => $strapmaterial,
            'discount' => $discount,
            'footer_brands' => $footer_brands,
            'brandHeading' => $brandHeading,
            'bannerheading' => $bannerheading,
             'usersData' =>$userData,
            'usersSession'=>$userSession,
            'seo' => $seo
        ]);
    } 

    public function brandSearch(Request $request){
        $brand_cat = Brand::where('status', '=', true)->get();
        // $bannerheading = BannerHeading::where('page_name', '=', 'brand')->get();
        $seo = SeoTag::where('page_name', '=', 'brand')->firstOrFail();
        $q = Input::get('q');
        $slug_data = Input::get('brand_cat');
        if($q != "" && $slug_data != "")
        {
            $brandHeading = Brand::where('id', '=', $slug_data)->firstOrFail();
            $bannerheading = [];
            $products_data = ProductDetail::where('model_no', 'LIKE', '%' . $q . '%')
                                ->where('main_category_id', '=', 1)
                                ->orwhere('id', 'LIKE', '%' . $q . '%')
                                ->orwhere('price', 'LIKE', '%' . $q . '%')
                                ->orwhere('series', 'LIKE', '%' . $q . '%')
                                ->where('brand_id','=',$slug_data)
                                ->orderBy('price', 'asc')
                                ->paginate(12);
            $products_data->withPath(url()->current()."?q=".$q."&brand_cat=".$slug_data);
            if(!empty($products_data)){
                $products_all = [];
                foreach($products_data as $item){
                    $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                    $discount_price = (!empty($data)) ? $data : '' ;
                    $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
                }
                $products = $products_all;
            }
            else{
                $products = $products_data;
            }
        }
        else{
            $brandHeading = [];
            $bannerheading = BannerHeading::where('page_name', '=', 'all')->get();
            $products_data = ProductDetail::where('model_no', 'LIKE', '%' . $q . '%')
                                ->where('main_category_id', '=', 1)
                                ->orwhere('id', 'LIKE', '%' . $q . '%')
                                ->orwhere('price', 'LIKE', '%' . $q . '%')
                                ->orwhere('series', 'LIKE', '%' . $q . '%')
                                ->orderBy('price', 'asc')
                                ->paginate(12);
            $products_data->withPath(url()->current()."?q=".$q."&brand_cat=");
            if(!empty($products_data)){
                $products_all = [];
                foreach($products_data as $item){
                    $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                    $discount_price = (!empty($data)) ? $data : '' ;
                    $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
                }
                $products = $products_all;
            }
            else{
                $products = $products_data;
            }
        }
        $casematerial = CaseMaterial::where('status', '=', true)->select('id', 'name')->get();
        $caseshape = CaseShape::where('status', '=', true)->select('id', 'name')->get();
        $casesize = CaseSize::where('status', '=', true)->select('id', 'case_size')->get();
        $collection = Collection::where('status', '=', true)->select('id', 'name')->get();
        $dialcolour = DialColour::where('status', '=', true)->select('id', 'name')->get();
        $feature = Feature::where('status', '=', true)->select('id', 'name')->get();
        $gender = Gender::select('id', 'gender')->get();
        $glassmaterial = GlassMaterial::where('status', '=', true)->select('id', 'name')->get();
        $movement = Movement::where('status', '=', true)->select('id', 'name')->get();
        $movementtype = MovementType::where('status', '=', true)->select('id', 'name')->get();
        $strapcolour = StrapColour::where('status', '=', true)->select('id', 'name')->get();
        $strapmaterial = StrapMaterial::where('status', '=', true)->select('id', 'name')->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $brands = Brand::where('status', '=', true)->select('id', 'name')->get();
        $discount = Discount::all();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $brands = Brand::where('status', '=', true)->select('id', 'name')->get();
          $userSession = Session::get('id');
         $userData = GuestUser::where('id', '=', $userSession)->get();

        return view('frontend.brand', [
            'brand_cat' => $brand_cat,
            'brands' => $brands,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'products' => $products,
            'products_data' => $products_data,
            'casematerial' => $casematerial,
            'caseshape' => $caseshape,
            'casesize' => $casesize,
            'collection' => $collection,
            'dialcolour' => $dialcolour,
            'feature' => $feature,
            'gender' => $gender,
            'glassmaterial' => $glassmaterial,
            'movement' => $movement,
            'movementtype' => $movementtype,
            'strapcolour' => $strapcolour,
            'strapmaterial' => $strapmaterial,
            'discount' => $discount,
            'footer_brands' => $footer_brands,
            'brandHeading' => $brandHeading,
            'bannerheading' => $bannerheading,
             'usersData' =>$userData,
            'usersSession'=>$userSession,
            'seo' => $seo
        ]);
    }

    public function brand(Request $request, $slug){
        $brand_cat = Brand::where('status', '=', true)->get();
        $brand_slug = Brand::where('slug', '=', $slug)->firstOrFail();
        $seo = SeoTag::where('page_name', '=', 'brand')->firstOrFail();
        $casematerial = CaseMaterial::where('status', '=', true)->select('id', 'name')->get();
        $caseshape = CaseShape::where('status', '=', true)->select('id', 'name')->get();
        $casesize = CaseSize::where('status', '=', true)->select('id', 'case_size')->get();
        $collection = Collection::where('status', '=', true)->select('id', 'name')->get();
        $dialcolour = DialColour::where('status', '=', true)->select('id', 'name')->get();
        $feature = Feature::where('status', '=', true)->select('id', 'name')->get();
        $gender = Gender::select('id', 'gender')->get();
        $glassmaterial = GlassMaterial::where('status', '=', true)->select('id', 'name')->get();
        $movement = Movement::where('status', '=', true)->select('id', 'name')->get();
        $movementtype = MovementType::where('status', '=', true)->select('id', 'name')->get();
        $strapcolour = StrapColour::where('status', '=', true)->select('id', 'name')->get();
        $strapmaterial = StrapMaterial::where('status', '=', true)->select('id', 'name')->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $brands = Brand::where('status', '=', true)->select('id', 'name')->get();
        $discount = Discount::all();
        $bannerheading = [];
        $brandHeading = Brand::where('slug', '=', $slug)->firstOrFail();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
  $userSession = Session::get('id');
         $userData = GuestUser::where('id', '=', $userSession)->get();

        $products_data = ProductDetail::where('status', '=', true)->where('main_category_id', '=', 1)->where('brand_id','=',$brand_slug->id)->orderBy('price', 'asc')->paginate(12);
        $products_data->withPath(url()->current());
            if(!empty($products_data)){
                foreach($products_data as $item){
                    $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                    $discount_price = (!empty($data)) ? $data : '' ;
                    $products_all[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
                }
                $products = $products_all;
            }
            else{
                $products = $products_data;
            }

        return view('frontend.brand', [
            'brand_cat' => $brand_cat,
            'brands' => $brands,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'products_data' => $products_data,
            'products' => $products,
            'brand_slug' => $brand_slug,
            'casematerial' => $casematerial,
            'caseshape' => $caseshape,
            'casesize' => $casesize,
            'collection' => $collection,
            'dialcolour' => $dialcolour,
            'feature' => $feature,
            'gender' => $gender,
            'glassmaterial' => $glassmaterial,
            'movement' => $movement,
            'movementtype' => $movementtype,
            'strapcolour' => $strapcolour,
            'strapmaterial' => $strapmaterial,
            'discount' => $discount,
            'footer_brands' => $footer_brands,
            'brandHeading' => $brandHeading,
            'bannerheading' => $bannerheading,
             'usersData' =>$userData,
            'usersSession'=>$userSession,
            'seo' => $seo
        ]);
    }

    public function getBrand(Request $request){
        $products = ProductDetail::where('status', '=', true)->where('main_category_id', '=', 1)->where('brand_id','=',$request->id)->select('id','model_no','price','images')->get();

        return $products;
    }

    public function accfilters(Request $request){
        $product_list = $this->accfilters_data($request);

        if(!empty($product_list)){
            foreach($product_list as $item){
                $data = $this->discount_price($item->product_id,$item->brand_id,$item->price,$item->gender_id);
                $discount_price = (!empty($data)) ? $data : '' ;
                $products_all[] = ['product_id'=>$item->product_id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
            }
            if(!empty($products_all)){
                $products = $products_all;
            }
            else{
                $products = [];
            }
        }
        else{
            $products = [];
        }
        // $discount = Discount::all();
        // $movement_type_group_by_data = ['movement_types' => $this->accfilters_group($request,'movement_type_id','movement_types.id','movement_types.name')];
        // $brand_group_by_data = ['brands' => $this->accfilters_group($request,'brand_id','brands.id','brands.name')];
        // $gender_group_by_data = ['genders' => $this->accfilters_group($request,'gender_id','genders.id','genders.gender')];

        return [
            $products,
            $product_list
            // $movement_type_group_by_data,
            // $gender_group_by_data,
            // $brand_group_by_data
        ];

    }

    public function filters(Request $request){
        $product_list = $this->filters_data($request);

        if(!empty($product_list)){
            foreach($product_list as $item){
                $data = $this->discount_price($item->product_id,$item->brand_id,$item->price,$item->gender_id);
                $discount_price = (!empty($data)) ? $data : '' ;
                $products_all[] = ['product_id'=>$item->product_id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
            }
            if(!empty($products_all)){
                $products = $products_all;
            }
            else{
                $products = [];
            }
        }
        else{
            $products = [];
        }
        // $pageList = $product_list->onEachSide(1)->links();
        $movement_group_by_data = ['movements' => $this->filters_group($request,'movement_id','movements.id','movements.name')];
        $collection_group_by_data = ['collections' => $this->filters_group($request,'collection_id','collections.id','collections.name')];
        $movement_type_group_by_data = ['movement_types' => $this->filters_group($request,'movement_type_id','movement_types.id','movement_types.name')];
        $case_size_group_by_data = ['case_sizes' => $this->filters_group($request,'case_size_id','case_sizes.id','case_sizes.case_size')];
        $case_shape_group_by_data = ['case_shapes' => $this->filters_group($request,'case_shape_id','case_shapes.id','case_shapes.name')];
        $case_material_group_by_data = ['case_materials' => $this->filters_group($request,'case_material_id','case_materials.id','case_materials.name')];
        $glass_material_group_by_data = ['glass_materials' => $this->filters_group($request,'glass_material_id','glass_materials.id','glass_materials.name')];
        $dial_colour_group_by_data = ['dial_colours' => $this->filters_group($request,'dial_colour_id','dial_colours.id','dial_colours.name')];
        $strap_material_group_by_data = ['strap_materials' => $this->filters_group($request,'strap_material_id','strap_materials.id','strap_materials.name')];
        $strap_colour_group_by_data = ['strap_colours' => $this->filters_group($request,'strap_colour_id','strap_colours.id','strap_colours.name')];
        $feature_group_by_data = ['features' => $this->filters_group($request,'feature_id','features.id','features.name')];
        // $brand_group_by_data = ['brands' => $this->filters_group($request,'brand_id','brands.id','brands.name')];
        // $gender_group_by_data = ['genders' => $this->filters_group($request,'gender_id','genders.id','genders.gender')];
        // $brands = Brand::where('status', '=', true)->select('id', 'name')->get();
        // $brand_cat = Brand::where('status', '=', true)->get();
        // $collection = Collection::where('status', '=', true)->select('id', 'name')->get();
        // $gender = Gender::select('id', 'gender', 'slug')->get();
        // $strapmaterial = StrapMaterial::where('status', '=', true)->select('id', 'name')->get();
        // $feature_cat = Feature::where('status', '=', true)->get();
        // $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        // $seo = SeoTag::where('page_name', '=', 'product')->firstOrFail();


        return [
            $products,
            $product_list,
            $movement_group_by_data,
            $collection_group_by_data,
            $movement_type_group_by_data,
            $case_size_group_by_data,
            $case_shape_group_by_data,
            $case_material_group_by_data,
            $glass_material_group_by_data,
            $dial_colour_group_by_data,
            $strap_material_group_by_data,
            $strap_colour_group_by_data,
            $feature_group_by_data
        ];
    }

    public function sale_filters(Request $request){
        $product_list = $this->sale_filters_data($request);

        if(!empty($product_list)){
            foreach($product_list as $item){
                $data = $this->discount_price($item->product_id,$item->brand_id,$item->price,$item->gender_id);
                $discount_price = (!empty($data)) ? $data : '' ;
                $products_all[] = ['product_id'=>$item->product_id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_price];
            }
            if(!empty($products_all)){
                $products = $products_all;
            }
            else{
                $products = [];
            }
        }
        else{
            $products = [];
        }
        $movement_group_by_data = ['movements' => $this->sale_filters_group($request,'movement_id','movements.id','movements.name')];
        $collection_group_by_data = ['collections' => $this->sale_filters_group($request,'collection_id','collections.id','collections.name')];
        $movement_type_group_by_data = ['movement_types' => $this->sale_filters_group($request,'movement_type_id','movement_types.id','movement_types.name')];
        $case_size_group_by_data = ['case_sizes' => $this->sale_filters_group($request,'case_size_id','case_sizes.id','case_sizes.case_size')];
        $case_shape_group_by_data = ['case_shapes' => $this->sale_filters_group($request,'case_shape_id','case_shapes.id','case_shapes.name')];
        $case_material_group_by_data = ['case_materials' => $this->sale_filters_group($request,'case_material_id','case_materials.id','case_materials.name')];
        $glass_material_group_by_data = ['glass_materials' => $this->sale_filters_group($request,'glass_material_id','glass_materials.id','glass_materials.name')];
        $dial_colour_group_by_data = ['dial_colours' => $this->sale_filters_group($request,'dial_colour_id','dial_colours.id','dial_colours.name')];
        $strap_material_group_by_data = ['strap_materials' => $this->sale_filters_group($request,'strap_material_id','strap_materials.id','strap_materials.name')];
        $strap_colour_group_by_data = ['strap_colours' => $this->sale_filters_group($request,'strap_colour_id','strap_colours.id','strap_colours.name')];
        $feature_group_by_data = ['features' => $this->sale_filters_group($request,'feature_id','features.id','features.name')];
        // $brand_group_by_data = ['brands' => $this->sale_filters_group($request,'brand_id','brands.id','brands.name')];
        // $gender_group_by_data = ['genders' => $this->sale_filters_group($request,'gender_id','genders.id','genders.gender')];

        return [
            $products,
            $product_list,
            $movement_group_by_data,
            $collection_group_by_data,
            $movement_type_group_by_data,
            $case_size_group_by_data,
            $case_shape_group_by_data,
            $case_material_group_by_data,
            $glass_material_group_by_data,
            $dial_colour_group_by_data,
            $strap_material_group_by_data,
            $strap_colour_group_by_data,
            $feature_group_by_data
        ];

            // $gender_group_by_data,
            // $brand_group_by_data,
    }

    public function productDetail($id){
        $brand_cat = Brand::where('status', '=', true)->get();
        $product = ProductDetail::where('id','=',$id)->firstOrFail();
        $feature_id = Feature::whereIN('id',explode(',',$product->feature_id))->get();
        $featured_data = ProductDetail::where('status', '=', true)->where('featured_status', '=', true)->where('id','!=',$id)->orderBy('price', 'asc')->limit(6)->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $discount = Discount::all();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
          $userSession = Session::get('id');
         $userData = GuestUser::where('id', '=', $userSession)->get();

        $discount_price = $this->discount_price($product->id,$product->brand_id,$product->price,$product->gender_id);

        if(count($featured_data)>0){
            foreach($featured_data as $item){
                $data = $this->discount_price($item->id,$item->brand_id,$item->price,$item->gender_id);
                $discount_rate = (!empty($data)) ? $data : '' ;
                $featured[] = ['id'=>$item->id,'model_no'=>$item->model_no,'price'=>$item->price,'thumb_img'=>$item->thumb_img,'discount_price'=>$discount_rate,'brand_id'=>$item->brand_id];
            }
        }
        else{
            $featured = $featured_data;
        }

        return view('frontend.product-detail', [
            'brand_cat' => $brand_cat,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'feature_id' => $feature_id,
            'featured' => $featured,
            'discount' => $discount,
            'footer_brands' => $footer_brands,
            'discount_price' => $discount_price,
             'usersData' =>$userData,
            'usersSession'=>$userSession,
            'product' => $product
        ]);
    }

    public function sale(){
        $brand_cat = Brand::where('status', '=', true)->get();
        $seo = SeoTag::where('page_name', '=', 'product')->firstOrFail();
        $discount = Discount::all();
        $brands = Brand::where('status', '=', true)->select('id', 'name')->get();
        $casematerial = CaseMaterial::where('status', '=', true)->select('id', 'name')->get();
        $caseshape = CaseShape::where('status', '=', true)->select('id', 'name')->get();
        $casesize = CaseSize::where('status', '=', true)->select('id', 'case_size')->get();
        $collection = Collection::where('status', '=', true)->select('id', 'name')->get();
        $dialcolour = DialColour::where('status', '=', true)->select('id', 'name')->get();
        $feature = Feature::where('status', '=', true)->select('id', 'name')->get();
        $gender = Gender::select('id', 'gender')->get();
        $glassmaterial = GlassMaterial::where('status', '=', true)->select('id', 'name')->get();
        $movement = Movement::where('status', '=', true)->select('id', 'name')->get();
        $movementtype = MovementType::where('status', '=', true)->select('id', 'name')->get();
        $strapcolour = StrapColour::where('status', '=', true)->select('id', 'name')->get();
        $strapmaterial = StrapMaterial::where('status', '=', true)->select('id', 'name')->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $bannerheading = BannerHeading::where('page_name', '=', 'sale')->get();

        $products = $this->discount_find_out();
        if(!empty($products)){
            $products;
        }
        else{
            $products = [];
        }

        return view('frontend.sale', [
            'brand_cat' => $brand_cat,
            'products' => $products,
            'brands' => $brands,
            'casematerial' => $casematerial,
            'caseshape' => $caseshape,
            'casesize' => $casesize,
            'collection' => $collection,
            'dialcolour' => $dialcolour,
            'feature' => $feature,
            'gender' => $gender,
            'glassmaterial' => $glassmaterial,
            'movement' => $movement,
            'movementtype' => $movementtype,
            'strapcolour' => $strapcolour,
            'strapmaterial' => $strapmaterial,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'discount' => $discount,
            'footer_brands' => $footer_brands,
            'bannerheading' => $bannerheading,
            'seo' => $seo
        ]);
    }

    public function blog(){
        $brand_cat = Brand::where('status', '=', true)->get();
        $blogs = Blog::where('status', '=', true)->latest()->paginate(5);
        $latests = Blog::where('status', '=', true)->latest()->limit(5)->get();
        $seo = SeoTag::where('page_name', '=', 'blog')->firstOrFail();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();

        return view('frontend.blog', [
            'brand_cat' => $brand_cat,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'blogs' => $blogs,
            'latests' => $latests,
            'footer_brands' => $footer_brands,
            'seo' => $seo
        ]);
    }

    public function blogDetail($slug){
        $blog = Blog::where('slug', '=', $slug)->firstOrFail();
        $latests = Blog::where('status', '=', true)->where('slug', '!=', $slug)->latest()->limit(5)->get();
        $brand_cat = Brand::where('status', '=', true)->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();

        return view('frontend.blog-view', [
            'blog' => $blog,
            'brand_cat' => $brand_cat,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'latests' => $latests
        ]);
    }

    public function contact(){
        $seo = SeoTag::where('page_name', '=', 'contact')->firstOrFail();
        $brand_cat = Brand::where('status', '=', true)->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $bannerheading = BannerHeading::where('page_name', '=', 'contact')->get();
         $userSession = Session::get('id');
         $userData = GuestUser::where('id', '=', $userSession)->get();
     


        return view('frontend.contact', [
            'brand_cat' => $brand_cat,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands,
            'bannerheading' => $bannerheading,
             'usersData' =>$userData,
             'usersSession'=>$userSession,
            'seo' => $seo
        ]);
    }

    public function filters_data(Request $request){
        $brands = $request->brands;
        $casematerial = $request->casematerial;
        $caseshape = $request->caseshape;
        $casesize = $request->casesize;
        $collection = $request->collection;
        $dialcolour = $request->dialcolour;
        $feature = $request->feature;//implode(',',$request->feature);
        $gender = $request->gender;
        $glassmaterial = $request->glassmaterial;
        $movement = $request->movement;
        $movementtype = $request->movementtype;
        $strapcolour = $request->strapcolour;
        $strapmaterial = $request->strapmaterial;
        $price = $request->price;//explode('-',$request->price);

        $respo = DB::table('product_details')
        ->select(
            'product_details.id as product_id',
            'product_details.model_no',
            'product_details.price',
            'product_details.thumb_img',
            'product_details.gender_id',
            'product_details.brand_id'
        )
        // ->join('brands', 'product_details.brand_id', '=', 'brands.id')
        // ->join('collections', 'product_details.collection_id', '=', 'collections.id')
        // ->join('movements', 'product_details.movement_id', '=', 'movements.id')
        // ->join('movement_types', 'product_details.movement_type_id', '=', 'movement_types.id')
        // ->join('case_sizes', 'product_details.case_size_id', '=', 'case_sizes.id')
        // ->join('case_shapes', 'product_details.case_shape_id', '=', 'case_shapes.id')
        // ->join('case_materials', 'product_details.case_material_id', '=', 'case_materials.id')
        // ->join('glass_materials', 'product_details.glass_material_id', '=', 'glass_materials.id')
        // ->join('dial_colours', 'product_details.dial_colour_id', '=', 'dial_colours.id')
        // ->join('strap_materials', 'product_details.strap_material_id', '=', 'strap_materials.id')
        // ->join('strap_colours', 'product_details.strap_colour_id', '=', 'strap_colours.id')
        // ->join('genders', 'product_details.gender_id', '=', 'genders.id')
        // ->join('features', 'product_details.feature_id', '=', 'features.id')
        ->where('product_details.status','=', 1)
        ->where('product_details.main_category_id', '=', 1)
        ->where(function($query) use ($brands) {
            if(is_array($brands)){
                return $query->whereIn('product_details.brand_id', (array)$brands);
            }
        })
        ->where(function($query) use ($collection) {
            if(is_array($collection)){
                return $query->whereIn('product_details.collection_id', (array)$collection);
            }
        })
        ->where(function($query) use ($movement) {
            if(is_array($movement)){
                return $query->whereIn('product_details.movement_id', (array)$movement);
            }
        })
        ->where(function($query) use ($movementtype) {
            if(is_array($movementtype)){
                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
            }
        })
        ->where(function($query) use ($casesize) {
            if(is_array($casesize)){
                return $query->whereIn('product_details.case_size_id', (array)$casesize);
            }
        })
        ->where(function($query) use ($caseshape) {
            if(is_array($caseshape)){
                return $query->whereIn('product_details.case_shape_id', (array)$caseshape);
            }
        })
        ->where(function($query) use ($casematerial) {
            if(is_array($casematerial)){
                return $query->whereIn('product_details.case_material_id', (array)$casematerial);
            }
        })
        ->where(function($query) use ($dialcolour) {
            if(is_array($dialcolour)){
                return $query->whereIn('product_details.dial_colour_id', (array)$dialcolour);
            }
        })
        ->where(function($query) use ($strapmaterial) {
            if(is_array($strapmaterial)){
                return $query->whereIn('product_details.strap_material_id', (array)$strapmaterial);
            }
        })
        ->where(function($query) use ($strapcolour) {
            if(is_array($strapcolour)){
                return $query->whereIn('product_details.strap_colour_id', (array)$strapcolour);
            }
        })
        ->where(function($query) use ($glassmaterial) {
            if(is_array($glassmaterial)){
                return $query->whereIn('product_details.glass_material_id', (array)$glassmaterial);
            }
        })
        ->where(function($query) use ($gender) {
            if(is_array($gender)){
                return $query->whereIn('product_details.gender_id', (array)$gender);
            }
        })
        ->where(function($query) use ($feature) {
            if(is_array($feature)){
                foreach($feature as $f){
                    return $query->whereRaw("find_in_set('".$f."',product_details.feature_id)");
                }
            }
        })
        ->where(function($query) use ($price) {
            if(is_array($price)){
                return $query->whereBetween('product_details.price', (array)$price);
            }
        })
        ->orderBy('price', 'asc')
        ->paginate(12);
        // $respo->appends($request);
        // ->get();
        return $respo;
    }

    public function filters_group(Request $request,$group_by_column=NULL,$group_id,$group_name){
        $brands = $request->brands;
        $casematerial = $request->casematerial;
        $caseshape = $request->caseshape;
        $casesize = $request->casesize;
        $collection = $request->collection;
        $dialcolour = $request->dialcolour;
        $feature = $request->feature;//implode(',',$request->feature);
        $gender = $request->gender;
        $glassmaterial = $request->glassmaterial;
        $movement = $request->movement;
        $movementtype = $request->movementtype;
        $strapcolour = $request->strapcolour;
        $strapmaterial = $request->strapmaterial;
        $price = $request->price;//explode('-',$request->price);

        $respo = DB::table('product_details')
        ->select('product_details.id as product_id',$group_id,$group_name)
        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
        ->join('collections', 'product_details.collection_id', '=', 'collections.id')
        ->join('movements', 'product_details.movement_id', '=', 'movements.id')
        ->join('movement_types', 'product_details.movement_type_id', '=', 'movement_types.id')
        ->join('case_sizes', 'product_details.case_size_id', '=', 'case_sizes.id')
        ->join('case_shapes', 'product_details.case_shape_id', '=', 'case_shapes.id')
        ->join('case_materials', 'product_details.case_material_id', '=', 'case_materials.id')
        ->join('glass_materials', 'product_details.glass_material_id', '=', 'glass_materials.id')
        ->join('dial_colours', 'product_details.dial_colour_id', '=', 'dial_colours.id')
        ->join('strap_materials', 'product_details.strap_material_id', '=', 'strap_materials.id')
        ->join('strap_colours', 'product_details.strap_colour_id', '=', 'strap_colours.id')
        ->join('genders', 'product_details.gender_id', '=', 'genders.id')
        ->join('features', 'product_details.feature_id', '=', 'features.id')
        ->where('product_details.status','=', 1)
        ->where('product_details.main_category_id', '=', 1)
        ->where(function($query) use ($brands) {
            if(is_array($brands)){
                return $query->whereIn('product_details.brand_id', (array)$brands);
            }
        })
        ->where(function($query) use ($collection) {
            if(is_array($collection)){
                return $query->whereIn('product_details.collection_id', (array)$collection);
            }
        })
        ->where(function($query) use ($movement) {
            if(is_array($movement)){
                return $query->whereIn('product_details.movement_id', (array)$movement);
            }
        })
        ->where(function($query) use ($movementtype) {
            if(is_array($movementtype)){
                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
            }
        })
        ->where(function($query) use ($casesize) {
            if(is_array($casesize)){
                return $query->whereIn('product_details.case_size_id', (array)$casesize);
            }
        })
        ->where(function($query) use ($caseshape) {
            if(is_array($caseshape)){
                return $query->whereIn('product_details.case_shape_id', (array)$caseshape);
            }
        })
        ->where(function($query) use ($casematerial) {
            if(is_array($casematerial)){
                return $query->whereIn('product_details.case_material_id', (array)$casematerial);
            }
        })
        ->where(function($query) use ($dialcolour) {
            if(is_array($dialcolour)){
                return $query->whereIn('product_details.dial_colour_id', (array)$dialcolour);
            }
        })
        ->where(function($query) use ($strapmaterial) {
            if(is_array($strapmaterial)){
                return $query->whereIn('product_details.strap_material_id', (array)$strapmaterial);
            }
        })
        ->where(function($query) use ($strapcolour) {
            if(is_array($strapcolour)){
                return $query->whereIn('product_details.strap_colour_id', (array)$strapcolour);
            }
        })
        ->where(function($query) use ($glassmaterial) {
            if(is_array($glassmaterial)){
                return $query->whereIn('product_details.glass_material_id', (array)$glassmaterial);
            }
        })
        ->where(function($query) use ($gender) {
            if(is_array($gender)){
                return $query->whereIn('product_details.gender_id', (array)$gender);
            }
        })
        ->where(function($query) use ($feature) {
            if(is_array($feature)){
                foreach($feature as $f){
                    return $query->whereRaw("find_in_set('".$f."',product_details.feature_id)");
                }
            }
        })
        ->where(function($query) use ($price) {
            if(is_array($price)){
                return $query->whereBetween('product_details.price', (array)$price);
            }
        })
        ->groupBy($group_by_column)
        ->get();
        return $respo;
    }

    public function accfilters_data(Request $request){
        $brands = $request->brands;
        // $casematerial = $request->casematerial;
        // $caseshape = $request->caseshape;
        // $casesize = $request->casesize;
        // $collection = $request->collection;
        // $dialcolour = $request->dialcolour;
        // $feature = $request->feature;//implode(',',$request->feature);
        $gender = $request->gender;
        // $glassmaterial = $request->glassmaterial;
        // $movement = $request->movement;
        $movementtype = $request->movementtype;
        // $strapcolour = $request->strapcolour;
        // $strapmaterial = $request->strapmaterial;
        $price = $request->price;//explode('-',$request->price);
        $category = $request->category;

        $respo = DB::table('product_details')
        ->select(
            'product_details.id as product_id',
            'product_details.model_no',
            'product_details.price',
            'product_details.thumb_img',
            'product_details.gender_id',
            'product_details.brand_id'
        )
        ->where('product_details.status','=', 1)
        ->where(function($query) use ($category) {
            if(empty($category)){
                return $query->where('product_details.main_category_id', '!=', 1);
            }
            else{
                return $query->where('product_details.main_category_id', '=', $category);
            }
        })
        ->where(function($query) use ($brands) {
            if(is_array($brands)){
                return $query->whereIn('product_details.brand_id', (array)$brands);
            }
        })
        ->where(function($query) use ($movementtype) {
            if(is_array($movementtype)){
                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
            }
        })
        ->where(function($query) use ($gender) {
            if(is_array($gender)){
                return $query->whereIn('product_details.gender_id', (array)$gender);
            }
        })
        ->where(function($query) use ($price) {
            if(is_array($price)){
                return $query->whereBetween('product_details.price', (array)$price);
            }
        })
        ->orderBy('price', 'asc')
        ->paginate(12);
        // $respo->appends($request);
        // ->get();
        return $respo;
    }

    public function accfilters_group(Request $request,$group_by_column=NULL,$group_id,$group_name){
        $brands = $request->brands;
        // $casematerial = $request->casematerial;
        // $caseshape = $request->caseshape;
        // $casesize = $request->casesize;
        // $collection = $request->collection;
        // $dialcolour = $request->dialcolour;
        // $feature = $request->feature;//implode(',',$request->feature);
        $gender = $request->gender;
        // $glassmaterial = $request->glassmaterial;
        // $movement = $request->movement;
        $movementtype = $request->movementtype;
        // $strapcolour = $request->strapcolour;
        // $strapmaterial = $request->strapmaterial;
        $price = $request->price;//explode('-',$request->price);
        $category = $request->category;

        $respo = DB::table('product_details')
        ->select('product_details.id as product_id',$group_id,$group_name)
        ->where('product_details.status','=', 1)
        ->where(function($query) use ($brands) {
            if(is_array($brands)){
                return $query->whereIn('product_details.brand_id', (array)$brands);
            }
        })
        ->where(function($query) use ($category) {
            if(empty($category)){
                return $query->where('product_details.main_category_id', '!=', 1);
            }
            else{
                return $query->where('product_details.main_category_id', '=', $category);
            }
        })
        ->where(function($query) use ($movementtype) {
            if(is_array($movementtype)){
                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
            }
        })
        ->where(function($query) use ($gender) {
            if(is_array($gender)){
                return $query->whereIn('product_details.gender_id', (array)$gender);
            }
        })
        ->where(function($query) use ($price) {
            if(is_array($price)){
                return $query->whereBetween('product_details.price', (array)$price);
            }
        })
        ->groupBy($group_by_column)
        ->get();
        return $respo;
    }

    public function sale_filters_data(Request $request){
        $brands = $request->brands;
        $casematerial = $request->casematerial;
        $caseshape = $request->caseshape;
        $casesize = $request->casesize;
        $collection = $request->collection;
        $dialcolour = $request->dialcolour;
        $feature = $request->feature;//implode(',',$request->feature);
        $gender = $request->gender;
        $glassmaterial = $request->glassmaterial;
        $movement = $request->movement;
        $movementtype = $request->movementtype;
        $strapcolour = $request->strapcolour;
        $strapmaterial = $request->strapmaterial;
        $price = $request->price;//explode('-',$request->price);
        $discount = Discount::all();



        foreach ($discount as $disc){
            if ($disc->discount_activation_date <= date('Y-m-d') && $disc->discount_expiry_date >= date('Y-m-d') && $disc->discount_by == 'Brand'){
                    if ($disc->product_by == 'Selected'){

                        $pro_ids = $disc->product_ids;
                        $pro_ids = explode(',',$pro_ids);

                        $brand_ids = $disc->brand_id;
                        $brand_ids = explode(',',$brand_ids);

                        $products = DB::table('product_details')
                        ->select('product_details.id as product_id', 'product_details.model_no', 'product_details.price', 'product_details.thumb_img', 'product_details.gender_id', 'product_details.brand_id')
                        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
                        ->join('collections', 'product_details.collection_id', '=', 'collections.id')
                        ->join('movements', 'product_details.movement_id', '=', 'movements.id')
                        ->join('movement_types', 'product_details.movement_type_id', '=', 'movement_types.id')
                        ->join('case_sizes', 'product_details.case_size_id', '=', 'case_sizes.id')
                        ->join('case_shapes', 'product_details.case_shape_id', '=', 'case_shapes.id')
                        ->join('case_materials', 'product_details.case_material_id', '=', 'case_materials.id')
                        ->join('glass_materials', 'product_details.glass_material_id', '=', 'glass_materials.id')
                        ->join('dial_colours', 'product_details.dial_colour_id', '=', 'dial_colours.id')
                        ->join('strap_materials', 'product_details.strap_material_id', '=', 'strap_materials.id')
                        ->join('strap_colours', 'product_details.strap_colour_id', '=', 'strap_colours.id')
                        ->join('genders', 'product_details.gender_id', '=', 'genders.id')
                        ->join('features', 'product_details.feature_id', '=', 'features.id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($pro_ids) {
                            if(is_array($pro_ids)){
                                return $query->whereIn('product_details.id', (array)$pro_ids);
                            }
                        })
                        ->where(function($query) use ($brand_ids) {
                            if(is_array($brand_ids)){
                                return $query->whereIn('product_details.brand_id', (array)$brand_ids);
                            }
                        })
                        ->where(function($query) use ($brands) {
                            if(is_array($brands)){
                                return $query->whereIn('product_details.brand_id', (array)$brands);
                            }
                        })
                        ->where(function($query) use ($collection) {
                            if(is_array($collection)){
                                return $query->whereIn('product_details.collection_id', (array)$collection);
                            }
                        })
                        ->where(function($query) use ($movement) {
                            if(is_array($movement)){
                                return $query->whereIn('product_details.movement_id', (array)$movement);
                            }
                        })
                        ->where(function($query) use ($movementtype) {
                            if(is_array($movementtype)){
                                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
                            }
                        })
                        ->where(function($query) use ($casesize) {
                            if(is_array($casesize)){
                                return $query->whereIn('product_details.case_size_id', (array)$casesize);
                            }
                        })
                        ->where(function($query) use ($caseshape) {
                            if(is_array($caseshape)){
                                return $query->whereIn('product_details.case_shape_id', (array)$caseshape);
                            }
                        })
                        ->where(function($query) use ($casematerial) {
                            if(is_array($casematerial)){
                                return $query->whereIn('product_details.case_material_id', (array)$casematerial);
                            }
                        })
                        ->where(function($query) use ($dialcolour) {
                            if(is_array($dialcolour)){
                                return $query->whereIn('product_details.dial_colour_id', (array)$dialcolour);
                            }
                        })
                        ->where(function($query) use ($strapmaterial) {
                            if(is_array($strapmaterial)){
                                return $query->whereIn('product_details.strap_material_id', (array)$strapmaterial);
                            }
                        })
                        ->where(function($query) use ($strapcolour) {
                            if(is_array($strapcolour)){
                                return $query->whereIn('product_details.strap_colour_id', (array)$strapcolour);
                            }
                        })
                        ->where(function($query) use ($glassmaterial) {
                            if(is_array($glassmaterial)){
                                return $query->whereIn('product_details.glass_material_id', (array)$glassmaterial);
                            }
                        })
                        ->where(function($query) use ($gender) {
                            if(is_array($gender)){
                                return $query->whereIn('product_details.gender_id', (array)$gender);
                            }
                        })
                        ->where(function($query) use ($feature) {
                            if(is_array($feature)){
                                foreach($feature as $f){
                                    return $query->whereRaw("find_in_set('".$f."',product_details.feature_id)");
                                }
                            }
                        })
                        ->where(function($query) use ($price) {
                            if(is_array($price)){
                                return $query->whereBetween('product_details.price', (array)$price);
                            }
                        })
                        ->orderBy('price', 'asc')
                        ->paginate(12);
                        // ->get();
                    }
                    elseif ($disc->product_by == 'ALL'){

                        $brand_ids = $disc->brand_id;
                        $brand_ids = explode(',',$brand_ids);

                        $products = DB::table('product_details')
                        ->select('product_details.id as product_id', 'product_details.model_no', 'product_details.price', 'product_details.thumb_img', 'product_details.gender_id', 'product_details.brand_id')
                        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
                        ->join('collections', 'product_details.collection_id', '=', 'collections.id')
                        ->join('movements', 'product_details.movement_id', '=', 'movements.id')
                        ->join('movement_types', 'product_details.movement_type_id', '=', 'movement_types.id')
                        ->join('case_sizes', 'product_details.case_size_id', '=', 'case_sizes.id')
                        ->join('case_shapes', 'product_details.case_shape_id', '=', 'case_shapes.id')
                        ->join('case_materials', 'product_details.case_material_id', '=', 'case_materials.id')
                        ->join('glass_materials', 'product_details.glass_material_id', '=', 'glass_materials.id')
                        ->join('dial_colours', 'product_details.dial_colour_id', '=', 'dial_colours.id')
                        ->join('strap_materials', 'product_details.strap_material_id', '=', 'strap_materials.id')
                        ->join('strap_colours', 'product_details.strap_colour_id', '=', 'strap_colours.id')
                        ->join('genders', 'product_details.gender_id', '=', 'genders.id')
                        ->join('features', 'product_details.feature_id', '=', 'features.id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($brand_ids) {
                            if(is_array($brand_ids)){
                                return $query->whereIn('product_details.brand_id', (array)$brand_ids);
                            }
                        })
                        ->where(function($query) use ($brands) {
                            if(is_array($brands)){
                                return $query->whereIn('product_details.brand_id', (array)$brands);
                            }
                        })
                        ->where(function($query) use ($collection) {
                            if(is_array($collection)){
                                return $query->whereIn('product_details.collection_id', (array)$collection);
                            }
                        })
                        ->where(function($query) use ($movement) {
                            if(is_array($movement)){
                                return $query->whereIn('product_details.movement_id', (array)$movement);
                            }
                        })
                        ->where(function($query) use ($movementtype) {
                            if(is_array($movementtype)){
                                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
                            }
                        })
                        ->where(function($query) use ($casesize) {
                            if(is_array($casesize)){
                                return $query->whereIn('product_details.case_size_id', (array)$casesize);
                            }
                        })
                        ->where(function($query) use ($caseshape) {
                            if(is_array($caseshape)){
                                return $query->whereIn('product_details.case_shape_id', (array)$caseshape);
                            }
                        })
                        ->where(function($query) use ($casematerial) {
                            if(is_array($casematerial)){
                                return $query->whereIn('product_details.case_material_id', (array)$casematerial);
                            }
                        })
                        ->where(function($query) use ($dialcolour) {
                            if(is_array($dialcolour)){
                                return $query->whereIn('product_details.dial_colour_id', (array)$dialcolour);
                            }
                        })
                        ->where(function($query) use ($strapmaterial) {
                            if(is_array($strapmaterial)){
                                return $query->whereIn('product_details.strap_material_id', (array)$strapmaterial);
                            }
                        })
                        ->where(function($query) use ($strapcolour) {
                            if(is_array($strapcolour)){
                                return $query->whereIn('product_details.strap_colour_id', (array)$strapcolour);
                            }
                        })
                        ->where(function($query) use ($glassmaterial) {
                            if(is_array($glassmaterial)){
                                return $query->whereIn('product_details.glass_material_id', (array)$glassmaterial);
                            }
                        })
                        ->where(function($query) use ($gender) {
                            if(is_array($gender)){
                                return $query->whereIn('product_details.gender_id', (array)$gender);
                            }
                        })
                        ->where(function($query) use ($feature) {
                            if(is_array($feature)){
                                foreach($feature as $f){
                                    return $query->whereRaw("find_in_set('".$f."',product_details.feature_id)");
                                }
                            }
                        })
                        ->where(function($query) use ($price) {
                            if(is_array($price)){
                                return $query->whereBetween('product_details.price', (array)$price);
                            }
                        })
                        ->orderBy('price', 'asc')
                        // ->get();
                        ->paginate(12);
                    }
                    else{}
            }
            elseif ($disc->discount_activation_date <= date('Y-m-d') && $disc->discount_expiry_date >= date('Y-m-d') && $disc->discount_by == 'Gender'){
                    if ($disc->product_by == 'Selected'){

                        $pro_ids = $disc->product_ids;
                        $pro_ids = explode(',',$pro_ids);

                        $gender_ids = $disc->gender_id;
                        $gender_ids = explode(',',$gender_ids);

                        $products = DB::table('product_details')
                        ->select('product_details.id as product_id', 'product_details.model_no', 'product_details.price', 'product_details.thumb_img', 'product_details.gender_id', 'product_details.brand_id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($pro_ids) {
                            if(is_array($pro_ids)){
                                return $query->whereIn('product_details.id', (array)$pro_ids);
                            }
                        })
                        ->where(function($query) use ($gender_ids) {
                            if(is_array($gender_ids)){
                                return $query->whereIn('product_details.gender_id', (array)$gender_ids);
                            }
                        })
                        ->where(function($query) use ($brands) {
                            if(is_array($brands)){
                                return $query->whereIn('product_details.brand_id', (array)$brands);
                            }
                        })
                        ->where(function($query) use ($collection) {
                            if(is_array($collection)){
                                return $query->whereIn('product_details.collection_id', (array)$collection);
                            }
                        })
                        ->where(function($query) use ($movement) {
                            if(is_array($movement)){
                                return $query->whereIn('product_details.movement_id', (array)$movement);
                            }
                        })
                        ->where(function($query) use ($movementtype) {
                            if(is_array($movementtype)){
                                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
                            }
                        })
                        ->where(function($query) use ($casesize) {
                            if(is_array($casesize)){
                                return $query->whereIn('product_details.case_size_id', (array)$casesize);
                            }
                        })
                        ->where(function($query) use ($caseshape) {
                            if(is_array($caseshape)){
                                return $query->whereIn('product_details.case_shape_id', (array)$caseshape);
                            }
                        })
                        ->where(function($query) use ($casematerial) {
                            if(is_array($casematerial)){
                                return $query->whereIn('product_details.case_material_id', (array)$casematerial);
                            }
                        })
                        ->where(function($query) use ($dialcolour) {
                            if(is_array($dialcolour)){
                                return $query->whereIn('product_details.dial_colour_id', (array)$dialcolour);
                            }
                        })
                        ->where(function($query) use ($strapmaterial) {
                            if(is_array($strapmaterial)){
                                return $query->whereIn('product_details.strap_material_id', (array)$strapmaterial);
                            }
                        })
                        ->where(function($query) use ($strapcolour) {
                            if(is_array($strapcolour)){
                                return $query->whereIn('product_details.strap_colour_id', (array)$strapcolour);
                            }
                        })
                        ->where(function($query) use ($glassmaterial) {
                            if(is_array($glassmaterial)){
                                return $query->whereIn('product_details.glass_material_id', (array)$glassmaterial);
                            }
                        })
                        ->where(function($query) use ($gender) {
                            if(is_array($gender)){
                                return $query->whereIn('product_details.gender_id', (array)$gender);
                            }
                        })
                        ->where(function($query) use ($feature) {
                            if(is_array($feature)){
                                foreach($feature as $f){
                                    return $query->whereRaw("find_in_set('".$f."',product_details.feature_id)");
                                }
                            }
                        })
                        ->where(function($query) use ($price) {
                            if(is_array($price)){
                                return $query->whereBetween('product_details.price', (array)$price);
                            }
                        })
                        ->orderBy('price', 'asc')
                        // ->get();
                        ->paginate(12);
                    }
                    elseif ($disc->product_by == 'ALL'){

                        $gender_ids = $disc->gender_id;
                        $gender_ids = explode(',',$gender_ids);

                        $products = DB::table('product_details')
                        ->select('product_details.id as product_id', 'product_details.model_no', 'product_details.price', 'product_details.thumb_img', 'product_details.gender_id', 'product_details.brand_id')
                        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
                        ->join('collections', 'product_details.collection_id', '=', 'collections.id')
                        ->join('movements', 'product_details.movement_id', '=', 'movements.id')
                        ->join('movement_types', 'product_details.movement_type_id', '=', 'movement_types.id')
                        ->join('case_sizes', 'product_details.case_size_id', '=', 'case_sizes.id')
                        ->join('case_shapes', 'product_details.case_shape_id', '=', 'case_shapes.id')
                        ->join('case_materials', 'product_details.case_material_id', '=', 'case_materials.id')
                        ->join('glass_materials', 'product_details.glass_material_id', '=', 'glass_materials.id')
                        ->join('dial_colours', 'product_details.dial_colour_id', '=', 'dial_colours.id')
                        ->join('strap_materials', 'product_details.strap_material_id', '=', 'strap_materials.id')
                        ->join('strap_colours', 'product_details.strap_colour_id', '=', 'strap_colours.id')
                        ->join('genders', 'product_details.gender_id', '=', 'genders.id')
                        ->join('features', 'product_details.feature_id', '=', 'features.id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($gender_ids) {
                            if(is_array($gender_ids)){
                                return $query->whereIn('product_details.gender_id', (array)$gender_ids);
                            }
                        })
                        ->where(function($query) use ($brands) {
                            if(is_array($brands)){
                                return $query->whereIn('product_details.brand_id', (array)$brands);
                            }
                        })
                        ->where(function($query) use ($collection) {
                            if(is_array($collection)){
                                return $query->whereIn('product_details.collection_id', (array)$collection);
                            }
                        })
                        ->where(function($query) use ($movement) {
                            if(is_array($movement)){
                                return $query->whereIn('product_details.movement_id', (array)$movement);
                            }
                        })
                        ->where(function($query) use ($movementtype) {
                            if(is_array($movementtype)){
                                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
                            }
                        })
                        ->where(function($query) use ($casesize) {
                            if(is_array($casesize)){
                                return $query->whereIn('product_details.case_size_id', (array)$casesize);
                            }
                        })
                        ->where(function($query) use ($caseshape) {
                            if(is_array($caseshape)){
                                return $query->whereIn('product_details.case_shape_id', (array)$caseshape);
                            }
                        })
                        ->where(function($query) use ($casematerial) {
                            if(is_array($casematerial)){
                                return $query->whereIn('product_details.case_material_id', (array)$casematerial);
                            }
                        })
                        ->where(function($query) use ($dialcolour) {
                            if(is_array($dialcolour)){
                                return $query->whereIn('product_details.dial_colour_id', (array)$dialcolour);
                            }
                        })
                        ->where(function($query) use ($strapmaterial) {
                            if(is_array($strapmaterial)){
                                return $query->whereIn('product_details.strap_material_id', (array)$strapmaterial);
                            }
                        })
                        ->where(function($query) use ($strapcolour) {
                            if(is_array($strapcolour)){
                                return $query->whereIn('product_details.strap_colour_id', (array)$strapcolour);
                            }
                        })
                        ->where(function($query) use ($glassmaterial) {
                            if(is_array($glassmaterial)){
                                return $query->whereIn('product_details.glass_material_id', (array)$glassmaterial);
                            }
                        })
                        ->where(function($query) use ($gender) {
                            if(is_array($gender)){
                                return $query->whereIn('product_details.gender_id', (array)$gender);
                            }
                        })
                        ->where(function($query) use ($feature) {
                            if(is_array($feature)){
                                foreach($feature as $f){
                                    return $query->whereRaw("find_in_set('".$f."',product_details.feature_id)");
                                }
                            }
                        })
                        ->where(function($query) use ($price) {
                            if(is_array($price)){
                                return $query->whereBetween('product_details.price', (array)$price);
                            }
                        })
                        ->orderBy('price', 'asc')
                        // ->get();
                        ->paginate(12);
                    }
                    else{}
            }
            else{}
        }
        return $products;
    }

    public function sale_filters_group(Request $request,$group_by_column=NULL,$group_id,$group_name){
        $brands = $request->brands;
        $casematerial = $request->casematerial;
        $caseshape = $request->caseshape;
        $casesize = $request->casesize;
        $collection = $request->collection;
        $dialcolour = $request->dialcolour;
        $feature = $request->feature;//implode(',',$request->feature);
        $gender = $request->gender;
        $glassmaterial = $request->glassmaterial;
        $movement = $request->movement;
        $movementtype = $request->movementtype;
        $strapcolour = $request->strapcolour;
        $strapmaterial = $request->strapmaterial;
        $price = $request->price;//explode('-',$request->price);
        $discount = Discount::all();

        foreach ($discount as $disc){
            if ($disc->discount_activation_date <= date('Y-m-d') && $disc->discount_expiry_date >= date('Y-m-d') && $disc->discount_by == 'Brand'){
                    if ($disc->product_by == 'Selected'){

                        $pro_ids = $disc->product_ids;
                        $pro_ids = explode(',',$pro_ids);

                        $brand_ids = $disc->brand_id;
                        $brand_ids = explode(',',$brand_ids);

                        $products = DB::table('product_details')
                        ->select('product_details.id',$group_id,$group_name)
                        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
                        ->join('collections', 'product_details.collection_id', '=', 'collections.id')
                        ->join('movements', 'product_details.movement_id', '=', 'movements.id')
                        ->join('movement_types', 'product_details.movement_type_id', '=', 'movement_types.id')
                        ->join('case_sizes', 'product_details.case_size_id', '=', 'case_sizes.id')
                        ->join('case_shapes', 'product_details.case_shape_id', '=', 'case_shapes.id')
                        ->join('case_materials', 'product_details.case_material_id', '=', 'case_materials.id')
                        ->join('glass_materials', 'product_details.glass_material_id', '=', 'glass_materials.id')
                        ->join('dial_colours', 'product_details.dial_colour_id', '=', 'dial_colours.id')
                        ->join('strap_materials', 'product_details.strap_material_id', '=', 'strap_materials.id')
                        ->join('strap_colours', 'product_details.strap_colour_id', '=', 'strap_colours.id')
                        ->join('genders', 'product_details.gender_id', '=', 'genders.id')
                        ->join('features', 'product_details.feature_id', '=', 'features.id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($pro_ids) {
                            if(is_array($pro_ids)){
                                return $query->whereIn('product_details.id', (array)$pro_ids);
                            }
                        })
                        ->where(function($query) use ($brand_ids) {
                            if(is_array($brand_ids)){
                                return $query->whereIn('product_details.brand_id', (array)$brand_ids);
                            }
                        })
                        ->where(function($query) use ($brands) {
                            if(is_array($brands)){
                                return $query->whereIn('product_details.brand_id', (array)$brands);
                            }
                        })
                        ->where(function($query) use ($collection) {
                            if(is_array($collection)){
                                return $query->whereIn('product_details.collection_id', (array)$collection);
                            }
                        })
                        ->where(function($query) use ($movement) {
                            if(is_array($movement)){
                                return $query->whereIn('product_details.movement_id', (array)$movement);
                            }
                        })
                        ->where(function($query) use ($movementtype) {
                            if(is_array($movementtype)){
                                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
                            }
                        })
                        ->where(function($query) use ($casesize) {
                            if(is_array($casesize)){
                                return $query->whereIn('product_details.case_size_id', (array)$casesize);
                            }
                        })
                        ->where(function($query) use ($caseshape) {
                            if(is_array($caseshape)){
                                return $query->whereIn('product_details.case_shape_id', (array)$caseshape);
                            }
                        })
                        ->where(function($query) use ($casematerial) {
                            if(is_array($casematerial)){
                                return $query->whereIn('product_details.case_material_id', (array)$casematerial);
                            }
                        })
                        ->where(function($query) use ($dialcolour) {
                            if(is_array($dialcolour)){
                                return $query->whereIn('product_details.dial_colour_id', (array)$dialcolour);
                            }
                        })
                        ->where(function($query) use ($strapmaterial) {
                            if(is_array($strapmaterial)){
                                return $query->whereIn('product_details.strap_material_id', (array)$strapmaterial);
                            }
                        })
                        ->where(function($query) use ($strapcolour) {
                            if(is_array($strapcolour)){
                                return $query->whereIn('product_details.strap_colour_id', (array)$strapcolour);
                            }
                        })
                        ->where(function($query) use ($glassmaterial) {
                            if(is_array($glassmaterial)){
                                return $query->whereIn('product_details.glass_material_id', (array)$glassmaterial);
                            }
                        })
                        ->where(function($query) use ($gender) {
                            if(is_array($gender)){
                                return $query->whereIn('product_details.gender_id', (array)$gender);
                            }
                        })
                        ->where(function($query) use ($feature) {
                            if(is_array($feature)){
                                foreach($feature as $f){
                                    return $query->whereRaw("find_in_set('".$f."',product_details.feature_id)");
                                }
                            }
                        })
                        ->where(function($query) use ($price) {
                            if(is_array($price)){
                                return $query->whereBetween('product_details.price', (array)$price);
                            }
                        })
                        ->groupBy($group_by_column)
                        // ->paginate(12);
                        ->get();
                    }
                    elseif ($disc->product_by == 'ALL'){

                        $brand_ids = $disc->brand_id;
                        $brand_ids = explode(',',$brand_ids);

                        $products = DB::table('product_details')
                        ->select('product_details.id',$group_id,$group_name)
                        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
                        ->join('collections', 'product_details.collection_id', '=', 'collections.id')
                        ->join('movements', 'product_details.movement_id', '=', 'movements.id')
                        ->join('movement_types', 'product_details.movement_type_id', '=', 'movement_types.id')
                        ->join('case_sizes', 'product_details.case_size_id', '=', 'case_sizes.id')
                        ->join('case_shapes', 'product_details.case_shape_id', '=', 'case_shapes.id')
                        ->join('case_materials', 'product_details.case_material_id', '=', 'case_materials.id')
                        ->join('glass_materials', 'product_details.glass_material_id', '=', 'glass_materials.id')
                        ->join('dial_colours', 'product_details.dial_colour_id', '=', 'dial_colours.id')
                        ->join('strap_materials', 'product_details.strap_material_id', '=', 'strap_materials.id')
                        ->join('strap_colours', 'product_details.strap_colour_id', '=', 'strap_colours.id')
                        ->join('genders', 'product_details.gender_id', '=', 'genders.id')
                        ->join('features', 'product_details.feature_id', '=', 'features.id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($brand_ids) {
                            if(is_array($brand_ids)){
                                return $query->whereIn('product_details.brand_id', (array)$brand_ids);
                            }
                        })
                        ->where(function($query) use ($brands) {
                            if(is_array($brands)){
                                return $query->whereIn('product_details.brand_id', (array)$brands);
                            }
                        })
                        ->where(function($query) use ($collection) {
                            if(is_array($collection)){
                                return $query->whereIn('product_details.collection_id', (array)$collection);
                            }
                        })
                        ->where(function($query) use ($movement) {
                            if(is_array($movement)){
                                return $query->whereIn('product_details.movement_id', (array)$movement);
                            }
                        })
                        ->where(function($query) use ($movementtype) {
                            if(is_array($movementtype)){
                                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
                            }
                        })
                        ->where(function($query) use ($casesize) {
                            if(is_array($casesize)){
                                return $query->whereIn('product_details.case_size_id', (array)$casesize);
                            }
                        })
                        ->where(function($query) use ($caseshape) {
                            if(is_array($caseshape)){
                                return $query->whereIn('product_details.case_shape_id', (array)$caseshape);
                            }
                        })
                        ->where(function($query) use ($casematerial) {
                            if(is_array($casematerial)){
                                return $query->whereIn('product_details.case_material_id', (array)$casematerial);
                            }
                        })
                        ->where(function($query) use ($dialcolour) {
                            if(is_array($dialcolour)){
                                return $query->whereIn('product_details.dial_colour_id', (array)$dialcolour);
                            }
                        })
                        ->where(function($query) use ($strapmaterial) {
                            if(is_array($strapmaterial)){
                                return $query->whereIn('product_details.strap_material_id', (array)$strapmaterial);
                            }
                        })
                        ->where(function($query) use ($strapcolour) {
                            if(is_array($strapcolour)){
                                return $query->whereIn('product_details.strap_colour_id', (array)$strapcolour);
                            }
                        })
                        ->where(function($query) use ($glassmaterial) {
                            if(is_array($glassmaterial)){
                                return $query->whereIn('product_details.glass_material_id', (array)$glassmaterial);
                            }
                        })
                        ->where(function($query) use ($gender) {
                            if(is_array($gender)){
                                return $query->whereIn('product_details.gender_id', (array)$gender);
                            }
                        })
                        ->where(function($query) use ($feature) {
                            if(is_array($feature)){
                                foreach($feature as $f){
                                    return $query->whereRaw("find_in_set('".$f."',product_details.feature_id)");
                                }
                            }
                        })
                        ->where(function($query) use ($price) {
                            if(is_array($price)){
                                return $query->whereBetween('product_details.price', (array)$price);
                            }
                        })
                        ->groupBy($group_by_column)
                        // ->paginate(12);
                        ->get();
                    }
                    else{}
            }
            elseif ($disc->discount_activation_date <= date('Y-m-d') && $disc->discount_expiry_date >= date('Y-m-d') && $disc->discount_by == 'Gender'){
                    if ($disc->product_by == 'Selected'){

                        $pro_ids = $disc->product_ids;
                        $pro_ids = explode(',',$pro_ids);

                        $gender_ids = $disc->gender_id;
                        $gender_ids = explode(',',$gender_ids);

                        $products = DB::table('product_details')
                        ->select('product_details.id',$group_id,$group_name)
                        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
                        ->join('collections', 'product_details.collection_id', '=', 'collections.id')
                        ->join('movements', 'product_details.movement_id', '=', 'movements.id')
                        ->join('movement_types', 'product_details.movement_type_id', '=', 'movement_types.id')
                        ->join('case_sizes', 'product_details.case_size_id', '=', 'case_sizes.id')
                        ->join('case_shapes', 'product_details.case_shape_id', '=', 'case_shapes.id')
                        ->join('case_materials', 'product_details.case_material_id', '=', 'case_materials.id')
                        ->join('glass_materials', 'product_details.glass_material_id', '=', 'glass_materials.id')
                        ->join('dial_colours', 'product_details.dial_colour_id', '=', 'dial_colours.id')
                        ->join('strap_materials', 'product_details.strap_material_id', '=', 'strap_materials.id')
                        ->join('strap_colours', 'product_details.strap_colour_id', '=', 'strap_colours.id')
                        ->join('genders', 'product_details.gender_id', '=', 'genders.id')
                        ->join('features', 'product_details.feature_id', '=', 'features.id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($pro_ids) {
                            if(is_array($pro_ids)){
                                return $query->whereIn('product_details.id', (array)$pro_ids);
                            }
                        })
                        ->where(function($query) use ($gender_ids) {
                            if(is_array($gender_ids)){
                                return $query->whereIn('product_details.gender_id', (array)$gender_ids);
                            }
                        })
                        ->where(function($query) use ($brands) {
                            if(is_array($brands)){
                                return $query->whereIn('product_details.brand_id', (array)$brands);
                            }
                        })
                        ->where(function($query) use ($collection) {
                            if(is_array($collection)){
                                return $query->whereIn('product_details.collection_id', (array)$collection);
                            }
                        })
                        ->where(function($query) use ($movement) {
                            if(is_array($movement)){
                                return $query->whereIn('product_details.movement_id', (array)$movement);
                            }
                        })
                        ->where(function($query) use ($movementtype) {
                            if(is_array($movementtype)){
                                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
                            }
                        })
                        ->where(function($query) use ($casesize) {
                            if(is_array($casesize)){
                                return $query->whereIn('product_details.case_size_id', (array)$casesize);
                            }
                        })
                        ->where(function($query) use ($caseshape) {
                            if(is_array($caseshape)){
                                return $query->whereIn('product_details.case_shape_id', (array)$caseshape);
                            }
                        })
                        ->where(function($query) use ($casematerial) {
                            if(is_array($casematerial)){
                                return $query->whereIn('product_details.case_material_id', (array)$casematerial);
                            }
                        })
                        ->where(function($query) use ($dialcolour) {
                            if(is_array($dialcolour)){
                                return $query->whereIn('product_details.dial_colour_id', (array)$dialcolour);
                            }
                        })
                        ->where(function($query) use ($strapmaterial) {
                            if(is_array($strapmaterial)){
                                return $query->whereIn('product_details.strap_material_id', (array)$strapmaterial);
                            }
                        })
                        ->where(function($query) use ($strapcolour) {
                            if(is_array($strapcolour)){
                                return $query->whereIn('product_details.strap_colour_id', (array)$strapcolour);
                            }
                        })
                        ->where(function($query) use ($glassmaterial) {
                            if(is_array($glassmaterial)){
                                return $query->whereIn('product_details.glass_material_id', (array)$glassmaterial);
                            }
                        })
                        ->where(function($query) use ($gender) {
                            if(is_array($gender)){
                                return $query->whereIn('product_details.gender_id', (array)$gender);
                            }
                        })
                        ->where(function($query) use ($feature) {
                            if(is_array($feature)){
                                foreach($feature as $f){
                                    return $query->whereRaw("find_in_set('".$f."',product_details.feature_id)");
                                }
                            }
                        })
                        ->where(function($query) use ($price) {
                            if(is_array($price)){
                                return $query->whereBetween('product_details.price', (array)$price);
                            }
                        })
                        ->groupBy($group_by_column)
                        // ->paginate(12);
                        ->get();
                    }
                    elseif ($disc->product_by == 'ALL'){

                        $gender_ids = $disc->gender_id;
                        $gender_ids = explode(',',$gender_ids);

                        $products = DB::table('product_details')
                        ->select('product_details.id',$group_id,$group_name)
                        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
                        ->join('collections', 'product_details.collection_id', '=', 'collections.id')
                        ->join('movements', 'product_details.movement_id', '=', 'movements.id')
                        ->join('movement_types', 'product_details.movement_type_id', '=', 'movement_types.id')
                        ->join('case_sizes', 'product_details.case_size_id', '=', 'case_sizes.id')
                        ->join('case_shapes', 'product_details.case_shape_id', '=', 'case_shapes.id')
                        ->join('case_materials', 'product_details.case_material_id', '=', 'case_materials.id')
                        ->join('glass_materials', 'product_details.glass_material_id', '=', 'glass_materials.id')
                        ->join('dial_colours', 'product_details.dial_colour_id', '=', 'dial_colours.id')
                        ->join('strap_materials', 'product_details.strap_material_id', '=', 'strap_materials.id')
                        ->join('strap_colours', 'product_details.strap_colour_id', '=', 'strap_colours.id')
                        ->join('genders', 'product_details.gender_id', '=', 'genders.id')
                        ->join('features', 'product_details.feature_id', '=', 'features.id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($gender_ids) {
                            if(is_array($gender_ids)){
                                return $query->whereIn('product_details.gender_id', (array)$gender_ids);
                            }
                        })
                        ->where(function($query) use ($brands) {
                            if(is_array($brands)){
                                return $query->whereIn('product_details.brand_id', (array)$brands);
                            }
                        })
                        ->where(function($query) use ($collection) {
                            if(is_array($collection)){
                                return $query->whereIn('product_details.collection_id', (array)$collection);
                            }
                        })
                        ->where(function($query) use ($movement) {
                            if(is_array($movement)){
                                return $query->whereIn('product_details.movement_id', (array)$movement);
                            }
                        })
                        ->where(function($query) use ($movementtype) {
                            if(is_array($movementtype)){
                                return $query->whereIn('product_details.movement_type_id', (array)$movementtype);
                            }
                        })
                        ->where(function($query) use ($casesize) {
                            if(is_array($casesize)){
                                return $query->whereIn('product_details.case_size_id', (array)$casesize);
                            }
                        })
                        ->where(function($query) use ($caseshape) {
                            if(is_array($caseshape)){
                                return $query->whereIn('product_details.case_shape_id', (array)$caseshape);
                            }
                        })
                        ->where(function($query) use ($casematerial) {
                            if(is_array($casematerial)){
                                return $query->whereIn('product_details.case_material_id', (array)$casematerial);
                            }
                        })
                        ->where(function($query) use ($dialcolour) {
                            if(is_array($dialcolour)){
                                return $query->whereIn('product_details.dial_colour_id', (array)$dialcolour);
                            }
                        })
                        ->where(function($query) use ($strapmaterial) {
                            if(is_array($strapmaterial)){
                                return $query->whereIn('product_details.strap_material_id', (array)$strapmaterial);
                            }
                        })
                        ->where(function($query) use ($strapcolour) {
                            if(is_array($strapcolour)){
                                return $query->whereIn('product_details.strap_colour_id', (array)$strapcolour);
                            }
                        })
                        ->where(function($query) use ($glassmaterial) {
                            if(is_array($glassmaterial)){
                                return $query->whereIn('product_details.glass_material_id', (array)$glassmaterial);
                            }
                        })
                        ->where(function($query) use ($gender) {
                            if(is_array($gender)){
                                return $query->whereIn('product_details.gender_id', (array)$gender);
                            }
                        })
                        ->where(function($query) use ($feature) {
                            if(is_array($feature)){
                                foreach($feature as $f){
                                    return $query->whereRaw("find_in_set('".$f."',product_details.feature_id)");
                                }
                            }
                        })
                        ->where(function($query) use ($price) {
                            if(is_array($price)){
                                return $query->whereBetween('product_details.price', (array)$price);
                            }
                        })
                        ->groupBy($group_by_column)
                        // ->paginate(12);
                        ->get();
                    }
                    else{}
            }
            else{}
        }
        return $products;
    }

    public function discount_find_out(){
        $discount = Discount::all();
        foreach ($discount as $disc){
            if ($disc->discount_activation_date <= date('Y-m-d') && $disc->discount_expiry_date >= date('Y-m-d') && $disc->discount_by == 'Brand'){
                    if ($disc->product_by == 'Selected'){

                        $pro_ids = $disc->product_ids;
                        $pro_ids = explode(',',$pro_ids);

                        $brand_ids = $disc->brand_id;
                        $brand_ids = explode(',',$brand_ids);

                        return $products = DB::table('product_details')
                        ->select('product_details.id', 'product_details.model_no', 'product_details.price', 'product_details.images', 'product_details.thumb_img', 'product_details.gender_id', 'product_details.brand_id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($pro_ids) {
                            if(is_array($pro_ids)){
                                return $query->whereIn('product_details.id', (array)$pro_ids);
                            }
                        })
                        ->where(function($query) use ($brand_ids) {
                            if(is_array($brand_ids)){
                                return $query->whereIn('product_details.brand_id', (array)$brand_ids);
                            }
                        })
                        ->orderBy('price', 'asc')
                        ->paginate(12);
                    }
                    elseif ($disc->product_by == 'ALL'){

                        $brand_ids = $disc->brand_id;
                        $brand_ids = explode(',',$brand_ids);

                        return $products = DB::table('product_details')
                        ->select('product_details.id', 'product_details.model_no', 'product_details.price', 'product_details.images', 'product_details.thumb_img', 'product_details.gender_id', 'product_details.brand_id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($brand_ids) {
                            if(is_array($brand_ids)){
                                return $query->whereIn('product_details.brand_id', (array)$brand_ids);
                            }
                        })
                        ->orderBy('price', 'asc')
                        ->paginate(12);
                    }
                    else{}
            }
            elseif ($disc->discount_activation_date <= date('Y-m-d') && $disc->discount_expiry_date >= date('Y-m-d') && $disc->discount_by == 'Gender'){
                    if ($disc->product_by == 'Selected'){

                        $pro_ids = $disc->product_ids;
                        $pro_ids = explode(',',$pro_ids);

                        $gender_ids = $disc->gender_id;
                        $gender_ids = explode(',',$gender_ids);

                        return $products = DB::table('product_details')
                        ->select('product_details.id', 'product_details.model_no', 'product_details.price', 'product_details.images', 'product_details.thumb_img', 'product_details.gender_id', 'product_details.brand_id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($pro_ids) {
                            if(is_array($pro_ids)){
                                return $query->whereIn('product_details.id', (array)$pro_ids);
                            }
                        })
                        ->where(function($query) use ($gender_ids) {
                            if(is_array($gender_ids)){
                                return $query->whereIn('product_details.gender_id', (array)$gender_ids);
                            }
                        })
                        ->orderBy('price', 'asc')
                        ->paginate(12);
                    }
                    elseif ($disc->product_by == 'ALL'){

                        $gender_ids = $disc->gender_id;
                        $gender_ids = explode(',',$gender_ids);

                        return $products = DB::table('product_details')
                        ->select('product_details.id', 'product_details.model_no', 'product_details.price', 'product_details.images', 'product_details.thumb_img', 'product_details.gender_id', 'product_details.brand_id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.main_category_id', '=', 1)
                        ->where(function($query) use ($gender_ids) {
                            if(is_array($gender_ids)){
                                return $query->whereIn('product_details.gender_id', (array)$gender_ids);
                            }
                        })
                        ->orderBy('price', 'asc')
                        ->paginate(12);
                    }
                    else{}
            }
            else{}
        }
    }

    public function discount_price($id,$brand,$price,$gender){
        $discount = Discount::all();
        foreach ($discount as $disc){
            if ($disc->discount_activation_date <= date('Y-m-d') && $disc->discount_expiry_date >= date('Y-m-d') && $disc->discount_by == 'Brand'){
                foreach (explode(',',$disc->brand_id) as $b_id){
                    if ($disc->product_by == 'Selected'){
                        foreach (explode(',',$disc->product_ids) as $p_id){
                            if ($p_id == $id){
                                if ($b_id == $brand){
                                    if ($disc->discount_type == 'Percent'){
                                        if ($disc->discount_upto >= $price){
                                            return (int)$price - ((int)$price / 100 * (int)$disc->discount_value);
                                        }
                                        elseif ($disc->discount_upto <= $price){
                                            return ((int)$price - (int)$disc->max_value);
                                        }
                                        else{}
                                    }
                                    elseif ($disc->discount_type == 'Amount'){
                                        if ($disc->discount_upto >= $price){
                                            return (int)$price - (int)$disc->discount_value;
                                        }
                                        elseif ($disc->discount_upto <= $price){
                                            return ((int)$price - (int)$disc->max_value);
                                        }
                                        else{}
                                    }
                                    else{}
                                }
                            }
                        }
                    }
                    elseif ($disc->product_by == 'ALL'){
                        if ($b_id == $brand){
                            if ($disc->discount_type == 'Percent'){
                                if ($disc->discount_upto >= $price){
                                    return (int)$price - ((int)$price / 100 * (int)$disc->discount_value);
                                }
                                elseif ($disc->discount_upto <= $price){
                                    return ((int)$price - (int)$disc->max_value);
                                }
                                else{}
                            }
                            elseif ($disc->discount_type == 'Amount'){
                                if ($disc->discount_upto >= $price){
                                    return (int)$price - (int)$disc->discount_value;
                                }
                                elseif ($disc->discount_upto <= $price){
                                    return ((int)$price - (int)$disc->max_value);
                                }
                                else{}
                            }
                            else{}
                        }
                    }
                    else{}
                }
            }
            elseif ($disc->discount_activation_date <= date('Y-m-d') && $disc->discount_expiry_date >= date('Y-m-d') && $disc->discount_by == 'Gender'){
                foreach (explode(',',$disc->gender_id) as $g_id){
                    if ($disc->product_by == 'Selected'){
                        foreach (explode(',',$disc->product_ids) as $p_id){
                            if ($p_id == $id){
                                if ($g_id == $gender){
                                    if ($disc->discount_type == 'Percent'){
                                        if ($disc->discount_upto >= $price){
                                            return (int)$price - ((int)$price / 100 * (int)$disc->discount_value);
                                        }
                                        elseif ($disc->discount_upto <= $price){
                                            return ((int)$price - (int)$disc->max_value);
                                        }
                                        else{}
                                    }
                                    elseif ($disc->discount_type == 'Amount'){
                                        if ($disc->discount_upto >= $price){
                                            return (int)$price - (int)$disc->discount_value;
                                        }
                                        elseif ($disc->discount_upto <= $price){
                                            return ((int)$price - (int)$disc->max_value);
                                        }
                                        else{}
                                    }
                                    else{}
                                }
                            }
                        }
                    }
                    elseif ($disc->product_by == 'ALL'){
                        if ($g_id == $gender){
                            if ($disc->discount_type == 'Percent'){
                                if ($disc->discount_upto >= $price){
                                    return (int)$price - ((int)$price / 100 * (int)$disc->discount_value);
                                }
                                elseif ($disc->discount_upto <= $price){
                                    return ((int)$price - (int)$disc->max_value);
                                }
                                else{}
                            }
                            elseif ($disc->discount_type == 'Amount'){
                                if ($disc->discount_upto >= $price){
                                    return (int)$price - (int)$disc->discount_value;
                                }
                                elseif ($disc->discount_upto <= $price){
                                    return ((int)$price - (int)$disc->max_value);
                                }
                                else{}
                            }
                            else{}
                        }
                    }
                    else{}
                }
            }
            else{}
        }
    }

    public function paginate($items, $slug=null, $price=null, $perPage = 12, $page = null, $options = [])
    {
        if(!empty($slug)){
            $options = ['path'=>url()->current().'?gender='.$slug];
        }
        elseif(!empty($price)){
            $options = ['path'=>url()->current().'?price='.$price];
        }
        else{
            $options = ['path'=>url()->current()];
        }
        $page = $page ?: (Paginator::resolveCurrentPage() ?: 1);
        $items = $items instanceof CollSupport ? $items : CollSupport::make($items);
        // $options = ['path'=>'http://localhost/lahore/product?gender='.$slug];
        // $options = ['path'=>url()->current().'?gender='.$slug];
        return new LengthAwarePaginator($items->forPage($page, $perPage), $items->count(), $perPage, $page, $options);
    }
    public function pageNotFound(){
        $brand_cat = Brand::where('status', '=', true)->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();

        return view('frontend.404', [
            'brand_cat' => $brand_cat,
            'collection_cat' => $collection_cat,
            'strap_material_cat' => $strap_material_cat,
            'feature_cat' => $feature_cat,
            'footer_brands' => $footer_brands
        ]);
    }

 

public function Cart(Request $request){

            $item_name= '';
            $item_link= '';
            $item_price= 0; 
 
            $response=array();
            $response['data']=array(); 
            
            $id=isset($request->proid)?$request->proid:'';

          

            $qty=isset($request->qty)?$request->qty:1;

  //Item type 1:For Packages 2:Tests

            // add new item on array
$itemtype=isset($request->brand_name)?$request->brand_name:'';  //Item type 1:For Packages 2:Tests

            // initialize empty cart items array
             $cart_items=array(); 
             //$item_detail=array('qty'=>$qty,'itemtype'=>$itemtype);
            // add new item on array
             $cart_items[$id]=$itemtype;

            // read the cookie
            $cookie = isset($_COOKIE['cart_items_cookie'])?$_COOKIE['cart_items_cookie']:'';
            $cookie = stripslashes($cookie);
            $saved_cart_items = json_decode($cookie, true);

            // if $saved_cart_items is null, prevent null error
            if(!$saved_cart_items){
                $saved_cart_items=array();
            }
            
            // check if the item is in the array, if it is, do not add



            if(array_key_exists($id, $saved_cart_items)){
                // redirect to product list and tell the user it was already added to the cart

                $response['status']="exist";
            }else{

 
                if(count($saved_cart_items)>0){
                    foreach($saved_cart_items as $key=>$value){
                        // add old item to array, it will prevent duplicate keys
                        $cart_items[$key]=$value;
                    }
                  }
                    $total_price=0;

                if(count($cart_items)>0){



                   foreach($cart_items as $key=>$value){
                    // add old item to array, it will prevent duplicate keys
                     $it=$value;
                     $itemqty=$qty;


                        $package = DB::table('product_details')
                        ->select('product_details.*','brands.name as brand_name','brands.slug','collections.name')
                        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
                        ->join('collections', 'product_details.collection_id', '=', 'collections.id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.id','=',$key)
                        ->first();
  
                        $item_name=$package->name;
                        $item_link=$package->slug;   
                          
                        $item_price=$package->price;    

                        if($package->thumb_img == null || $package->thumb_img == ''){
                            $item_img=URL::asset('public/frontend/assets/images/images.jpeg'); 
                        }else{
                            foreach (explode(',',$package->thumb_img) as $item){
                            $item_img=asset('storage/app/watch_thumb/'.$item);break;
                            } 
                        
                       }

                   

                    $subtotal=$item_price*$itemqty;

      
                     $col=array();
                     $col['hidden_prod_id']=$key;
                     $col['hidden_prod_col_name']=$item_name;
                     $col['product_img']=$item_img;
                     $col['price']=$item_price;
                     $col['subtotal']=$subtotal;                     
                     $total_price += $subtotal;

                     $col['itemqty']=$itemqty;
                     array_push($response['data'], $col);                    
                    }
                 }
           
                 $response['status']="added";
                 $response['totalitems']=count($cart_items);
                 $response['total_price']=$total_price;
                 $json = json_encode($cart_items, true);
                 setcookie('cart_items_cookie', $json,time() + 2592000, "/");


            }  

        $cart_data =  json_encode($response,JSON_PRETTY_PRINT);
            echo $cart_data ;
    } 


public  function RemoveItem(Request $request){

    $id = $_POST['pid'];

    $package = DB::table('product_details')
    ->select('product_details.*','brands.name as brand_name','brands.slug','collections.name')
    ->join('brands', 'product_details.brand_id', '=', 'brands.id')
    ->join('collections', 'product_details.collection_id', '=', 'collections.id')
    ->where('product_details.status','=', 1)
    ->where('product_details.id','=',$id)
    ->first();

            $item_name = $package->name;
            $item_link = $package->slug; 
            $item_price = $package->price;

        // read
        $cookie = $_COOKIE['cart_items_cookie'];
        $cookie = stripslashes($cookie);

        $saved_cart_items = json_decode($cookie, true);

        $total = 0;

        foreach( $saved_cart_items as $key=>$value){

    $data = DB::table('product_details')
    ->select('product_details.*','brands.name as brand_name','brands.slug','collections.name')
    ->join('brands', 'product_details.brand_id', '=', 'brands.id')
    ->join('collections', 'product_details.collection_id', '=', 'collections.id')
    ->where('product_details.status','=', 1)
    ->where('product_details.id','=',$key)
    ->first();

    $total += $data->price;

        }  

        $subtotal = $total;

        // remove the item from the array
        if(array_key_exists($id, $saved_cart_items)){
            unset($saved_cart_items[$id]);
        }
        $json = json_encode($saved_cart_items, true);
        setcookie('cart_items_cookie', $json, time() + 2592000, "/");

        $response['totalitems'] =count($saved_cart_items);

        $response['price'] = $package->price;

        $response['total_price'] = $subtotal;

        $cart_data =  json_encode($response,JSON_PRETTY_PRINT);

        echo  $cart_data;
     } 
    public function removeCartitem(){
     
     $id =  $_POST['pid'];

$deleteCart =  DB::table('cart')->where('id','=',$id)->delete();

if($deleteCart){

    echo 'success';
}else{
    echo ' error';
}

    }

    public function addToCart(Request $request){

        $seo = SeoTag::where('page_name', '=', 'home')->firstOrFail();
        $brand_cat = Brand::where('status', '=', '1')->get();
        $collection_cat = Collection::where('status', '=', true)->get();
        $strap_material_cat = StrapMaterial::where('status', '=', true)->get();
        $feature_cat = Feature::where('status', '=', true)->get();
        $footer_brands = Brand::where('status', '=', true)->limit(5)->get();
        $userSession = Session::get('id');

$userData = DB::table('guest_users')->where('id', '=', $userSession)->get();

      return view('frontend.mycart',[
        'seo' => $seo,
        'brand_cat' => $brand_cat,
    
        'usersSession'=>$userSession,
        'strap_material_cat' => $strap_material_cat,
        'feature_cat' => $feature_cat,
        'footer_brands' => $footer_brands,
        'collection_cat' => $collection_cat,
        'usersData' =>$userData,
        
      ]);    
        
    }
}