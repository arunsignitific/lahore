@extends('frontend/common/webmaster')
@section('title'," | $product->meta_title")

@section('linkfile')
<meta name="keywords" content="{{ $product->meta_keyword }}" />
<meta name="description" content="{{ $product->meta_description }}">
<style>
    .product-single-details .add-cart {
    min-width: 200px;
}.product-single-details .paction {
    height: 60px;
    /* min-width: 43px; */
}.paction span {
    /* display: none; */
    padding-right: .1rem;
    padding-left: .4rem;
    font-size: 2.2rem;
    letter-spacing: .02rem;
}
</style>  
@endsection
 
@section('content')
<main class="main">

<!-- <div id = 'msg'></div>
     
<button onClick='getMessage()'>Add data</button>  -->
<!-- 
   <script>

    var url ='{{url('/')}}/cart' ;

         function getMessage() {
            $.ajax({
               type:'POST',
               headers: {'X-CSRF-TOKEN': '<?php echo csrf_token() ?>'},
               url:url,
               data: {id: '<?php echo $product->id;?>'},
               success:function(data) {
                $('#msg').html('<ul><li>'+data[0].images+'</li><li>'+data[0].model_no+'</li><li>'+data[0].price+'</li></ul>');
 
               }
            });    
         }
      </script> -->

    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('index') }}">Home</a></li>
                @if ($product->main_category_id == 1)
                <li class="breadcrumb-item"><a href="{{ route('product') }}">Watches</a></li>
                @else
                <li class="breadcrumb-item"><a href="{{ route('accessories') }}">Accessories</a></li>
                @endif
                <li class="breadcrumb-item active" aria-current="page">{{ $product->model_no }}</li>
            </ol> 
        </div><!-- End .container -->
    </nav>
    <div class="container">
        <div class="row mt-5">
            <div class="col-lg-9">
                <div class="product-single-container product-single-default">
                    <div class="row">
                        <div class="col-lg-7 col-md-6">
                            <div class="product-single-gallery">
                                <div class="product-slider-container product-item">
                                    <div class="product-single-carousel owl-carousel owl-theme">
                                        @if ($product->images == null || $product->images == '')
                                            <div class="product-item">
                                                <img class="product-single-image" src="{{ URL::asset('public/frontend/assets/images/images.jpeg') }}" data-zoom-image="{{ URL::asset('public/frontend/assets/images/images.jpeg') }}">
                                            </div>
                                        @else
                                            @foreach (explode(',',$product->images) as $item)
                                            <div class="product-item">
                                                <img class="product-single-image" src="{{ asset('storage/app/watch_images/'.$item) }}" data-zoom-image="{{ asset('storage/app/watch_large/'.$item) }}"/>
                                            </div>
                                            @endforeach
                                        @endif
                                    </div>
                                    <!-- End .product-single-carousel -->
                                    <span class="prod-full-screen">
                                        <i class="icon-plus"></i>
                                    </span>
                                </div>
                                <div class="prod-thumbnail row owl-dots" id='carousel-custom-dots'>
                                    @if ($product->thumb_img == null || $product->thumb_img == '')
                                        <div class="col-3 owl-dot">
                                            <img src="{{ URL::asset('public/frontend/assets/images/images.jpeg') }}">
                                        </div>
                                    @else
                                        @foreach (explode(',',$product->thumb_img) as $item)
                                        <div class="col-3 owl-dot">
                                            <img src="{{ asset('storage/app/watch_thumb/'.$item) }}"/>
                                        </div>
                                        @endforeach
                                    @endif
                                </div>
                            </div><!-- End .product-single-gallery -->
                        </div><!-- End .col-lg-7 -->

                        <div class="col-lg-5 col-md-6">
                            <div class="product-single-details text-uppercase">
                                <h2>{{ $product->brand->name }}</h2>
                                <h1 class="product-title">{{ $product->collection->name }}</h1>
                                <p>{{ $product->model_no }}</p>

                                {{-- <div class="ratings-container">
                                    <div class="product-ratings">
                                        <span class="ratings" style="width:60%"></span><!-- End .ratings -->
                                    </div><!-- End .product-ratings -->

                                    <a href="#" class="rating-link">( 6 Reviews )</a>
                                </div><!-- End .product-container --> --}}

                                <div class="price-box mt-2">
                                    {{-- <span class="old-price">$81.00</span> --}}
                                    <span class="product-price">
                                        @if($discount_price != "")
                                        <span class="text-dark mb-3">MRP:- <del>&#8377 {{ $product->price }}</del></span>
                                        <p class="mt-2" style="color:red;font-size: 30px;">&#8377 {{ $discount_price }}</p>
                                        @else
                                        <span class="text-dark mb-3">MRP:- &#8377 {{ $product->price }}</span>
                                        @endif 
                                    </span>
                                </div><!-- End .price-box -->

                                <div class="product-desc">
                                    <p>{{ strip_tags($product->description) }}</p>
                                </div><!-- End .product-desc -->

                                {{-- <div class="product-filters-container">
                                    <div class="product-single-filter">
                                        <label>Colors:</label>
                                        <ul class="config-swatch-list">
                                            <li class="active">
                                                <a href="#" style="background-color: #6085a5;"></a>
                                            </li>
                                            <li>
                                                <a href="#" style="background-color: #ab6e6e;"></a>
                                            </li>
                                            <li>
                                                <a href="#" style="background-color: #b19970;"></a>
                                            </li>
                                            <li>
                                                <a href="#" style="background-color: #11426b;"></a>
                                            </li>
                                        </ul>
                                    </div><!-- End .product-single-filter -->

                                    <div class="product-single-filter">
                                        <label>Sizes:</label>
                                        <ul class="config-size-list">
                                            <li class="active"><a href="#">S</a></li>
                                            <li><a href="#">M</a></li>
                                            <li><a href="#">L</a></li>
                                            <li><a href="#">XL</a></li>
                                        </ul>
                                    </div><!-- End .product-single-filter -->
                                </div><!-- End .product-filters-container --> --}}

                                <div class="product-action">
                                    {{-- <div class="product-single-qty">
                                        <input class="horizontal-quantity form-control" type="text">
                                    </div><!-- End .product-single-qty --> --}}
<!-- ///////// -->
<div class="action_btn_cart">
<?php

 $ar_val = []; 

if(isset($_COOKIE['cart_items_cookie'])){

$cookies_d = json_decode($_COOKIE['cart_items_cookie']);

foreach($cookies_d as $key =>$value ){
 $ar_val[] =  $key;
 }
 
 }  

if(in_array($product->id,$ar_val)){
  
?>

 <div class="product-count">
  <button class="button-count no-active" disabled>-</button>
  <input name="qty" type="text" readonly class="number-product" value="1">
  <button class="button-count">+</button>
</div>


<?php
 
}else{

 ?>
<button type="button" class="btn btn-primary" onclick="addToCart(<?php echo $product->id; ?>,1,'<?php echo $product->brand->name; ?>');">Add to Cart</button>
 <?php
}

?> 
</div>



     <!--  <a href="#"  data-toggle="modal" data-target="#exampleModalCenter" class="paction add-cart" title="Watch Enquiry">
            <span>Enquiry Now</span>
        </a> -->


                  
                                    {{-- <a href="#" class="paction add-wishlist" title="Add to Wishlist">
                                        <span>Add to Wishlist</span>
                                    </a> --}}
                                </div><!-- End .product-action -->

                                {{-- <div class="product-single-share">
                                    <label>Share:</label>
                                    <!-- www.addthis.com share plugin-->
                                    <div class="addthis_inline_share_toolbox"></div>
                                </div><!-- End .product single-share --> --}}
                            </div><!-- End .product-single-details -->
                        </div><!-- End .col-lg-5 -->
                    </div><!-- End .row -->
                </div><!-- End .product-single-container -->

                <div class="product-single-tabs">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active show" id="product-tab-desc" data-toggle="tab" href="#product-desc-content" role="tab" aria-controls="product-desc-content" aria-selected="false">Description</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="product-desc-content" role="tabpanel" aria-labelledby="product-tab-desc">
                            <table class="table table-borderless font_12 text-uppercase">
                                <thead>
                                <tr class="d-flex mb-30 justify-content-between specification_columnWidth">
                                @if($product->brand_id != null)
                                <th class="col-xl-3"><span class="">Brand<span class="d-block">
                                <a href="{{ route('brand',['slug'=>$product->brand->slug]) }}" target="_blank">{{ $product->brand->name }}</a></span></span>
                                </th>@endif
                                @if($product->collection_id != null)<th class="col-xl-3">Collection<span class="d-block text-dark"><a href="{{ route('watchFinder',['name'=>'collection', 'slug'=>$product->collection->slug]) }}" target="_blank">{{ $product->collection->name }}</a></span></span></th>@endif
                                @if($product->series != null)<th class="col-xl-3">Series<span class="d-block text-dark">{{ $product->series }}</span></span></th>@endif
                                @if($product->model_no != null)<th class="col-xl-3">Model No<span class="d-block text-dark">{{ $product->model_no }}</span></span></th>@endif
                                </tr>
                                <tr class="d-flex mb-30 justify-content-between specification_columnWidth">
                                @if($product->colour_id != null)<th class="col-xl-3">Colour<span class="d-block text-dark">{{ $product->colour->name }}</span></span></th>@endif
                                @if($product->size != null)<th class="col-xl-3">Size<span class="d-block text-dark">{{ $product->size }}</span></span></th>@endif
                                @if($product->shape != null)<th class="col-xl-3">Shape<span class="d-block text-dark">{{ $product->shape }}</span></span></th>@endif
                                @if($product->material != null)<th class="col-xl-3">Material Type<span class="d-block text-dark">{{ $product->material }}</span></span></th>@endif
                                </tr>
                                <tr class="d-flex mb-30 justify-content-between specification_columnWidth">
                                @if($product->clock_type_id != null)<th class="col-xl-3">Clock Type<span class="d-block text-dark">{{ $product->clockType->name }}</span></span></th>@endif
                                @if($product->buckle != null)<th class="col-xl-3">Buckle<span class="d-block text-dark">{{ $product->buckle }}</span></span></th>@endif
                                @if($product->nib != null)<th class="col-xl-3">NIB<span class="d-block text-dark">{{ $product->nib }}</span></span></th>@endif
                                </tr>
                                <tr class="d-flex mb-30 justify-content-between specification_columnWidth">
                                @if($product->frame_colour != null)<th class="col-xl-3">Frame Colour<span class="d-block text-dark">{{ $product->frame_colour }}</span></span></th>@endif
                                @if($product->lens != null)<th class="col-xl-3">Lens<span class="d-block text-dark">{{ $product->lens }}</span></span></th>@endif
                                @if($product->visible_ray != null)<th class="col-xl-3">Visible Ray<span class="d-block text-dark">{{ $product->visible_ray }}</span></span></th>@endif
                                @if($product->dimensions != null)<th class="col-xl-3">Dimensions<span class="d-block text-dark">{{ $product->dimensions }}</span></span></th>@endif
                                </tr>
                                <tr class="d-flex mb-30 justify-content-between specification_columnWidth">
                                @if($product->length_mm != null)<th class="col-xl-3">Length MM<span class="d-block text-dark">{{ $product->length_mm }}</span></span></th>@endif
                                @if($product->taper != null)<th class="col-xl-3">Taper<span class="d-block text-dark">{{ $product->taper }}</span></span></th>@endif
                                @if($product->clasp_type != null)<th class="col-xl-3">Clasp Type<span class="d-block text-dark">{{ $product->clasp_type }}</span></span></th>@endif
                                @if($product->clasp_size != null)<th class="col-xl-3">Clasp Size<span class="d-block text-dark">{{ $product->clasp_size }}</span></span></th>@endif
                                </tr>
                                <tr class="d-flex mb-30 justify-content-between specification_columnWidth">
                                @if($product->lock_system != null)<th class="col-xl-3">Lock System<span class="d-block text-dark">{{ $product->lock_system }}</span></span></th>@endif
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="d-flex flex-wrap justify-content-between specification_columnWidth">
                                @if($product->feature_id != null || $product->movement_id != null || $product->movement_type_id != null)
                                <td class="col-xl-3">
                                <table class="w-100 mb-20 color_40">
                                <thead>
                                <tr class="d-block mb-25">
                                <th class="d-block text-uppercase pb-10">Movement</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if($product->feature_id != null)
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Features</td>
                                <td class="d-inline-block col-12 text-dark">
                                    @foreach ($feature_id as $item)
                                        {{ $item->name }},
                                    @endforeach
                                </td>
                                </tr>@endif
                                @if($product->movement_id != null)
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Movement Type</td>
                                <td class="d-inline-block col-12 text-dark">{{ $product->movementType->name }}</td>
                                </tr>@endif
                                @if($product->movement_type_id != null)
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Movement</td>
                                <td class="d-inline-block col-12 text-dark">{{ $product->movement->name }}</td>
                                </tr>@endif
                                </tbody>
                                </table>
                                </td>
                                @endif
                                @if($product->case_size_id != null || $product->case_shape_id != null || $product->case_material_id != null || $product->glass_material_id != null)
                                <td class="col-xl-3">
                                <table class="w-100 mb-20 color_40">
                                <thead>
                                <tr class="d-block mb-25">
                                <th class="d-block text-uppercase pb-10">Case</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if($product->case_size_id != null)
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Case Size</td>
                                <td class="d-inline-block col-12 text-dark">{{ $product->caseSize->case_size }}</td>
                                </tr>
                                @endif
                                @if($product->case_shape_id != null)
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Case Shape</td>
                                <td class="d-inline-block col-12 text-dark">{{ $product->caseShape->name }}</td>
                                </tr>
                                @endif
                                @if($product->case_material_id != null)
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Case Material</td>
                                <td class="d-inline-block col-12 text-dark">{{ $product->caseMaterial->name }}</td>
                                </tr>
                                @endif
                                @if($product->glass_material_id != null)
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Glass Material</td>
                                <td class="d-inline-block col-12 text-dark">{{ $product->glassMaterial->name }}</td>
                                </tr>
                                @endif
                                </tbody>
                                </table>
                                </td>
                                @endif
                                @if($product->dial_colour_id != null)
                                <td class="col-xl-3">
                                <table class="w-100 mb-20 color_40">
                                <thead>
                                <tr class="d-block mb-25">
                                <th class="d-block text-uppercase pb-10">Dial</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Dial Colour</td>
                                <td class="d-inline-block col-12 text-dark">{{ $product->dialColour->name }}</td>
                                </tr>
                                </tbody>
                                </table>
                                </td>
                                @endif
                                <td class="col-xl-3">
                                @if($product->strap_material_id != null || $product->strap_colour_id != null)
                                <table class="w-100 mb-20 color_40">
                                <thead>
                                <tr class="d-block mb-25">
                                <th class="d-block text-uppercase pb-10">Strap</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if($product->strap_material_id != null)
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Strap Material</td>
                                <td class="d-inline-block col-12 text-dark">{{ $product->strapMaterial->name }}</td>
                                </tr>
                                @endif
                                @if($product->strap_colour_id != null)
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Strap Colour</td>
                                <td class="d-inline-block col-12 text-dark">{{ $product->strapColour->name }}</td>
                                </tr>
                                @endif
                                </tbody>
                                </table>
                                @endif
                                <table class="w-100 mb-20 color_40">
                                <thead>
                                <tr class="d-block mb-25">
                                <th class="d-block text-uppercase pb-10">Other</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if($product->gender_id != null)
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Gender</td>
                                <td class="d-inline-block col-12 text-dark">
                                    {{ $product->gender->gender }}
                                </td>
                                </tr>
                                @endif
                                @if($product->warranty_period != null)
                                <tr class="row m-0 mb-25">
                                <td class="d-inline-block col-12 text-uppercase">Warranty Period</td>
                                <td class="d-inline-block col-12 text-dark">
                                    {{ $product->warranty_period }}
                                </td>
                                </tr>
                                @endif
                                @if($product->additional_features != null)
                                {!! $product->additional_features !!}
                                @endif
                                </tbody>
                                </table>
                                </td>
                                </tr>
                                </tbody>
                                </table>
                        </div><!-- End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .product-single-tabs -->
            </div><!-- End .col-lg-9 -->

            <div class="sidebar-overlay"></div>
            <div class="sidebar-toggle"><i class="icon-sliders"></i></div>
            <aside class="sidebar-product col-lg-3 padding-left-lg mobile-sidebar">
                <div class="sidebar-wrapper">
                    {{-- <div class="widget widget-collapse">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-1" role="button" aria-expanded="true" aria-controls="widget-body-1">electronics</a>
                        </h3>

                        <div class="collapse show" id="widget-body-1">
                            <div class="widget-body">
                                <ul class="cat-list">
                                    <li><a href="#">Smart TVs</a></li>
                                    <li><a href="#">Cameras</a></li>
                                    <li><a href="#">Head Phones</a></li>
                                    <li><a href="#">Games</a></li>
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget --> --}}

                    {{-- <div class="widget widget-banner">
                        <div class="banner banner-image">
                            <a href="#">
                                <img src="{{ URL::asset('public/frontend/assets/images/amazing-colloctiion.jpg') }}" alt="Banner Desc">
                            </a>
                        </div><!-- End .banner -->
                    </div><!-- End .widget --> --}}

                    @if (count($featured)>0)
                    <div class="widget widget-featured">
                        <h3 class="widget-title">Featured Products</h3>
                        
                        <div class="widget-body">
                            <div class="owl-carousel widget-featured-products">
                                <?php $collection = collect($featured); ?>
                                @foreach ($collection->chunk(3) as $chunk)
                                <div class="featured-col">
                                    @foreach ($chunk as $item)
                                    <div class="product-default left-details product-widget">
                                        <figure>
                                            <a href="{{ route('productView', ['id'=>$item['id']]) }}">
                                                @if ($item['thumb_img'] == null)
                                                    <img src="{{ URL::asset('public/frontend/assets/images/images.jpeg') }}">
                                                @else
                                                    <?php $thumbImg = explode(',',$item['thumb_img']); ?>
                                                    @for($i=0; $i<count($thumbImg); $i++)
                                                        @if ($i == 0)
                                                            <img src="{{ asset('storage/app/watch_thumb/'.$thumbImg[0]) }}">
                                                        @endif
                                                    @endfor
                                                @endif
                                            </a>
                                        </figure>
                                        <div class="product-details">
                                            <h2 class="product-title">
                                                <a href="{{ route('productView', ['id'=>$item['id']]) }}">
                                                    @foreach ($brand_cat as $brand_ids)
                                                        @if ($item['brand_id'] == $brand_ids->id)
                                                            {{ $brand_ids->name }}
                                                        @endif
                                                    @endforeach
                                                </a>
                                            </h2>
                                            <div class="price-box">
                                                <span class="product-price">
                                                    @if($item['discount_price'] != "")
                                                    <del>MRP:- &#8377 {{ $item['price'] }}</del>
                                                    <p style="color:red;font-size: 22px;">&#8377 {{ $item['discount_price'] }}</p>
                                                    @else
                                                    MRP:- &#8377 {{ $item['price'] }}
                                                    @endif
                                                </span>
                                            </div><!-- End .price-box -->
                                        </div><!-- End .product-details -->
                                    </div>
                                    @endforeach
                                </div><!-- End .featured-col -->
                                @endforeach
                            </div><!-- End .widget-featured-slider -->
                        </div><!-- End .widget-body -->
                    </div><!-- End .widget -->
                    @endif
                </div>
            </aside><!-- End .col-md-3 -->
        </div><!-- End .row -->

        {{-- <div class="featured-section pt-sm bg-white">
            <h2 class="carousel-title">Featured Products</h2>
            <div class="featured-products owl-carousel owl-theme owl-dots-top">  
                <div class="product-default">
                    <figure>
                        <a href="product.html">
                            <img src="{{ URL::asset('public/frontend/assets/images/products/product-1.jpg') }}">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                            <div class="product-ratings">
                                <span class="ratings" style="width:100%"></span><!-- End .ratings -->
                            </div><!-- End .product-ratings -->
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Product Short Name</a>
                        </h2>
                        <div class="price-box">
                            <span class="product-price">$32.00</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <a href="#" class="btn-icon-wish"><i class="icon-heart"></i></a>
                            <button class="btn-icon btn-add-cart" data-toggle="modal" data-target="#addCartModal"><i class="icon-bag"></i>ADD TO CART</button>
                            <a href="ajax/product-quick-view.html" class="btn-quickview" title="Quick View"><i class="fas fa-external-link-alt"></i></a> 
                        </div>
                    </div><!-- End .product-details -->
                </div>
                <div class="product-default">
                    <figure>
                        <a href="product.html">
                            <img src="{{ URL::asset('public/frontend/assets/images/products/product-2.jpg') }}">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                            <div class="product-ratings">
                                <span class="ratings" style="width:100%"></span><!-- End .ratings -->
                            </div><!-- End .product-ratings -->
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Product Short Name</a>
                        </h2>
                        <div class="price-box">
                            <span class="product-price">$32.00</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <a href="#" class="btn-icon-wish"><i class="icon-heart"></i></a>
                            <button class="btn-icon btn-add-cart" data-toggle="modal" data-target="#addCartModal"><i class="icon-bag"></i>ADD TO CART</button>
                            <a href="ajax/product-quick-view.html" class="btn-quickview" title="Quick View"><i class="fas fa-external-link-alt"></i></a> 
                        </div>
                    </div><!-- End .product-details -->
                </div>
                <div class="product-default">
                    <figure>
                        <a href="product.html">
                            <img src="{{ URL::asset('public/frontend/assets/images/products/product-3.jpg') }}">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                            <div class="product-ratings">
                                <span class="ratings" style="width:100%"></span><!-- End .ratings -->
                            </div><!-- End .product-ratings -->
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Product Short Name</a>
                        </h2>
                        <div class="price-box">
                            <span class="product-price">$32.00</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <a href="#" class="btn-icon-wish"><i class="icon-heart"></i></a>
                            <button class="btn-icon btn-add-cart" data-toggle="modal" data-target="#addCartModal"><i class="icon-bag"></i>ADD TO CART</button>
                            <a href="ajax/product-quick-view.html" class="btn-quickview" title="Quick View"><i class="fas fa-external-link-alt"></i></a> 
                        </div>
                    </div><!-- End .product-details -->
                </div>
                <div class="product-default">
                    <figure>
                        <a href="product.html">
                            <img src="{{ URL::asset('public/frontend/assets/images/products/product-4.jpg') }}">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                            <div class="product-ratings">
                                <span class="ratings" style="width:100%"></span><!-- End .ratings -->
                            </div><!-- End .product-ratings -->
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Product Short Name</a>
                        </h2>
                        <div class="price-box">
                            <span class="product-price">$32.00</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <a href="#" class="btn-icon-wish"><i class="icon-heart"></i></a>
                            <button class="btn-icon btn-add-cart" data-toggle="modal" data-target="#addCartModal"><i class="icon-bag"></i>ADD TO CART</button>
                            <a href="ajax/product-quick-view.html" class="btn-quickview" title="Quick View"><i class="fas fa-external-link-alt"></i></a> 
                        </div>
                    </div><!-- End .product-details -->
                </div>
                <div class="product-default">
                    <figure>
                        <a href="product.html">
                            <img src="{{ URL::asset('public/frontend/assets/images/products/product-5.jpg') }}">
                        </a>
                    </figure>
                    <div class="product-details">
                        <div class="ratings-container">
                            <div class="product-ratings">
                                <span class="ratings" style="width:100%"></span><!-- End .ratings -->
                            </div><!-- End .product-ratings -->
                        </div><!-- End .product-container -->
                        <h2 class="product-title">
                            <a href="product.html">Product Short Name</a>
                        </h2>  
                        <div class="price-box">
                            <span class="product-price">$32.00</span>
                        </div><!-- End .price-box -->
                        <div class="product-action">
                            <a href="#" class="btn-icon-wish"><i class="icon-heart"></i></a>
                            <button class="btn-icon btn-add-cart" data-toggle="modal" data-target="#addCartModal"><i class="icon-bag"></i>ADD TO CART</button>
                            <a href="ajax/product-quick-view.html" class="btn-quickview" title="Quick View"><i class="fas fa-external-link-alt"></i></a> 
                        </div>
                    </div><!-- End .product-details -->
                </div>
            </div><!-- End .featured-proucts -->
        </div><!-- End .featured-section --> --}}

        <div class="mb-lg-4"></div><!-- margin -->
    </div><!-- End .container -->
</main><!-- End .main -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" style="max-width:550px; margin:auto;">
    <div class="modal-dialog model-sm modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          @if ($product->thumb_img == null)
                <img src="{{ URL::asset('public/frontend/assets/images/images.jpeg') }}" style="height:75px; margin-right:20px;">
          @else
              {{-- @foreach (explode(',',$product->images) as $item)
                <img src="{{ asset('storage/app/watch_images/'.$item) }}"  style="height:75px; margin-right:20px;"/>
              @endforeach --}}
              <?php $thumbImg = explode(',',$product['thumb_img']); ?>
              @for($i=0; $i<count($thumbImg); $i++)
                  @if ($i == 0)
                      <img src="{{ asset('storage/app/watch_thumb/'.$thumbImg[0]) }}" style="height:75px; margin-right:20px;">
                  @endif
              @endfor
          @endif
          <h5 class="modal-title" id="exampleModalLongTitle">Enquiry</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
             <form action="{{ route('watchMail') }}" method="post" id="watch-form">
                @csrf
                <div class="row">
                   <div class="form-group col-sm-12">
                       <input type="text" class="form-control" name="product_name" value="{{ $product->brand->name }}, {{ $product->model_no }}, {{ $product->price }}, Features:- @foreach ($feature_id as $item) {{ $item->name }},@endforeach " readonly required="">
                       <input type="hidden" name="product_id" value="{{ $product->id }}">
                   </div>
                   <div class="form-group col-sm-12"><input type="text" class="form-control" name="name" placeholder="Name*" required=""></div>
                   <div class="form-group col-sm-12"><input type="email" class="form-control" name="email" placeholder="Email*" required=""></div>
                   <div class="form-group col-sm-12"><input type="text" class="form-control" name="mob_no" placeholder="Contact No.*" required=""></div>
                   <div class="form-group col-12"><textarea name="message" class="form-control" id="message" rows="3" placeholder="Your Message"></textarea></div>
                   <div class="form-group col-12 d-flex justify-content-end"><button type="submit" class="btn btn-transparent">Submit</button></div>
                </div>
                <!-- Show Message Notification -->
                <div class="form-message"></div>
             </form>
        </div>
      </div>
    </div>
</div>


<style>

.product-count a {
  text-decoration: none;
  font-weight: 700;
  color: black;
}

.button-count {
    display: inline-block;
    width: 40px;
     height: 36px;
    background-color: #fa4a4a;
    color: white;
    font-size: 24px;
    line-height: 29px;
    text-align: center;
    border: none;
    outline: none;
}
.button-count:active {
  background-color: #1565C0;
}

.button-count:focus {
outline: none;
 background-color: #343a40;
}

.number-product {
    display: inline-block;
    width: 50px;
    height: 35px;
    font-size: 24px;
    border: 1px solid silver;
    text-align: center;
}

:disabled {
  background-color: silver;
}

</style>

@endsection

@section('extrascript')
<script> 
 

    /*======================
    Ajax Contact Form JS
    ============================*/
        // Get the form.
        var form = $('#watch-form');
        // Get the messages div.
        var formMessages = $('.form-message');
        // Set up an event listener for the contact form.
        $(form).submit(function (e) {
        // Stop the browser from submitting the form.
        e.preventDefault();
        // var form_data = new FormData($(this)[0]);
        // form_data.append('file', $('#chooseFile')[0].files[0]);
    
        // Serialize the form data.
        var formData = $(this).serialize();
        // var formData = new FormData(this);
    
        // Submit the form using AJAX.
        $.ajax({
            type: 'POST',
            url: form.attr('action'),
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: formData,
			cache: false,
            beforeSend: function(){
                $('body').removeClass('loaded');
            },
        })
        .done(function (response) {
            $('body').addClass('loaded');
            // Make sure that the formMessages div has the 'success' class.
            $(formMessages).removeClass('alert alert-danger');
            $(formMessages).addClass('alert alert-success fade show');
    
            // Set the message text.
            formMessages.html("<button type='button' class='close' data-dismiss='alert'>&times;</button>");
            formMessages.append('Your message sent Successfully');
    
            // Clear the form.
            $('#contact-form input,#contact-form textarea').val('');
        })
        .fail(function (data) {
            // Make sure that the formMessages div has the 'error' class.
            $(formMessages).removeClass('alert alert-success');
            $(formMessages).addClass('alert alert-danger fade show');
    
            // Set the message text.
            if (data.responseText !== '') {
                formMessages.html("<button type='button' class='close' data-dismiss='alert'>&times;</button>");
                formMessages.append(data.responseText);
            } else {
                $(formMessages).text('Oops! An error occurred and your message could not be sent.');
            }
        });
    });
</script>
@endsection