@extends('frontend/common/webmaster')
@section('title'," | $seo->meta_title")

@section('linkfile')
<meta name="keywords" content="{{ $seo->meta_keyword }}" />
<meta name="description" content="{{ $seo->meta_description }}">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CPoppins:300,400,500,600,700%7CSegoe+Script:300,400,500,600,700" media="all">
<style>
    li.page-abtn {
        display: none;
    }
    .page-abtn:first-child,
    .page-abtn:nth-child( 2 ),
    .page-abtn:nth-last-child( 2 ),
    .page-abtn:last-child,
    .page-abtn.active,
    .page-abtn.disabled {
        display: block;
    }
</style>
@endsection

@section('content')
<main class="main">
    @if (!empty($brandHeading))
        <div class="banner banner-cat" style="background-image: url('{{ asset('storage/app/header_image/'.$brandHeading->banner_img) }}');">
            <div class="banner-content container">
                <h1 class="banner-title"  style="color: {{ $brandHeading->name_color }}">{{ $brandHeading->name }}</h1>
            </div><!-- End .banner-content -->
        </div><!-- End .banner -->
    @else
        @foreach ($bannerheading as $item)
        <div class="banner banner-cat" style="background-image: url('{{ asset('storage/app/header_image/'.$item->banner_img) }}');">
            <div class="banner-content container">
                @if (!empty($item->info))<h2 class="banner-subtitle" style="color: {{ $item->info_color }}">{!! $item->info !!}</h2>@endif
                @if (!empty($item->heading))<h1 class="banner-title" style="color: {{ $item->heading_color }}">{!! $item->heading !!}</h1>@endif
                @if (!empty($item->url))<a href="{{ $item->url }}" class="btn btn-primary">Shop Now</a>@endif
            </div><!-- End .banner-content -->
        </div><!-- End .banner -->
        @endforeach
    @endif
    
    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('index') }}">Home</a></li>
                <li class="breadcrumb-item"><a href="{{ route('product') }}">Watches</a></li>
                @if(!empty($brand_slug->name))<li class="breadcrumb-item active" id="brand_name" aria-current="page">{{ $brand_slug->name }}</li>@endif
                @if(!empty($feature_slug->name))<li class="breadcrumb-item active" id="feature_name" aria-current="page">{{ $feature_slug->name }}</li>@endif
                @if(!empty($material_slug->name))<li class="breadcrumb-item active" id="material_name" aria-current="page">{{ $material_slug->name }}</li>@endif
                @if(!empty($collection_slug->name))<li class="breadcrumb-item active" id="collection_name" aria-current="page">{{ $collection_slug->name }}</li>@endif
            </ol>
        </div><!-- End .container -->
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                {{-- <nav class="toolbox">
                    <div class="toolbox-left">
                        <div class="toolbox-item toolbox-sort">
                            <div class="select-custom">
                                <select name="orderby" class="form-control">
                                    <option value="menu_order" selected="selected">Default sorting</option>
                                    <option value="popularity">Sort by popularity</option>
                                    <option value="rating">Sort by average rating</option>
                                    <option value="date">Sort by newness</option>
                                    <option value="price">Sort by price: low to high</option>
                                    <option value="price-desc">Sort by price: high to low</option>
                                </select>
                            </div><!-- End .select-custom -->

                            <a href="#" class="sorter-btn" title="Set Ascending Direction"><span class="sr-only">Set Ascending Direction</span></a>
                        </div><!-- End .toolbox-item -->
                    </div><!-- End .toolbox-left -->

                    <div class="toolbox-item toolbox-show">
                        <label>Showing 1–9 of 60 results</label>
                    </div><!-- End .toolbox-item -->

                    <div class="layout-modes">
                        <a href="category.html" class="layout-btn btn-grid active" title="Grid">
                            <i class="icon-mode-grid"></i>
                        </a>
                        <a href="category-list.html" class="layout-btn btn-list" title="List">
                            <i class="icon-mode-list"></i>
                        </a>
                    </div><!-- End .layout-modes -->
                </nav> --}}

                <div class="row row-sm" id="products">
                    @if (count($products)>0)
                    @foreach ($products as $item)
                    <div class="col-6 col-md-4 col-xl-3">
                        <div class="product-default mb-4">
                            <figure>
                                <a href="{{ route('productView', ['id'=>$item['id']]) }}">
                                    @if ($item['thumb_img'] == null || $item['thumb_img'] == '')
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
                                    <a href="{{ route('productView', ['id'=>$item['id']]) }}">{{ $item['model_no'] }}</a>
                                </h2>
                                <div class="price-box">
                                    <span class="product-price">
                                        @if($item['discount_price'] != "")
                                        <del>&#8377 {{ $item['price'] }}</del>
                                        <p style="color:red;font-size: 22px;">&#8377 {{ $item['discount_price'] }}</p>
                                        @else
                                        &#8377 {{ $item['price'] }}
                                        @endif
                                    </span>
                                </div><!-- End .price-box -->
                            </div><!-- End .product-details -->
                        </div>
                    </div><!-- End .col-md-4 -->
                    @endforeach
                    @else
                        <h2>Sorry! Matching Product Not Found</h2>
                    @endif
                </div><!-- End .row -->
                <nav class="toolbox toolbox-pagination">
                    {{-- <div class="toolbox-item toolbox-show">
                        <label>Showing 1–9 of 60 results</label>
                    </div><!-- End .toolbox-item --> --}}
                    <ul class="pagination">
                        @if (count($products_data)>0)
                            {{ $products_data->onEachSide(1)->links() }}
                        @endif
                    </ul>
                </nav>
            </div><!-- End .col-lg-9 -->

            <aside class="sidebar-shop col-lg-3 order-lg-first">
                <div class="sidebar-wrapper">
                    <div class="widget" id="gender_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-2" role="button" aria-expanded="true" aria-controls="widget-body-2">Gender</a>
                        </h3>

                        <div class="collapse show" id="widget-body-2">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="gender_list">
                                    @foreach ($gender as $item)
                                        <li class="text-dark"><input type="checkbox" name="gender[]" value="{{ $item->id }}"> {{ $item->gender }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    {{-- <div class="widget">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-3" role="button" aria-expanded="true" aria-controls="widget-body-3">Price</a>
                        </h3>

                        <div class="collapse show" id="widget-body-3">
                            <div class="widget-body">
                                <form action="#">
                                    <div class="price-slider-wrapper">
                                        <div id="price-slider"></div><!-- End #price-slider -->
                                    </div><!-- End .price-slider-wrapper -->

                                    <div class="filter-price-action">
                                        <button type="submit" class="btn btn-primary">Filter</button>

                                        <div class="filter-price-text">
                                            Price:
                                            <span id="filter-price-range"></span>
                                        </div><!-- End .filter-price-text -->
                                    </div><!-- End .filter-price-action -->
                                </form>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget --> --}}

                    <div class="widget">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-3" role="button" aria-expanded="true" aria-controls="widget-body-3">Price</a>
                        </h3>

                        <div class="collapse show" id="widget-body-3">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;">
                                    <li class="text-dark"><input type="radio" name="price" class="PriceChecked" value="0-25000"> &#8377 0 - &#8377 25000</li>
                                    <li class="text-dark"><input type="radio" name="price" class="PriceChecked" value="25000-50000"> &#8377 25000 - &#8377 50000</li>
                                    <li class="text-dark"><input type="radio" name="price" class="PriceChecked" value="50000-100000"> &#8377 50000 - &#8377 100000</li>
                                    <li class="text-dark"><input type="radio" name="price" class="PriceChecked" value="100000-300000"> &#8377 100000 - &#8377 300000</li>
                                    <li class="text-dark"><input type="radio" name="price" class="PriceChecked" value="300000-500000"> &#8377 300000 - &#8377 500000</li>
                                    <li class="text-dark"><input type="radio" name="price" class="PriceChecked" value="500000-2000000"> &#8377 500000 - &#8377 2000000</li>
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="brand_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-4" role="button" aria-expanded="true" aria-controls="widget-body-4">Brand</a>
                        </h3>

                        <div class="collapse show" id="widget-body-4">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="brand_list">
                                    @foreach ($brands as $item)
                                        <li class="text-dark"><input type="checkbox" name="brands[]" @if (!empty($brand_slug->name)) @if($brand_slug->id == $item->id) checked @endif @endif value="{{ $item->id }}"> {{ $item->name }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="casematerial_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-5" role="button" aria-expanded="false" aria-controls="widget-body-5" class="collapsed">Case Material</a>
                        </h3>

                        <div class="collapse" id="widget-body-5">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="casematerial_list">
                                    @foreach ($casematerial as $item)
                                        <li class="text-dark"><input type="checkbox" name="casematerial[]" value="{{ $item->id }}"> {{ $item->name }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="caseshape_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-6" role="button" aria-expanded="false" aria-controls="widget-body-6" class="collapsed">Case Shape</a>
                        </h3>

                        <div class="collapse" id="widget-body-6">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="caseshape_list">
                                    @foreach ($caseshape as $item)
                                    <li class="text-dark"><input type="checkbox" name="caseshape[]" value="{{ $item->id }}"> {{ $item->name }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="casesize_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-7" role="button" aria-expanded="false" aria-controls="widget-body-7" class="collapsed">Case Size</a>
                        </h3>

                        <div class="collapse" id="widget-body-7">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="casesize_list">
                                    @foreach ($casesize as $item)
                                    <li class="text-dark"><input type="checkbox" name="casesize[]" value="{{ $item->id }}"> {{ $item->case_size }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="collection_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-8" role="button" aria-expanded="false" aria-controls="widget-body-8" class="collapsed">Collection</a>
                        </h3>

                        <div class="collapse" id="widget-body-8">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="collection_list">
                                    @foreach ($collection as $item)
                                    <li class="text-dark"><input type="checkbox" name="collection[]" @if (!empty($collection_slug->name)) @if($collection_slug->id == $item->id) checked @endif @endif value="{{ $item->id }}"> {{ $item->name }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="dialcolour_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-9" role="button" aria-expanded="false" aria-controls="widget-body-9" class="collapsed">Dial Colour</a>
                        </h3>

                        <div class="collapse" id="widget-body-9">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="dialcolour_list">
                                    @foreach ($dialcolour as $item)
                                    <li class="text-dark"><input type="checkbox" name="dialcolour[]" value="{{ $item->id }}"> {{ $item->name }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="feature_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-10" role="button" aria-expanded="false" aria-controls="widget-body-10" class="collapsed">Feature</a>
                        </h3>

                        <div class="collapse" id="widget-body-10">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="feature_list">
                                    @foreach ($feature as $item)
                                    <li class="text-dark"><input type="checkbox" name="feature[]" @if (!empty($feature_slug->name)) @if($feature_slug->id == $item->id) checked @endif @endif value="{{ $item->id }}"> {{ $item->name }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="glassmaterial_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-11" role="button" aria-expanded="false" aria-controls="widget-body-11" class="collapsed">Glass Material</a>
                        </h3>

                        <div class="collapse" id="widget-body-11">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="glassmaterial_list">
                                    @foreach ($glassmaterial as $item)
                                    <li class="text-dark"><input type="checkbox" name="glassmaterial[]" value="{{ $item->id }}"> {{ $item->name }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="movement_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-12" role="button" aria-expanded="false" aria-controls="widget-body-12" class="collapsed">Movement</a>
                        </h3>

                        <div class="collapse" id="widget-body-12">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="movement_list">
                                    @foreach ($movement as $item)
                                    <li class="text-dark"><input type="checkbox" name="movement[]" value="{{ $item->id }}"> {{ $item->name }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="movementtype_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-13" role="button" aria-expanded="false" aria-controls="widget-body-13" class="collapsed">Movement Type</a>
                        </h3>

                        <div class="collapse" id="widget-body-13">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="movementtype_list">
                                    @foreach ($movementtype as $item)
                                    <li class="text-dark"><input type="checkbox" name="movementtype[]" value="{{ $item->id }}"> {{ $item->name }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="strapcolour_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-14" role="button" aria-expanded="false" aria-controls="widget-body-14" class="collapsed">Strap Colour</a>
                        </h3>

                        <div class="collapse" id="widget-body-14">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="strapcolour_list">
                                    @foreach ($strapcolour as $item)
                                    <li class="text-dark"><input type="checkbox" name="strapcolour[]" value="{{ $item->id }}"> {{ $item->name }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                    <div class="widget" id="strapmaterial_show">
                        <h3 class="widget-title">
                            <a data-toggle="collapse" href="#widget-body-15" role="button" aria-expanded="false" aria-controls="widget-body-15" class="collapsed">Strap Material</a>
                        </h3>

                        <div class="collapse" id="widget-body-15">
                            <div class="widget-body">
                                <ul class="cat-list" style="overflow: auto;max-height: 200px;" id="strapmaterial_list">
                                    @foreach ($strapmaterial as $item)
                                    <li class="text-dark"><input type="checkbox" name="strapmaterial[]" @if (!empty($material_slug->name)) @if($material_slug->id == $item->id) checked @endif @endif value="{{ $item->id }}"> {{ $item->name }}</li>
                                    @endforeach
                                </ul>
                            </div><!-- End .widget-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .widget -->

                </div><!-- End .sidebar-wrapper -->
            </aside><!-- End .col-lg-3 -->
        </div><!-- End .row -->
    </div><!-- End .container -->

    <div class="mb-5"></div><!-- margin -->
</main><!-- End .main -->
@endsection

@section('extrascript')
<script src="{{ URL::asset('public/frontend/assets/js/nouislider.min.js') }}"></script>
<script>
    function productShowWithFilter(res){
    
                    var site_url = $('#index').attr('href');
                    var row = '';
                    var movement_list = '';
                    var collection_list = '';
                    var movementtype_list = '';
                    var casesize_list = '';
                    var caseshape_list = '';
                    var casematerial_list = '';
                    var glassmaterial_list = '';
                    var dialcolour_list = '';
                    var strapmaterial_list = '';
                    var strapcolour_list = '';
                    var feature_list = '';
                    var pag = '';
                    var d = new Date();
                    var month = ("0" + (d.getMonth() + 1)).slice(-2); 
                    var date = ("0" + d.getDate()).slice(-2); 
                    var strDate = d.getFullYear() + "-" + month + "-" + date;
                    // console.log(res[0].data);
                    // alert(res[0].data);
                    if(res[0]!=""){
                        $.each(res[0], function(key, value) {
                            if (value != null){
                                row+="<div class='col-6 col-md-4 col-xl-3'>"
                                row+="<div class='product-default mb-4'>"
                                row+="<figure>"
                                row+="<a href='"+site_url+"/product/"+value.product_id+"'>"
                                if (value.thumb_img == null || value.thumb_img == ''){
                                    row+="<img src='"+site_url+"/public/frontend/assets/images/images.jpeg')>"
                                }
                                else{
                                    var thumb_image = value.thumb_img.split(',');
                                    for(let i=0; i<thumb_image.length; i++){
                                        if(i == 0){
                                            row+="<img src='"+site_url+"/storage/app/watch_thumb/"+thumb_image[0]+"'>"
                                        }
                                    }
                                }
                                row+="</a>"
                                row+="</figure>"
                                row+="<div class='product-details'>"
                                row+="<h2 class='product-title'>"
                                row+="<a href='"+site_url+"/product/"+value.product_id+"'>"+value.model_no+"</a>"
                                row+="</h2>"
                                row+="<div class='price-box'>"
                                row+="<span class='product-price'>"
                                    if(value.discount_price != ""){
                                        row+="<del>&#8377 "+value.price+"</del>"
                                        row+="<p style='color:red;font-size: 22px;'>&#8377 "+value.discount_price+"</p>"
                                    }
                                    else{
                                        row+="&#8377 "+value.price
                                    }
                                row+="</span>"
                                row+="</div>"
                                row+="</div>"
                                row+="</div>"
                                row+="</div>"
                            }
                        });
                    }
                    else{
                        row+="<h2>Sorry! Matching Product Not Found</h2>"
                    }
    
                    if(res[2].movements!=""){
                        $.each(res[2].movements, function(key, value) {
                            if (value != null){
                                if(movement.length>0){
                                    for(let i=0; i<movement.length; i++){
                                        if(movement[i] == value.id){
                                            movement_list+="<li class='text-dark'><input type='checkbox' checked name='movement[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                        else{
                                            movement_list+="<li class='text-dark'><input type='checkbox' name='movement[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                    }
                                }
                                else{
                                    movement_list+="<li class='text-dark'><input type='checkbox' name='movement[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                }
                            }
                        });
                        $('#movement_show').show();
                        $('#movement_list').html(movement_list);
                    }
                    else{
                        $('#movement_show').hide();
                    }
    
                    if(res[3].collections!=""){
                        $.each(res[3].collections, function(key, value) {
                            if (value != null){
                                if(collection.length>0){
                                    for(let i=0; i<collection.length; i++){
                                        if(collection[i] == value.id){
                                            collection_list+="<li class='text-dark'><input type='checkbox' checked name='collection[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                        else{
                                            collection_list+="<li class='text-dark'><input type='checkbox' name='collection[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                    }
                                }
                                else{
                                    collection_list+="<li class='text-dark'><input type='checkbox' name='collection[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                }
                            }
                        });
                        $('#collection_list').show();
                        $('#collection_list').html(collection_list);
                    }
                    else{
                        $('#collection_show').hide();
                    }
    
                    if(res[4].movement_types!=""){
                        $.each(res[4].movement_types, function(key, value) {
                            if (value != null){
                                if(movementtype.length>0){
                                    for(let i=0; i<movementtype.length; i++){
                                        if(movementtype[i] == value.id){
                                            movementtype_list+="<li class='text-dark'><input type='checkbox' checked name='movementtype[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                        else{
                                            movementtype_list+="<li class='text-dark'><input type='checkbox' name='movementtype[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                    }
                                }
                                else{
                                    movementtype_list+="<li class='text-dark'><input type='checkbox' name='movementtype[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                }
                            }
                        });
                        $('#movementtype_list').show();
                        $('#movementtype_list').html(movementtype_list);
                    }
                    else{
                        $('#movementtype_show').hide();
                    }
    
                    if(res[5].case_sizes!=""){
                        $.each(res[5].case_sizes, function(key, value) {
                            if (value != null){
                                if(casesize.length>0){
                                    for(let i=0; i<casesize.length; i++){
                                        if(casesize[i] == value.id){
                                            casesize_list+="<li class='text-dark'><input type='checkbox' checked name='casesize[]' value='"+ value.id +"'> "+ value.case_size +"</li>"
                                        }
                                        else{
                                            casesize_list+="<li class='text-dark'><input type='checkbox' name='casesize[]' value='"+ value.id +"'> "+ value.case_size +"</li>"
                                        }
                                    }
                                }
                                else{
                                    casesize_list+="<li class='text-dark'><input type='checkbox' name='casesize[]' value='"+ value.id +"'> "+ value.case_size +"</li>"
                                }
                            }
                        });
                        $('#casesize_list').show();
                        $('#casesize_list').html(casesize_list);
                    }
                    else{
                        $('#casesize_show').hide();
                    }
    
                    if(res[6].case_shapes!=""){
                        $.each(res[6].case_shapes, function(key, value) {
                            if (value != null){
                                if(caseshape.length>0){
                                    for(let i=0; i<caseshape.length; i++){
                                        if(caseshape[i] == value.id){
                                            caseshape_list+="<li class='text-dark'><input type='checkbox' checked name='caseshape[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                        else{
                                            caseshape_list+="<li class='text-dark'><input type='checkbox' name='caseshape[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                    }
                                }
                                else{
                                    caseshape_list+="<li class='text-dark'><input type='checkbox' name='caseshape[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                }
                            }
                        });
                        $('#caseshape_list').show();
                        $('#caseshape_list').html(caseshape_list);
                    }
                    else{
                        $('#caseshape_show').hide();
                    }
    
                    if(res[7].case_materials!=""){
                        $.each(res[7].case_materials, function(key, value) {
                            if (value != null){
                                if(casematerial.length>0){
                                    for(let i=0; i<casematerial.length; i++){
                                        if(casematerial[i] == value.id){
                                            casematerial_list+="<li class='text-dark'><input type='checkbox' checked name='casematerial[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                        else{
                                            casematerial_list+="<li class='text-dark'><input type='checkbox' name='casematerial[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                    }
                                }
                                else{
                                    casematerial_list+="<li class='text-dark'><input type='checkbox' name='casematerial[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                }
                            }
                        });
                        $('#casematerial_list').show();
                        $('#casematerial_list').html(casematerial_list);
                    }
                    else{
                        $('#casematerial_show').hide();
                    }
    
                    if(res[8].glass_materials!=""){
                        $.each(res[8].glass_materials, function(key, value) {
                            if (value != null){
                                if(glassmaterial.length>0){
                                    for(let i=0; i<glassmaterial.length; i++){
                                        if(glassmaterial[i] == value.id){
                                            glassmaterial_list+="<li class='text-dark'><input type='checkbox' checked name='glassmaterial[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                        else{
                                            glassmaterial_list+="<li class='text-dark'><input type='checkbox' name='glassmaterial[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                    }
                                }
                                else{
                                    glassmaterial_list+="<li class='text-dark'><input type='checkbox' name='glassmaterial[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                }
                            }
                        });
                        $('#glassmaterial_list').show();
                        $('#glassmaterial_list').html(glassmaterial_list);
                    }
                    else{
                        $('#glassmaterial_show').hide();
                    }
    
                    if(res[9].dial_colours!=""){
                        $.each(res[9].dial_colours, function(key, value) {
                            if (value != null){
                                if(dialcolour.length>0){
                                    for(let i=0; i<dialcolour.length; i++){
                                        if(dialcolour[i] == value.id){
                                            dialcolour_list+="<li class='text-dark'><input type='checkbox' checked name='dialcolour[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                        else{
                                            dialcolour_list+="<li class='text-dark'><input type='checkbox' name='dialcolour[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                    }
                                }
                                else{
                                    dialcolour_list+="<li class='text-dark'><input type='checkbox' name='dialcolour[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                }
                            }
                        });
                        $('#dialcolour_list').show();
                        $('#dialcolour_list').html(dialcolour_list);
                    }
                    else{
                        $('#dialcolour_show').hide();
                    }
    
                    if(res[10].strap_materials!=""){
                        $.each(res[10].strap_materials, function(key, value) {
                            if (value != null){
                                if(strapmaterial.length>0){
                                    for(let i=0; i<strapmaterial.length; i++){
                                        if(strapmaterial[i] == value.id){
                                            strapmaterial_list+="<li class='text-dark'><input type='checkbox' checked name='strapmaterial[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                        else{
                                            strapmaterial_list+="<li class='text-dark'><input type='checkbox' name='strapmaterial[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                    }
                                }
                                else{
                                    strapmaterial_list+="<li class='text-dark'><input type='checkbox' name='strapmaterial[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                }
                            }
                        });
                        $('#strapmaterial_list').show();
                        $('#strapmaterial_list').html(strapmaterial_list);
                    }
                    else{
                        $('#strapmaterial_show').hide();
                    }
    
                    if(res[11].strap_colours!=""){
                        $.each(res[11].strap_colours, function(key, value) {
                            if (value != null){
                                if(strapcolour.length>0){
                                    for(let i=0; i<strapcolour.length; i++){
                                        if(strapcolour[i] == value.id){
                                            strapcolour_list+="<li class='text-dark'><input type='checkbox' checked name='strapcolour[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                        else{
                                            strapcolour_list+="<li class='text-dark'><input type='checkbox' name='strapcolour[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                    }
                                }
                                else{
                                    strapcolour_list+="<li class='text-dark'><input type='checkbox' name='strapcolour[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                }
                            }
                        });
                        $('#strapcolour_list').show();
                        $('#strapcolour_list').html(strapcolour_list);
                    }
                    else{
                        $('#strapcolour_show').hide();
                    }
    
                    if(res[12].features!=""){
                        $.each(res[12].features, function(key, value) {
                            if (value != null){
                                if(feature.length>0){
                                    for(let i=0; i<feature.length; i++){
                                        if(feature[i] == value.id){
                                            feature_list+="<li class='text-dark'><input type='checkbox' name='feature[]' checked value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                        else{
                                            feature_list+="<li class='text-dark'><input type='checkbox' name='feature[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                        }
                                    }
                                }
                                else{
                                    feature_list+="<li class='text-dark'><input type='checkbox' name='feature[]' value='"+ value.id +"'> "+ value.name +"</li>"
                                }
                            }
                        });
                        $('#feature_list').show();
                        $('#feature_list').html(feature_list);
                    }
                    else{
                        $('#feature_show').hide();
                    }
    
    
                    if(res[1].last_page > 1){
                        if (res[1] != null){
                            pag+="<ul class='pagination'>"
                            if(res[1].current_page == 1){
                                pag+="<li class='page-item page-abtn disabled'>"
                            }
                            else{
                                pag+="<li class='page-item page-abtn'>"
                            }
                            pag+="<a class='page-link page-link-btn page-b-click' href='"+res[1].prev_page_url+"' data-url='"+res[1].prev_page_url+"'><i class='icon-angle-left'></i></a>"
                            pag+="</li>"
                            for (var i = 1; i <=res[1].last_page; i++){
                                if(res[1].current_page == i){
                                    pag+="<li class='page-item page-abtn active'>"
                                }
                                else{
                                    pag+="<li class='page-item page-abtn'>"
                                }
                                pag+="<a class='page-link page-b-click' href='"+site_url+"/filter?page="+i+"' data-url='"+site_url+"/filter?page="+i+"'>"+i+"</a>"
                                pag+="</li>"
                            }
                                if(res[1].current_page == res[1].last_page){
                                    pag+="<li class='page-item page-abtn disabled'>"
                                }
                                else{
                                    pag+="<li class='page-item page-abtn'>"
                                }
                            pag+="<a class='page-link page-link-btn page-b-click' href='"+res[1].next_page_url+"' data-url='"+res[1].next_page_url+"'><i class='icon-angle-right'></i></a>"
                            pag+="</li>"
                            pag+="</ul>"
                        }
                    }
                 $('#products').html(row);
                 $('.pagination').html(pag);
                //  $('.pagination').empty();
    }
    </script>
    <script>
    var brands = [];
    var casematerial = [];
    var caseshape = [];
    var casesize = [];
    var collection = [];
    var dialcolour = [];
    var feature = [];
    var gender = [];
    var glassmaterial = [];
    var movement = [];
    var movementtype = [];
    var strapcolour = [];
    var strapmaterial = [];
    var price = '';
    
    
    $('.sidebar-wrapper').on('change','input[name="price"], input[type="checkbox"]', function (e) {
        var site_url = $('#index').attr('href');
    
        brands = [];
        $('input[name="brands[]"]:checked').each(function(){
            brands.push($(this).val());
        });
    
        casematerial = [];
        $('input[name="casematerial[]"]:checked').each(function(){
            casematerial.push($(this).val());
        });
    
        caseshape = [];
        $('input[name="caseshape[]"]:checked').each(function(){
            caseshape.push($(this).val());
        });
    
        casesize = [];
        $('input[name="casesize[]"]:checked').each(function(){
            casesize.push($(this).val());
        });
    
        collection = [];
        $('input[name="collection[]"]:checked').each(function(){
            collection.push($(this).val());
        });
    
        dialcolour = [];
        $('input[name="dialcolour[]"]:checked').each(function(){
            dialcolour.push($(this).val());
        });
    
        feature = [];
        $('input[name="feature[]"]:checked').each(function(){
            feature.push($(this).val());
        });
    
        gender = [];
        $('input[name="gender[]"]:checked').each(function(){
            gender.push($(this).val());
        });
    
        glassmaterial = [];
        $('input[name="glassmaterial[]"]:checked').each(function(){
            glassmaterial.push($(this).val());
        });
    
        movement = [];
        $('input[name="movement[]"]:checked').each(function(){
            movement.push($(this).val());
        });
    
        movementtype = [];
        $('input[name="movementtype[]"]:checked').each(function(){
            movementtype.push($(this).val());
        });
    
        strapcolour = [];
        $('input[name="strapcolour[]"]:checked').each(function(){
            strapcolour.push($(this).val());
        });
    
        strapmaterial = [];
        $('input[name="strapmaterial[]"]:checked').each(function(){
            strapmaterial.push($(this).val());
        });
    
        price = '';
        $('input[name="price"]:checked').each(function(){
            price = $(this).val();
        });
         
        if(true){
             $.ajax({
                type:"POST",
                url: site_url + "/filter",
                data : {
                    _token: "{{ csrf_token() }}",
                    brands: (brands.length>0) ? brands : null,
                    casematerial: (casematerial.length>0) ? casematerial : null,
                    caseshape: (caseshape.length>0) ? caseshape : null,
                    casesize: (casesize.length>0) ? casesize : null,
                    collection: (collection.length>0) ? collection : null,
                    dialcolour: (dialcolour.length>0) ? dialcolour : null,
                    feature: (feature.length>0) ? feature : null,
                    gender: (gender.length>0) ? gender : null,
                    glassmaterial: (glassmaterial.length>0) ? glassmaterial : null,
                    movement: (movement.length>0) ? movement : null,
                    movementtype: (movementtype.length>0) ? movementtype : null,
                    strapcolour: (strapcolour.length>0) ? strapcolour : null,
                    strapmaterial: (strapmaterial.length>0) ? strapmaterial : null,
                    price: (price!='') ? price.split('-') : null
                },
                beforeSend: function(){
                    $('body').removeClass('loaded');
                },
                success:function(response){
                    $('body').addClass('loaded');
                    productShowWithFilter(response);
                }
             });
        }else{
            $("#products").empty();
        }
    });
    
    </script>
    <script>
    $(window).on('hashchange', function() {
            if (window.location.hash) {
                var page = window.location.hash.replace('#', '');
                if (page == Number.NaN || page <= 0) {
                    return false;
                }else{
                    getData(page);
                }
            }
        });
        
        $(document).ready(function()
        {
            $(document).on('click', '.pagination a.page-b-click',function(event)
            {
                event.preventDefault();
      
                $('li').removeClass('active');
                $(this).parent('li').addClass('active');
      
                var myurl = $(this).attr('href');
                getData(myurl);
            });
      
        });
      
        function getData(page){
            $.ajax(
            {
                url: page,
                type: "POST",
                data : {
                    _token: "{{ csrf_token() }}",
                    brands: (brands.length>0) ? brands : null,
                    casematerial: (casematerial.length>0) ? casematerial : null,
                    caseshape: (caseshape.length>0) ? caseshape : null,
                    casesize: (casesize.length>0) ? casesize : null,
                    collection: (collection.length>0) ? collection : null,
                    dialcolour: (dialcolour.length>0) ? dialcolour : null,
                    feature: (feature.length>0) ? feature : null,
                    gender: (gender.length>0) ? gender : null,
                    glassmaterial: (glassmaterial.length>0) ? glassmaterial : null,
                    movement: (movement.length>0) ? movement : null,
                    movementtype: (movementtype.length>0) ? movementtype : null,
                    strapcolour: (strapcolour.length>0) ? strapcolour : null,
                    strapmaterial: (strapmaterial.length>0) ? strapmaterial : null,
                    price: (price!='') ? price.split('-') : null
                },
                beforeSend: function(){
                    $('body').removeClass('loaded');
                },
                }).done(function(data){
                    $('body').addClass('loaded');
                    productShowWithFilter(data);
                }).fail(function(jqXHR, ajaxOptions, thrownError){
                    $('body').addClass('loaded');
                    alert('No response from server');
                });
        }
    </script>
@endsection