@extends('frontend/common/webmaster')
@section('title'," | $seo->meta_title")
@section('content')
<div class="page-wrapper">
<main class="main">
<nav aria-label="breadcrumb" class="breadcrumb-nav mb-1">
<div class="container">
<ol class="breadcrumb">
<li class="breadcrumb-item"><a href="index.html">Home</a></li>
<li class="breadcrumb-item active" aria-current="page">Shopping Cart</li>
</ol>
</div><!-- End .container -->
</nav>
<div class="container">
<div class="row"> 
<div class="col-lg-8">
<div class="cart-table-container">
<table class="table table-cart">
<thead>
<tr>
<th class="product-c">Product Image</th>
<th class="product-c">Product</th>
<th class="product-c">Product Brand</th>
<th class="price-col">Price</th>
<th class="qty-col">Qty</th>
<th>Subtotal</th>
</tr>
</thead>
<tbody>

<!-- cart -->

<!-- 
/*name
email
phone
price
model_no
warranty_period
images
thumb_img
brand_id
collection_id*/ -->

<?php

 $userSession = Session::get('id');

if($userSession){


       $user = DB::table('guest_users')
        ->where('id', '=',  $userSession)
        ->first(); 

if(isset( $_COOKIE['cart_items_cookie'])){

      $cookie = $_COOKIE['cart_items_cookie'];

       $cart_prod =  json_decode($cookie);


     foreach($cart_prod as $key=>$value){

                        $data = [

                            'product_id'=>$key,
                            'user_id'=>$user->id

                        ];

              $cart_insert =  DB::table('cart')->where('product_id','=',$key)->update($data); 


              } 

  }
 

 $user_cart_item = DB::table('cart')
 ->select('cart.id as cart_id','cart.pro_qty','guest_users.name','guest_users.phone' , 'guest_users.email' , 'product_details.*')
 ->join('guest_users','cart.user_id','=','guest_users.id')
 ->join('product_details','cart.product_id','=','product_details.id')
 ->where('user_id','=', $userSession)
 ->get();

$total = 0;
foreach($user_cart_item as $cart_items){

$subdomain = $cart_items->pro_qty*$cart_items->price;
$image=explode(',', $cart_items->thumb_img);
 $brand_item = DB::table('brands')
 ->where('id','=', $cart_items->brand_id)
 ->get();

  $collection_item = DB::table('collections')
 ->where('id','=', $cart_items->collection_id)
 ->get();

 $url = url('/').'/storage/app/watch_thumb/';

 $total += $subdomain;
?> 
<tr class="cart-item-<?=$cart_items->cart_id?>">
	<td><img src="<?=$url.'/'.$image[0];?>" style="width: 60px; height: 60px;"></td>
		<td><?= $collection_item[0]->name;?></td>
	<td><?= $brand_item[0]->name;?></td>

	<td><?=$cart_items->pro_qty;?></td> 
	<td><?=$subdomain;?></td>
	<td colspan="4" class="clearfix">    

<div class="float-right">
<a href="#" title="Edit product" class="btn-edit"><span class="sr-only">Edit</span><i class="icon-pencil"></i></a>
<a href="#" title="Remove product" id="removeItem" onclick="removeItem('<?=$cart_items->cart_id?>')"  class="btn-remove"><span class="sr-only">Remove</span></a>
</div><!-- End .float-right -->
</td>
</tr>
<?php
}
?>
<tr class="product-action-row">
<td></td>
<td></td>
<td></td>
<td></td>
<td>		
<?php
echo  $total;
?>
</td>
<td><b>Total</b></td>
</tr>


<?php
}else{

if(isset( $_COOKIE['cart_items_cookie'])){

	 $cookie = json_decode($_COOKIE['cart_items_cookie']);

 $url = url('/').'/storage/app/watch_thumb/';
  foreach($cookie as $key => $cart_items){


$user_cart_item  = DB::table('product_details')
    ->select('product_details.*','brands.name as brand_name','brands.slug','collections.name')
    ->join('brands', 'product_details.brand_id', '=', 'brands.id')
    ->join('collections', 'product_details.collection_id', '=', 'collections.id')
    ->where('product_details.status','=', 1)
    ->where('product_details.id','=',$key)
    ->get();

    $image=explode(',', $user_cart_item[0]->thumb_img);

?>
<tr class="cookie_cart">
<td> <img src="<?=$url.'/'.$image[0]?>" style="width: 60px; height: 60px;"></td>

<td><?=$user_cart_item[0]->brand_name?></td>
<td><?=$user_cart_item[0]->name?></td>

<td><?=$user_cart_item[0]->price?></td>

<td><?=$user_cart_item[0]->price?></td>

	<td colspan="4" class="clearfix">

<div class="float-right"> 
<a href="#" title="Edit product" class="btn-edit"><span class="sr-only">Edit</span><i class="icon-pencil"></i></a>
<a href="#" title="Remove product" id="removeItem"   class="btn-remove"><span class="sr-only">Remove</span></a>  
</div><!-- End .float-right -->

</td> 






<?php



  }

}



     ?>


</tr>





     <?php
}
?>
</tbody>
<tfoot>
<tr>
<td colspan="4" class="clearfix">
<div class="float-left">
<a href="category.html" class="btn btn-outline-secondary">Continue Shopping</a>
</div><!-- End .float-left -->
<div class="float-right">
<a href="#" class="btn btn-outline-secondary btn-clear-cart">Clear Shopping Cart</a>
<a href="#" class="btn btn-outline-secondary btn-update-cart">Update Shopping Cart</a>
</div><!-- End .float-right -->
</td>
</tr>
</tfoot>
</table>
</div><!-- End .cart-table-container -->
<div class="cart-discount">
<h4>Apply Discount Code</h4>
<form action="#">
<div class="input-group">
<input type="text" class="form-control form-control-sm" placeholder="Enter discount code"  required>
<div class="input-group-append">
<button class="btn btn-sm btn-primary" type="submit">Apply Discount</button>
</div>
</div><!-- End .input-group -->
</form>
</div><!-- End .cart-discount -->
</div><!-- End .col-lg-8 -->
<div class="col-lg-4">
<div class="cart-summary">
<h3>Summary</h3>
<h4>
<a data-toggle="collapse" href="#total-estimate-section" class="collapsed" role="button" aria-expanded="false" aria-controls="total-estimate-section">Estimate Shipping and Tax</a>
</h4>
<div class="collapse" id="total-estimate-section">
<form action="#">
<div class="form-group form-group-sm">
<label>Country</label>
<div class="select-custom">
<select class="form-control form-control-sm">
<option value="USA">United States</option>
<option value="Turkey">Turkey</option>
<option value="China">China</option>
<option value="Germany">Germany</option>
</select>
</div><!-- End .select-custom -->
</div><!-- End .form-group -->
<div class="form-group form-group-sm">
<label>State/Province</label>
<div class="select-custom">
<select class="form-control form-control-sm">
<option value="CA">California</option>
<option value="TX">Texas</option>
</select>
</div><!-- End .select-custom -->
</div><!-- End .form-group -->
<div class="form-group form-group-sm">
<label>Zip/Postal Code</label>
<input type="text" class="form-control form-control-sm">
</div><!-- End .form-group -->
<div class="form-group form-group-custom-control">
<label>Flat Way</label>
<div class="custom-control custom-checkbox">
<input type="checkbox" class="custom-control-input" id="flat-rate">
<label class="custom-control-label" for="flat-rate">Fixed $5.00</label>
</div><!-- End .custom-checkbox -->
</div><!-- End .form-group -->
<div class="form-group form-group-custom-control">
<label>Best Rate</label>
<div class="custom-control custom-checkbox">
<input type="checkbox" class="custom-control-input" id="best-rate">
<label class="custom-control-label" for="best-rate">Table Rate $15.00</label>
</div><!-- End .custom-checkbox -->
</div><!-- End .form-group -->
</form>
</div><!-- End #total-estimate-section -->
<table class="table table-totals">
<tbody>
<tr>
<td>Subtotal</td>
<td>

</td>  
</tr>
<tr>
<td>Tax</td>
<td>$0.00</td>
</tr>
</tbody>
<tfoot>
<tr>
<td>Order Total</td>
<td>

</td>
</tr>
</tfoot>
</table>

<div class="checkout-methods">
<a href="checkout-shipping.html" class="btn btn-block btn-sm btn-primary">Go to Checkout</a>
<a href="#" class="btn btn-link btn-block">Check Out with Multiple Addresses</a>
</div><!-- End .checkout-methods -->
</div><!-- End .cart-summary -->
</div><!-- End .col-lg-4 -->
</div><!-- End .row -->
</div><!-- End .container -->
<div class="mb-6"></div><!-- margin -->
</main><!-- End .main -->
</div>
<!--- Plugins JS File -->
<script src="{{ URL::asset('public/frontend/assets/js/jquery.min.js') }}"></script>
<script src="{{ URL::asset('public/frontend/assets/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ URL::asset('public/frontend/assets/js/plugins.min.js') }}"></script>
<!-- Main JS File -->
<script src="{{ URL::asset('public/frontend/assets/js/main.min.js') }}"></script>
@endsection
@section('extrascript')
@endsection