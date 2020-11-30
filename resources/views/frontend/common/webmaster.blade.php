<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Lahore Watch Co. @yield('title')</title>
<meta name="author" content="SW-THEMES">
<!-- <meta name="csrf-token" content="{{ csrf_token() }}"> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


 
<!-- Favicon -->
<link rel="icon" type="image/x-icon" href="{{ URL::asset('public/frontend/assets/images/icons/favicon.ico') }}">

<script type="text/javascript">
WebFontConfig = {
google: { families: [ 'Open+Sans:300,400,600,700,800','Poppins:300,400,500,600,700','Segoe Script:300,400,500,600,700' ] }
};
(function(d) {
var wf = d.createElement('script'), s = d.scripts[0];
wf.src = "{{ URL::asset('public/frontend/assets/js/webfont.js') }}";
wf.async = true;
s.parentNode.insertBefore(wf, s);
})(document); 
</script>

<!-- Plugins CSS File -->
<link rel="stylesheet" href="{{ URL::asset('public/frontend/assets/css/bootstrap.min.css') }}">
<!-- Main CSS File -->
<link rel="stylesheet" href="{{ URL::asset('public/frontend/assets/css/style.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('public/frontend/assets/vendor/fontawesome-free/css/all.min.css') }}">
@section('linkfile')
@show
<style>
.footer-copyright {
font-size: 1.5rem;
}
</style>
</head>
<body>
<div class="page-wrapper">
<header class="header">
<div class="header-middle">
<div class="container">
<div class="header-left">
<a href="{{ route('index') }}" class="logo">
<img src="{{ URL::asset('public/frontend/assets/images/logo.png') }}" alt="Porto Logo">
</a>
</div><!-- End .header-left -->
<div class="header-center">
<div class="header-search">
<a href="#" class="search-toggle" role="button"><i class="icon-magnifier"></i></a>
<form action="{{ route('brandSearch') }}" method="get">
<div class="header-search-wrapper">
<input type="search" class="form-control" name="q" id="q" placeholder="Search..." required>
<div class="select-custom">
<select id="cat" name="brand_cat" class="text-uppercase">
<option value="">All Brand</option>
@foreach ($brand_cat as $item)
<option value="{{ $item->id }}">{{ $item->name }}</option>
@endforeach
</select>
</div><!-- End .select-custom -->
<button class="btn" type="submit"><i class="icon-magnifier"></i></button>
</div><!-- End .header-search-wrapper -->
</form>
</div><!-- End .header-search -->
</div><!-- End .headeer-center -->
<div class="header-right">
<button class="mobile-menu-toggler" type="button">
<i class="icon-menu"></i>
</button>

<div class="header-dropdown dropdown-expanded">
<div class="header-menu">
<ul>
<li><a href="{{ route('blog') }}">BLOG</a></li>
<li><a href="{{ route('contact') }}">Contact</a></li>
<li><a href="{{ route('about') }}">About Us</a></li>
                <li class="dropdown cart-dropdown">
<?php

   if($usersSession != NULL ){

?>
    
 @foreach($usersData as $userData)
           
   <a href="{{$userData->id}}">{{$userData->name}} &nbsp; </a>

                <div class="dropdown-menu" >
                <div class="dropdownmenu-wrapper">
                <div class="dropdown-cart-products">
                <div class="product">
                <h4 class="product-title">
                <a href="{{route('user-profile')}}/{{$userData->id}}"> Profile</a>
                </h4>
                </div>
                <div class="product">
                <h4 class="product-title">
                <a href="{{route('user-logout')}}">Logout</a>
                </h4>

                </div>
                </div><!-- End .cart-product -->
                </div><!-- End .dropdownmenu-wrapper -->
                </div><!-- End .dropdown-menu -->
                   
@endforeach

<?php
         }else{ 

?>
 <a href="{{ url('user-login') }}"> Login &nbsp;</a>
<?php
         }

?>


      
                </li>
</ul>
</div><!-- End .header-menu -->
</div><!-- End .header-dropown -->
<div class="dropdown cart-dropdown">
<a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">




<?php

if(isset($_COOKIE['cart_items_cookie'])){

$cart_data =  json_decode($_COOKIE['cart_items_cookie']);

$total = 0; 
$totalitem = 0;
foreach( $cart_data as $key=>$value){

 $data = DB::table('product_details')
                        ->select('product_details.*','brands.name','brands.slug','brands.logo_img')
                        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.id','=',$key)
                        ->get();

$totalitem += count($data);
 
}
?>



<span class="cart-count">{{$totalitem}}</span>

<?php
}else{echo '<span class="cart-count">0</span>';}
?>
</a>
<div class="dropdown-menu" >
<div class="dropdownmenu-wrapper ">

<!-- <div class="dropdown-cart-header">
<span>2 Items</span>
<a href="cart.html">View Cart</a>
</div>End .dropdown-cart-header
 -->
<?php

if(isset($_COOKIE['cart_items_cookie'])){ ?>
 <div class="dropdown_cart">

<?php $cart_data =  json_decode($_COOKIE['cart_items_cookie']);

$total = 0; 
$totalitem = 0;
foreach( $cart_data as $key=>$value){


 $data = DB::table('product_details')
                        ->select('product_details.*','brands.name as brand_name','brands.slug','collections.name')
                        ->join('brands', 'product_details.brand_id', '=', 'brands.id')
                        ->join('collections', 'product_details.collection_id', '=', 'collections.id')
                        ->where('product_details.status','=', 1)
                        ->where('product_details.id','=',$key)
                        ->get();

            
$m_data = explode(',', $data[0]->images);


?>

<div class="dropdown-cart-products prods-{{ $data[0]->id }}">
<div class="product">

<div class="product-details">
<h4 class="product-title">
<a href="product.html"></a>
</h4>
<!--  -->
<span class="cart-product-info">
     
<p>{{$data[0]->name}}</p> 

<!-- ///cart11// -->
<span class="cart-product-qty">{{count($data)}}</span>
x 
</span> <span>  {{ $data[0]->price}}</span>

</div><!-- End .product-details -->


<figure class="product-image-container">
<a href="product.html" class="product-image">
<img src="{{url('/storage/app/watch_thumb')}}/<?php echo $m_data[0] ; ?>" alt="product">
</a>
<a href="javascript:void(0);" onclick="removeCart(<?php echo $data[0]->id; ?>);" id="btnRemove" class="btn-remove" title="Remove Product"><i class="icon-cancel"></i></a>

<input type="hidden" name="pid" value="{{ $data[0]->id }}">
</figure> 
</div><!-- End .product --> 
</div><!-- End .cart-product -->

<?php
$total += $data[0]->price;
} 

}?>



</div>   

<div  id="totalAmount">

<?php
if($total>0){
?>
<div class="dropdown-cart-total"><span> ₹  <?=$total?></span><span class="cart-total-price">Total</span></div>
</div>
<?php

?>

<?php

}
?>

<div class="dropdown-cart-action checkout-btn">


<?php
if($total>0){
?>
  <a id="checkoutBtn_liv" href="{{url('/add-to-cart')}}" class="btn btn-block">Checkout</a>
<?php

?>
<?php

}
?>


 
</div><!-- End .dropdown-cart-total -->
</div><!-- End .dropdownmenu-wrapper -->
</div><!-- End .dropdown-menu -->
</div><!-- End .dropdown -->
</div><!-- End .header-right -->
</div><!-- End .container -->
</div><!-- End .header-middle -->
<div class="header-bottom sticky-header">
<div class="container">
<nav class="main-nav">
<ul class="menu sf-arrows">
<li class="{{ Request::segment(1) == '' ? 'active' : '' }}"><a href="{{ route('index') }}" id="index">Home</a></li>
<li class="{{ Request::segment(1) == 'brand' ? 'active' : '' }}">
<a href="#" class="sf-with-ul">Brands</a>
<div class="megamenu megamenu-fixed-width">
<div class="row">
{{-- <div class="@if(count($brand_cat)<8) col-lg-3 @elseif(count($brand_cat)>8 && count($brand_cat)<16) col-lg-6 @elseif(count($brand_cat)>16 && count($brand_cat)<24) col-lg-9 @else col-lg-12 @endif"> --}}
@foreach ($brand_cat->chunk(8) as $item)
<div class="col-lg-6">
{{-- <div class="row"> --}}
<div class="col-lg-12">
<ul>
@foreach ($item as $itemCol)
<li><a href="{{ route('brand',['slug'=>$itemCol->slug]) }}">{{ $itemCol->name }}</a></li>
@endforeach
</ul>
</div><!-- End .col-lg-3 -->
{{-- </div><!-- End .row --> --}}
</div><!-- End .col-lg-8 -->
@endforeach
{{-- <div class="col-lg-4">
<div class="banner">
<a href="#">
<img src="{{ URL::asset('public/frontend/assets/images/menu-banner-2.jpg') }}" alt="Menu banner">
</a>
</div><!-- End .banner -->
</div><!-- End .col-lg-4 --> --}}
</div>
</div><!-- End .megamenu -->
</li>
<li class="megamenu-container ">
<a href="#" class="sf-with-ul">WATCH FINDER</a>
<div class="megamenu">
<div class="row">
<div class="col-lg-8">
<div class="row">
<div class="col-lg-4">
<div class="menu-title">
<a href="#">By Brand</a>
</div>
<ul style="overflow: auto; max-height:300px;">
@foreach ($brand_cat as $item)
<li><a href="{{ route('brand',['slug'=>$item->slug]) }}">{{ $item->name }}</a></li>
@endforeach
</ul>
</div><!-- End .col-lg-4 -->
<div class="col-lg-4">
<div class="menu-title">
<a href="#">By Gender</a>
</div>
<ul>
<li><a href="{{ url('/product?gender=men') }}">Watches For Men</a></li>
<li><a href="{{ url('/product?gender=women') }}">Watches For Women</a></li>
<li><a href="{{ url('/product?gender=unisex') }}">Unisex Watches</a></li>
<li><a href="{{ url('/product?gender=couple') }}">Couple Watches</a></li>
</ul>
<div class="menu-title">
<a href="#">By Price</a>
</div>
<ul style="overflow: auto; max-height: 150px;">
<li><a href="{{ url('/product?price=2500-5000') }}">₹ 2,500 - ₹ 5,000</a></li>
<li><a href="{{ url('/product?price=5000-10000') }}">₹ 5,000 - ₹ 10,000</a></li>
<li><a href="{{ url('/product?price=10000-50000') }}">₹ 10,000 - ₹ 50,000</a></li>
<li><a href="{{ url('/product?price=50000-100000') }}">₹ 50,000 - ₹ 100,000</a></li>
<li><a href="{{ url('/product?price=100000-150000') }}">₹ 100,000 - ₹ 150,000</a></li>
<li><a href="{{ url('/product?price=150000-200000') }}">₹ 150,000 - ₹ 200,000</a></li>
<li><a href="{{ url('/product?price=200000-250000') }}">₹ 200,000 - ₹ 250,000</a></li>
<li><a href="{{ url('/product?price=250000-300000') }}">₹ 250,000 - ₹ 300,000</a></li>
<li><a href="{{ url('/product?price=300000-500000') }}">₹ 300,000 - ₹ 500,000</a></li>
<li><a href="{{ url('/product?price=500000-9000000') }}">₹ 500,000 and above</a></li>
</ul>
</div><!-- End .col-lg-4 -->
<div class="col-lg-4">
<div class="menu-title">
<a href="#">Top Collections</a>
</div>
<ul style="overflow: auto; max-height:300px;">
@foreach ($collection_cat as $item)
<li><a href="{{ route('watchFinder',['name'=>'collection', 'slug'=>$item->slug]) }}">{{ $item->name }}</a></li>
@endforeach
</ul>
</div><!-- End .col-lg-4 -->
</div><!-- End .row -->
</div><!-- End .col-lg-8 -->
<div class="col-lg-4">
<div class="menu-title">
<a href="#">Material</a>
</div>
<ul style="overflow: auto; max-height:150px;">
@foreach ($strap_material_cat as $item)
<li><a href="{{ route('watchFinder',['name'=>'material', 'slug'=>$item->slug]) }}">{{ $item->name }}</a></li>
@endforeach
</ul>
<div class="menu-title">
<a href="#">Feature</a>
</div>
<ul style="overflow: auto; max-height:150px;">
@foreach ($feature_cat as $item)
<li><a href="{{ route('watchFinder',['name'=>'feature', 'slug'=>$item->slug]) }}">{{ $item->name }}</a></li>
@endforeach
</ul>
</div><!-- End .col-lg-4 -->
</div><!-- End .row -->
</div><!-- End .megamenu -->
</li>
<li class="{{ Request::segment(1) == 'accessories' ? 'active' : '' }}">
<a href="{{ route('accessories') }}">Accessories</a>
</li>
<li class="{{ Request::segment(1) == 'repair-and-services' ? 'active' : '' }}">
<a href="{{ route('repairServices') }}">Repair & Services</a>
</li>
<li class="{{ Request::segment(1) == 'store' ? 'active' : '' }}"><a href="{{ route('store') }}">Stores</a>
</li>
{{-- <li class="float-right buy-effect"><a href="https://1.envato.market/DdLk5" target="_blank"><span>buy Porto!</span></a></li>--}}

<li class="float-right {{ Request::segment(1) == 'sale' ? 'active' : '' }}"><a href="{{ route('sale') }}">Sale!</a></li>
</ul>
</nav>
</div><!-- End .header-bottom -->
</div><!-- End .header-bottom -->
</header><!-- End .header -->
@section('content')
@show
<footer class="footer">
<div class="footer-middle">
<div class="container">
<div class="row">
<div class="col-lg-3 col-md-6">
<div class="widget">
<h4 class="widget-title">Quick Links</h4>
<ul class="links">
@foreach ($footer_brands as $item)
<li class="text-uppercase"><a href="{{ route('brand',['slug'=>$item->slug]) }}">{{ $item->name }}</a></li>
@endforeach
</ul>
</div><!-- End .widget -->
<div class="widget">
<h4 class="widget-title">Follow Us on:</h4>
<a href="https://www.facebook.com/lahorewatchhouse/" class="social-icon" target="_blank"><i class="icon-facebook"></i></a>
<a href="https://instagram.com/lahorewatchco?igshid=10rfaft7yzv46" class="social-icon" target="_blank"><i class="icon-instagram"></i></a>
</div><!-- End .social-icons -->
</div><!-- End .col-lg-3 -->
<div class="col-lg-3 col-md-6">
<div class="widget">
<h4 class="widget-title">Important Links</h4>
<ul class="links">
<li><a href="{{ route('about') }}">About Us</a></li>
<li><a href="{{ route('contact') }}">Contact Us</a></li>
<!-- <li><a href="{{ route('blog') }}">Blog</a></li> -->
<li><a href="{{ route('repairServices') }}">Repair & Services</a></li>
<li><a href="{{ route('sale') }}">Sale</a></li>
</ul>
</div><!-- End .widget -->
</div><!-- End .col-lg-2 -->
{{-- <div class="col-lg-5 col-md-6">
<div class="widget widget-newsletter">
<h4 class="widget-title">Subscribe newsletter</h4>
<p>Get all the latest information on Events,Sales and Offers. Sign up for newsletter today</p>
<form action="#">
<input type="email" class="form-control" placeholder="Email address" required>
<button type="submit" class="btn">Subscribe<i class="icon-angle-right"></i></button>
</form>
</div><!-- End .widget -->
</div><!-- End .col-lg-5 --> --}}
<div class="col-lg-3 col-md-6">
<div class="widget">
<ul class="contact-info">
<li>
<span class="contact-info-label">Store Address:</span>
Shop No. 112, 113, <br>
Gaffar Market, Block 23, <br>
Beadonpura, Karol Bagh, <br>
New Delhi, Delhi, Pin Code - 110005
</li>
<li>
<span class="contact-info-label">Phone:</span>Toll Free: <a href="tel:01128729564">011 - 28729564</a>
</li>
<li>
<span class="contact-info-label">Email:</span> <a href="mailto:Lahorewatchco1950@gmail.com">Lahorewatchco1950@gmail.com</a>
</li>
<li>
<span class="contact-info-label">Working Days/Hours:</span>
Closes  8:30 PM
</li>
</ul>
</div><!-- End .widget -->
</div><!-- End .col-lg-4 -->
<div class="col-lg-3 col-md-6">
<div class="widget">
<ul class="contact-info">
<li>
<span class="contact-info-label">Store Address:</span>
G - 4, South Extention, <br>
Part - I, <br>
New Delhi,<br>
Pin Code - 110049
</li>
<li>
<span class="contact-info-label">Phone:</span>Toll Free: <a href="tel:01128729564">011 - 28729564</a>
</li>
<li>
<span class="contact-info-label">Email:</span> <a href="mailto:Lahorewatchco1950@gmail.com">Lahorewatchco1950@gmail.com</a>
</li>
<li>
<span class="contact-info-label">Working Days/Hours:</span>
Closes  8:30 PM
</li>
</ul>
</div><!-- End .widget -->
</div><!-- End .col-lg-4 -->
</div><!-- End .row -->
</div><!-- End .container -->
</div><!-- End .footer-middle -->
{{-- <div class="container">
<div class="row">
<div class="col-12 pt-4 pb-3">
    <div class="footer-bottom">
        <div class="row">
            <div class="col-lg-4 col-sm-12 text-left">
                <p class="footer-copyright">Lahore Watches. &copy;  2018.  All Rights Reserved</p>
            </div>
            <div class="col-lg-4 col-sm-12 text-center">
                <div class="social-icons">
                    <a href="#" class="social-icon" target="_blank"><i class="icon-facebook"></i></a>
                    <a href="#" class="social-icon" target="_blank"><i class="icon-twitter"></i></a>
                    <a href="#" class="social-icon" target="_blank"><i class="icon-linkedin"></i></a>
                    </div><!-- End .social-icons -->
                </div>
                <div class="col-lg-4 col-sm-12 text-right">
                    <p class="footer-copyright">Lahore Watches. &copy;  2018.  All Rights Reserved</p>
                </div>
            </div>  
            </div><!-- End .footer-bottom -->
        </div>
    </div>
    </div><!-- End .containr --> --}}
    <div class="container">
        <div class="footer-bottom d-flex justify-content-between">
            <p class="footer-copyright">Lahore Watch Co. &copy;  2018.  All Rights Reserved</p>
            <p class="footer-copyright d-flex">Powered By <a href="http://www.doorsstudio.com/" style="color:#aaaaaa;" rel="nofollow" target="_blank" title="Digital Agency in India"> <img src="{{ URL::asset('public/frontend/assets/images/doors-logo.jpg') }}" class="ml-2" alt=""></a></p>
            </div><!-- End .footer-bottom -->
            </div><!-- End .containr -->
            </footer><!-- End .footer -->
            </div><!-- End .page-wrapper -->
            <div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->
            <div class="mobile-menu-container">
                <div class="mobile-menu-wrapper">
                    <span class="mobile-menu-close"><i class="icon-cancel"></i></span>
                    <nav class="mobile-nav">
                        <ul class="mobile-menu">
                            <li class="{{ Request::segment(1) == '' ? 'active' : '' }}"><a href="{{ route('index') }}">Home</a></li>
                            <li class="{{ Request::segment(1) == 'brand' ? 'active' : '' }}">
                                <a href="#">Brands</a>
                                <ul>
                                    @foreach ($brand_cat as $item)
                                    <li><a href="{{ route('brand',['slug'=>$item->slug]) }}">{{ $item->name }}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                            <li class="<!- -->">
                                <a href="#">WATCH FINDER</a>
                                <ul>
                                    <li>
                                        <a href="#">By Brand</a>
                                        <ul>
                                            @foreach ($brand_cat as $item)
                                            <li><a href="{{ route('brand',['slug'=>$item->slug]) }}" class="text-uppercase">{{ $item->name }}</a></li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">By Gender</a>
                                        <ul>
                                            <li><a href="{{ url('/product?gender=men') }}">Watches For Men</a></li>
                                            <li><a href="{{ url('/product?gender=women') }}">Watches For Women</a></li>
                                            <li><a href="{{ url('/product?gender=unisex') }}">Unisex Watches</a></li>
                                            <li><a href="{{ url('/product?gender=couple') }}">Couple Watches</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">By Price</a>
                                        <ul>
                                            <li><a href="{{ url('/product?price=2500-5000') }}">₹ 2,500 - ₹ 5,000</a></li>
                                            <li><a href="{{ url('/product?price=5000-10000') }}">₹ 5,000 - ₹ 10,000</a></li>
                                            <li><a href="{{ url('/product?price=10000-50000') }}">₹ 10,000 - ₹ 50,000</a></li>
                                            <li><a href="{{ url('/product?price=50000-100000') }}">₹ 50,000 - ₹ 100,000</a></li>
                                            <li><a href="{{ url('/product?price=100000-150000') }}">₹ 100,000 - ₹ 150,000</a></li>
                                            <li><a href="{{ url('/product?price=150000-200000') }}">₹ 150,000 - ₹ 200,000</a></li>
                                            <li><a href="{{ url('/product?price=200000-250000') }}">₹ 200,000 - ₹ 250,000</a></li>
                                            <li><a href="{{ url('/product?price=250000-300000') }}">₹ 250,000 - ₹ 300,000</a></li>
                                            <li><a href="{{ url('/product?price=300000-500000') }}">₹ 300,000 - ₹ 500,000</a></li>
                                            <li><a href="{{ url('/product?price=500000-9000000') }}">₹ 500,000 and above</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Top Collections</a>
                                        <ul>
                                            @foreach ($collection_cat as $item)
                                            <li><a href="{{ route('watchFinder',['name'=>'collection', 'slug'=>$item->slug]) }}">{{ $item->name }}</a></li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Material</a>
                                        <ul>
                                            @foreach ($strap_material_cat as $item)
                                            <li><a href="{{ route('watchFinder',['name'=>'material', 'slug'=>$item->slug]) }}">{{ $item->name }}</a></li>
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Feature</a>
                                        <ul>
                                            @foreach ($feature_cat as $item)
                                            <li><a href="{{ route('watchFinder',['name'=>'feature', 'slug'=>$item->slug]) }}">{{ $item->name }}</a></li>
                                            @endforeach
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="{{ Request::segment(1) == 'accessories' ? 'active' : '' }}"><a href="{{ route('accessories') }}">Accessories</a></li>
                            <li class="{{ Request::segment(1) == 'repair-and-services' ? 'active' : '' }}"><a href="{{ route('repairServices') }}">Repair & Services</a></li>
                            <li class="{{ Request::segment(1) == 'store' ? 'active' : '' }}"><a href="{{ route('store') }}">Stores</a></li>
                            <li class="{{ Request::segment(1) == 'blog' ? 'active' : '' }}"><a href="{{ route('blog') }}">Blog</a></li>
                            <li class="{{ Request::segment(1) == 'about-us' ? 'active' : '' }}"><a href="{{ route('about') }}">About Us</a></li>
                            <li class="{{ Request::segment(1) == 'contact-us' ? 'active' : '' }}"><a href="{{ route('contact') }}">Contact Us</a></li>
                            <li class="{{ Request::segment(1) == 'sale' ? 'active' : '' }}"><a href="{{ route('sale') }}">Sale!<span class="tip tip-hot">Hot!</span></a></li>
                        </ul>
                        </nav><!-- End .mobile-nav -->
                        <div class="social-icons">
                            <a href="https://www.facebook.com/lahorewatchhouse/" class="social-icon" target="_blank"><i class="icon-facebook"></i></a>
                            <a href="https://instagram.com/lahorewatchco?igshid=10rfaft7yzv46" class="social-icon" target="_blank"><i class="icon-instagram"></i></a>
                            </div><!-- End .social-icons -->
                            </div><!-- End .mobile-menu-wrapper -->
                            </div><!-- End .mobile-menu-container -->
                            <div class="newsletter-popup mfp-hide" id="newsletter-popup-form" style="background-image: url('public/frontend/assets/images/newsletter_popup_bg.jpg')">
                                <div class="newsletter-popup-content">
                                    <img src="{{ URL::asset('public/frontend/assets/images/logo-black.png') }}" alt="Logo" class="logo-newsletter">
                                    <h2>BE THE FIRST TO KNOW</h2>
                                    <p>Subscribe to the Porto eCommerce newsletter to receive timely updates from your favorite products.</p>
                                    <form action="#">
                                        <div class="input-group">
                                            <input type="email" class="form-control" id="newsletter-email" name="newsletter-email" placeholder="Email address" required>
                                            <input type="submit" class="btn" value="Go!">
                                            </div><!-- End .from-group -->
                                        </form>
                                        <div class="newsletter-subscribe">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="1">
                                                    Don't show this popup again
                                                </label>
                                            </div>
                                        </div>
                                        </div><!-- End .newsletter-popup-content -->
                                        </div><!-- End .newsletter-popup -->
                                        <!-- Add Cart Modal -->
                                        <div class="modal fade" id="addCartModal" tabindex="-1" role="dialog" aria-labelledby="addCartModal" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-body add-cart-box text-center">
                                                        <p>You've just added this product to the<br>cart:</p>
                                                        <h4 id="productTitle"></h4>
                                                        <img src="#" id="productImage" width="100" height="100" alt="adding cart image">
                                                        <div class="btn-actions">
                                                            <a href="#"><button class="btn-primary">Go to cart page</button></a>
                                                            <a href="#"><button class="btn-primary" data-dismiss="modal">Continue</button></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a id="scroll-top" href="#top" title="Top" role="button"><i class="icon-angle-up"></i></a>
                                        <!-- Plugins JS File -->
                                        <script src="{{ URL::asset('public/frontend/assets/js/jquery.min.js') }}"></script>
                                        <script src="{{ URL::asset('public/frontend/assets/js/bootstrap.bundle.min.js') }}"></script>
                                        <script src="{{ URL::asset('public/frontend/assets/js/plugins.min.js') }}"></script>
                                        <!-- Main JS File -->
                                        <script src="{{ URL::asset('public/frontend/assets/js/main.min.js') }}"></script>
                                        @section('extrascript')
                                        @show
                                    </body>
                                </html>
<script>  


var cart_url='{{route("cart")}}' ;

/*//cart11//*/

function addToCart(proid,qty,brand_name){
 
   $.ajax({
            type: 'POST',
            url: cart_url,
            data: {"proid":proid,"qty":qty,"brand_name":brand_name},
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            cache: false,
            success: function(data){

            

                /*console.log(data);*/
                var duce = jQuery.parseJSON(data);




               
                $('.cart-count').text(duce.totalitems);


                var cart_items = '<div class="dropdown-cart-products prods-'+duce.data[0].hidden_prod_id+'">  <div class="product">       <div class="product-details">    <h4 class="product-title">   <a href="product.html"></a> </h4><p>'+duce.data[0].hidden_prod_col_name+'</p>    <span class="cart-product-info">   <span class="cart-product-qty">'+duce.data[0].itemqty+'</span>    x   </span> <span>'+duce.data[0].price+'</span>   </div>          <figure class="product-image-container">'+
                '<a href="product.html" class="product-image">                   <img src="'+duce.data[0].product_img+'" alt="product">              </a>                <a href="javascript:void(0);" onclick="removeCart('+duce.data[0].hidden_prod_id+');" id="btnRemove" class="btn-remove" title="Remove Product"><i class="icon-cancel"></i></a>              <input type="hidden" name="pid" value="'+duce.data[0].hidden_prod_id+'">            </figure></div> </div>';

 


                $('.dropdown_cart').append(cart_items);


                $('.dropdown_cart h4').remove();
                var btn_count = '<div class="product-count"> <button class="button-count no-active" disabled>-</button> <input name="qty" type="text" readonly class="number-product" value="1"> <button class="button-count">+</button></div>';
         
                     $('.action_btn_cart').html(btn_count); 
                     $('#total_count').html(duce.totalitems); 

                     console.log(btn_count);

                     $('#totalAmount').html('<div class="dropdown-cart-total"><span> ₹  '+duce.total_price+'</span><span class="cart-total-price">Total</span></div>');

                      $('.checkout-btn').html('<a id="checkoutBtn" href="{{url("/add-to-cart")}}" class="btn btn-block">Checkout</a>'); 

      
            }  
        })


}



function removeItem(pid){

var url = '{{route("removeCartitem")}}';

$.ajax({
        type: 'POST', 
        url: url,
        headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
    data: {  
        'pid': pid, 
            },
            cache: false,
            success: function(data){
                $('.cart-item-'+pid).remove();
              
            }
});
}

function removeCart(pid){
var url = '{{route("removeitem")}}';
    $.ajax({
            type: 'POST', 
            url: url,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
    data: {  
        'pid': pid, 
            },
            cache: false,
            success: function(data){

                var duce = jQuery.parseJSON(data);
                 var fin_amount = duce.total_price - duce.price;
                $('.cart-count').text(duce.totalitems);
                $('.prods-'+pid).remove(); 
                console.log(fin_amount); 
                if(fin_amount>0){
                     $('#totalAmount').html('<div class="dropdown-cart-total"><span> ₹ '+fin_amount+'</span><span class="cart-total-price">Total</span></div>');

                     $('.checkout-btn').html('<a id="checkoutBtn"  href="{{url("/add-to-cart")}}" class="btn btn-block">Checkout</a>');

                 }else{

                    $('#totalAmount').html('<div class="dropdown-cart-total"><span>Your cart is empty </span></div>');

                     $('.checkout-btn').html('');
                 }


                 cookie_cart

               
              

            },
        })

}               
  

    var num;
 
$('.button-count:first-child').click(function(){
  num = parseInt($('input:text').val());
  if (num > 1) {
    $('input:text').val(num - 1);
  }
  if (num == 2) {
    $('.button-count:first-child').prop('disabled', true);
  }
  if (num == 10) {
    $('.button-count:last-child').prop('disabled', false);
  }
});

$('.button-count:last-child').click(function(){
  num = parseInt($('input:text').val());
  if (num < 10) {
    $('input:text').val(num + 1);
  }
  if (num > 0) {
    $('.button-count:first-child').prop('disabled', false);
  }
  if (num == 9) {
    $('.button-count:last-child').prop('disabled', true);
  }
});


   

                            </script>