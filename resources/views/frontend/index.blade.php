@extends('frontend/common/webmaster')
@section('title'," | $seo->meta_title")

@section('linkfile')
<meta name="keywords" content="{{ $seo->meta_keyword }}" />
<meta name="description" content="{{ $seo->meta_description }}">
<style>
.home-top-container{
    padding-top:0; 
}
.gallery-section{
    background-color: #fff;
}
.card-data {
    position: relative;
    width: 100%;
    height: 300px;
    margin: auto;
    /* background: linear-gradient(180deg, rgba(0,0,0,0) 50%, rgba(0,0,0,0.75) 100%),
    url('public/frontend/assets/images/square_banner/sale.jpg');
    background-size: cover; */
    background-position: center top;
    overflow: hidden;
}
.card-data h3 {
    color: #fff;
    position: absolute;
    bottom: 20%;
    width: 100%;
    text-align: center;
}
.card-data h4 {
    color: rgb(236, 222, 222);
    position: absolute;
    bottom: 0%;
    margin-left: 30%;
    margin-right: 30%;
    text-align: center;
}

.card-data .btn-sp{
    padding: 1rem 2rem;
    font-size: 1.4rem;
    line-height: 1.5;
    font-family: Oswald,sans-serif;
    letter-spacing: .1rem;
    text-transform: uppercase;
    border-radius: 0;
    min-width: max-content;
    transition: all .3s;
}

.card-data .btn-sp.btn-red{
    border-color: #fa4a4a;
    background-color: #fa4a4a;
    color: #fff;
}

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: visible;
}

.middle {
  transition: .5s ease;
  opacity: 1;
  position: absolute;
  top: 50%;
  color: #fff;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.text {
  border:1px solid #fff;
  color: #fff;
  font-size: 16px;
  padding: 4px 4px;
  max-width: 120px;
}
</style>
<style>
.img-full {
    display: block;
    width: 100%;
}

.vertical-align {
    -webkit-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    transform: translateY(-50%);
    top: 50%;
    position: absolute;
    width: 100%;
    left: 0px;
}

.gal-item {
    margin-bottom: 30px;
}

.gal-item a {
    display: block;
    position: relative;
}
.gal-item .vertical-align {
    text-align: center;
    opacity: 0;
    margin-top: -50px;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
}
.gal-item .img-full {
    border-radius: 5px;
}

.delay-1 {
    -webkit-transition: all 800ms cubic-bezier(0.23, 1, 0.32, 1);
    -moz-transition: all 800ms cubic-bezier(0.23, 1, 0.32, 1);
    -o-transition: all 800ms cubic-bezier(0.23, 1, 0.32, 1);
    transition: all 800ms cubic-bezier(0.23, 1, 0.32, 1);
}


.insta-layer {position: absolute;left: 0px;top: 0px;width: 100%;height: 100%;background: rgba(0, 0, 0, 0.6);opacity: 0;transition: all 0.3s ease-in;-webkit-transition: all 0.3s ease-in;-moz-transition: all 0.3s ease-in;-ms-transition: all 0.3s ease-in;}

.insta-block:hover .insta-layer { opacity: 1; }

.black-hover:hover .insta-layer {
    opacity: 1;
}

.gal-item a:hover .vertical-align {
    opacity: 1;
    margin-top: 0px;
}

.gal-item .date {
    font-family: 'Open Sans', sans-serif;
    font-size: 12px;
    line-height: 16px;
    font-weight: 400;
    text-transform: uppercase;
    margin-bottom: 9px;
    color: #fff;
}
.gal-item .date img{
    margin: auto;
}
</style>
@endsection

@section('content')
<main class="main">
    <div class="home-top-container">
        <div class="home-slider owl-carousel owl-carousel-lazy">
            @foreach ($bannerheading as $item)
            <div class="home-slide">
                <img class="owl-lazy" src="{{ asset('storage/app/header_image/'.$item->banner_img) }}" data-src="{{ asset('storage/app/header_image/'.$item->banner_img) }}" alt="slider image">
                <div class="home-slide-content">
                    @if (!empty($item->heading))<h1 style="color: {{ $item->heading_color }}">{!! $item->heading !!}</h1>@endif
                    @if (!empty($item->info))<h3 style="color: {{ $item->info_color }}">{{ $item->info }}</h3>@endif
                    @if (!empty($item->url))<a href="{{ $item->url }}" class="btn btn-primary">Shop Now</a>@endif
                </div><!-- End .home-slide-content -->
            </div><!-- End .home-slide -->
            @endforeach
            {{-- <div class="home-slide">
                <img class="owl-lazy" src="{{ URL::asset('public/1591859943_1351x648.jpeg') }}" data-src="{{ URL::asset('public/1591859943_1351x648.jpeg') }}" alt="slider image">
                <div class="home-slide-content">
                    <h1>up to 50% off</h1>
                    <h3>New collection</h3>
                    <a href="#" class="btn btn-secondary">Shop Now</a>
                </div><!-- End .home-slide-content -->
            </div><!-- End .home-slide --> --}}
        </div><!-- End .home-slider -->
    </div><!-- End .home-top-container -->

    {{-- <div class="info-boxes-container">
        <div class="container">
            <div class="info-box">
                <i class="icon-shipping"></i>

                <div class="info-box-content">
                    <h4>FREE SHIPPING & RETURN</h4>
                    <p>Free shipping on all orders over $99.</p>
                </div><!-- End .info-box-content -->
            </div><!-- End .info-box -->

            <div class="info-box">
                <i class="icon-us-dollar"></i>

                <div class="info-box-content">
                    <h4>MONEY BACK GUARANTEE</h4>
                    <p>100% money back guarantee</p>
                </div><!-- End .info-box-content -->
            </div><!-- End .info-box -->

            <div class="info-box">
                <i class="icon-support"></i>

                <div class="info-box-content">
                    <h4>ONLINE SUPPORT 24/7</h4>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div><!-- End .info-box-content -->
            </div><!-- End .info-box -->
        </div><!-- End .container -->
    </div><!-- End .info-boxes-container --> --}}

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="home-product-tabs">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="featured-products-tab" data-toggle="tab" href="#featured-products" role="tab" aria-controls="featured-products" aria-selected="true">New Arrival</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="latest-products-tab" data-toggle="tab" href="#latest-products" role="tab" aria-controls="latest-products" aria-selected="false">Latest Products</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="featured-products" role="tabpanel" aria-labelledby="featured-products-tab">
                            <div class="row row-sm">

                             
                                @foreach ($featured as $item)
                                <div class="col-6 col-md-3">
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
                            </div><!-- End .row -->
                        </div><!-- End .tab-pane -->
                        <div class="tab-pane fade" id="latest-products" role="tabpanel" aria-labelledby="latest-products-tab">
                            <div class="row row-sm">
                                @foreach ($latest as $item)
                                <div class="col-6 col-md-3">
                                    <div class="product-default mb-4">
                                        <figure>
                                            <a href="{{ route('productView', ['id'=>$item['id']]) }}">
                                                @if ($item['thumb_img'] == null || $item['thumb_img'] == null)
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
                            </div><!-- End .row -->
                        </div><!-- End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .home-product-tabs -->
            </div><!-- End .col-lg-9 -->

            {{-- <aside class="sidebar-home col-lg-3">
                <div class="widget widget-cats">
                    <h3 class="widget-title">Brands</h3>
                    
                    <ul class="catAccordion" style="overflow: auto;max-height: 200px;">
                        @foreach ($brand_cat as $item)
                            <li>
                                <a href="{{ route('brand',['slug'=>$item->slug]) }}">{{ $item->name }}</a> 
                            </li>
                        @endforeach
                    </ul>
                </div>
                <div class="widget">
                    <div class="banner banner-image">
                        <a href="#">
                            <img src="{{ URL::asset('public/frontend/assets/images/amazing-colloctiion.jpg') }}" alt="banner">
                        </a>
                    </div><!-- End .banner -->
                </div><!-- End .widget -->

                <div class="widget">
                    <h3 class="widget-title">From Our Blog</h3>
                    @foreach ($blogs as $item)
                    <article class="entry">
                        <div class="entry-media">
                            <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">
                                <img src="{{ asset('storage/app/blog_image/'.$item->header_img) }}" alt="Post">
                            </a>
                            <div class="entry-date">
                                {{ date('d',strtotime($item->created_at)) }}
                                <span>{{ date('M',strtotime($item->created_at)) }}</span>
                            </div><!-- End .entry-date -->
                        </div><!-- End .entry-media -->

                        <div class="entry-body">

                            <h2 class="entry-title">
                                <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">{{ $item->title }}</a>
                            </h2>

                            <div class="entry-content">
                                <p>{{ $item->sort_info }}</p>

                                <a href="{{ route('blogView', ['slug'=>$item->slug]) }}" class="read-more">(READ MORE)</a>
                            </div><!-- End .entry-content -->
                        </div><!-- End .entry-body -->
                    </article><!-- End .entry -->
                    @endforeach

                </div><!-- End .widget -->

                
            </aside><!-- End .col-lg-3 -->     --}}
        </div><!-- End .row -->
    </div><!-- End .container -->

    <div class="gallery-section popup-gallery">
        <div class="container">
            <h2 class="subtitle">Shop By Category</h2>
            <div class="row">
                <div class="col-sm-6 col-lg-3">
                    <a href="{{ url('/product?gender=men') }}" class="gallery-item">
                        {{-- <img src="{{ URL::asset('public/frontend/assets/images/square_banner/man-watch.jpg') }}" alt="gallery image"> --}}
                        <div class="card-data text-center" style="background: linear-gradient(180deg, rgba(0,0,0,0) 50%, rgba(0,0,0,0.75) 100%), url('{{ URL::asset('public/frontend/assets/images/square_banner/man-watch.jpg') }}'); background-size: cover;">
                            {{-- <div class="card-data text-center"> --}}
                            <h3>Watches For Men</h3>
                            <h4 class="btn-sp btn-red">shop Now</h4>
                        </div>
                    </a>
                </div><!-- End .col-lg-3 -->

                <div class="col-sm-6 col-lg-3">
                    <a href="{{ url('/product?gender=women') }}" class="gallery-item">
                        {{-- <img src="{{ URL::asset('public/frontend/assets/images/square_banner/woman-watch.jpg') }}" alt="gallery image"> --}}
                        {{-- <div class="card-data text-center" style="background-image: url('{{ URL::asset('public/frontend/assets/images/square_banner/woman-watch.jpg') }}')"> --}}
                            <div class="card-data text-center" style="background: linear-gradient(180deg, rgba(0,0,0,0) 50%, rgba(0,0,0,0.75) 100%), url('{{ URL::asset('public/frontend/assets/images/square_banner/woman-watch.jpg') }}'); background-size: cover;">
                            <h3>Watches For Women</h3>
                            <h4 class="btn-sp btn-red">shop Now</h4>
                        </div>
                    </a>
                </div><!-- End .col-lg-3 -->

                <div class="col-sm-6 col-lg-3">
                    <a href="{{ route('sale') }}" class="gallery-item">
                        {{-- <img src="{{ URL::asset('public/frontend/assets/images/square_banner/sale.jpg') }}" alt="gallery image"> --}}
                        {{-- <div class="card-data text-center" style="background-image: url('{{ URL::asset('public/frontend/assets/images/square_banner/sale.jpg') }}')"> --}}
                            <div class="card-data text-center" style="background: linear-gradient(180deg, rgba(0,0,0,0) 50%, rgba(0,0,0,0.75) 100%), url('{{ URL::asset('public/frontend/assets/images/square_banner/sale.jpg') }}'); background-size: cover;">
                            <h3>Sale</h3>
                            <h4 class="btn-sp btn-red">shop Now</h4>
                        </div>
                    </a>
                </div><!-- End .col-lg-3 -->
                <div class="col-sm-6 col-lg-3">
                    <a href="{{ route('accessories') }}" class="gallery-item">
                        {{-- <img src="{{ URL::asset('public/frontend/assets/images/square_banner/Accessories.jpg') }}" alt="gallery image"> --}}
                        {{-- <div class="card-data text-center" style="background-image: url('{{ URL::asset('public/frontend/assets/images/square_banner/Accessories.jpg') }}')"> --}}
                            <div class="card-data text-center" style="background: linear-gradient(180deg, rgba(0,0,0,0) 50%, rgba(0,0,0,0.75) 100%), url('{{ URL::asset('public/frontend/assets/images/square_banner/Accessories.jpg') }}'); background-size: cover;">
                            <h3>Accessories</h3>
                            <h4 class="btn-sp btn-red">shop Now</h4>
                        </div>
                    </a>
                </div><!-- End .col-lg-3 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .gallery-section -->

    {{-- <div class="mb-4"></div><!-- margin --> --}}

    <div class="about-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <h2 class="subtitle">OUR LEGACY</h2>
                    <h5>THE BEGINNING OF OUR TRADITION</h5>
                    <p>The journey of the timeless passion for watches has covered a period of 7 decades 
                        till now and many more years are to pass by in this horology tradition. With its 
                        inception in 1950, Lahore Watch Co. was erstwhile known as the ‘Lahore Pen House’ 
                        which included the dealing with pens and watches. However, with time we became 
                        inclined towards the marketing of watches and hence subsequently solely embraced 
                        the idea of stepping into exclusive and personalized marketing of multiple brands 
                        of watches.</p>
                    <a href="{{ route('about') }}" class="btn btn-primary">Read More</a>
                </div><!-- End .col-lg-7 -->
                <div class="col-lg-5">
                    <img src="{{ URL::asset('public/frontend/assets/images/about/img-one.jpg') }}" alt="image">
                </div><!-- End .col-lg-6 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .about-section -->

    <div class="partners-container" style="background-color: #fff;">
        <div class="container">
            <h2 class="subtitle">Brands</h2>
            <div class="row justify-content-center">
                {{-- <div class="col-lg-2 col-md-3 col-sm-6 mt-1 mb-1">
                    <a href="#" class="partner">
                        <img src="{{ URL::asset('public/frontend/assets/images/logos/1.png') }}" alt="logo">
                    </a>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 mt-1 mb-1">
                    <a href="#" class="partner">
                        <img src="{{ URL::asset('public/frontend/assets/images/logos/2.png') }}" alt="logo">
                    </a>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 mt-1 mb-1">
                    <a href="#" class="partner">
                        <img src="{{ URL::asset('public/frontend/assets/images/logos/3.png') }}" alt="logo">
                    </a>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 mt-1 mb-1">
                    <a href="#" class="partner">
                        <img src="{{ URL::asset('public/frontend/assets/images/logos/4.png') }}" alt="logo">
                    </a>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 mt-1 mb-1">
                    <a href="#" class="partner">
                        <img src="{{ URL::asset('public/frontend/assets/images/logos/5.png') }}" alt="logo">
                    </a>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 mt-1 mb-1">
                    <a href="#" class="partner">
                        <img src="{{ URL::asset('public/frontend/assets/images/logos/2.png') }}" alt="logo">
                    </a>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6 mt-1 mb-1">
                    <a href="#" class="partner">
                        <img src="{{ URL::asset('public/frontend/assets/images/logos/1.png') }}" alt="logo">
                    </a>
                </div> --}}
                @foreach ($brand_cat as $item)
                <div class="col-lg-2 col-md-3 col-sm-6 mt-1 mb-1">
                    <a href="{{ route('brand',['slug'=>$item->slug]) }}" class="partner">
                        @if ($item->logo_img == null)
                            <img src="{{ URL::asset('public/frontend/assets/images/logos/1.png') }}" alt="{{ $item->name }}-logo">
                        @else
                            <img src="{{ URL::asset('storage/app/brand_images/'.$item->logo_img) }}" alt="{{ $item->name }}-logo">
                        @endif
                    </a>
                </div>
                @endforeach
                {{-- <div class="col-12 text-center mt-3">
                    <button class="btn btn-primary">More</button>
                </div> --}}
            </div>
        </div><!-- End .container -->
    </div><!-- End .partners-container -->

    {{-- <div class="gallery-section popup-gallery">
        <div class="container">
            <h2 class="subtitle">Follow us on Instagram</h2>
            <div class="row" style="position: relative; height: 760px;" id="instaFeed-style1">
                <div class="item gal-item col-mob-12 col-xs-6 col-sm-3"><a class="black-hover" href="https://www.instagram.com/p/CBcz1lOFZdH/" rel="nofollow"><img class="img-full img-responsive" src="//scontent.cdninstagram.com/v/t51.2885-15/e35/s320x320/102956731_1541967165961917_8859802450964546227_n.jpg?_nc_ht=scontent.cdninstagram.com&amp;_nc_ohc=RpMR8iZCD_wAX8S_j90&amp;oh=d55ee7cb35930ac2cf9749064acdd2e6&amp;oe=5F20CD7E" alt=""><div class="insta-layer delay-1"></div><div class="vertical-align"><div class="date color-white"><img src="https://creativeconcepts.in/img/agency/heart.png" alt=""></div><h4 class="text-white"><b>510</b></h4></div></a></div>
                <div class="item gal-item col-mob-12 col-xs-6 col-sm-3"><a class="black-hover" href="https://www.instagram.com/p/CBSGydlFJtx/" rel="nofollow"><img class="img-full img-responsive" src="//scontent.cdninstagram.com/v/t51.2885-15/e35/p320x320/102644984_107813820970699_2652949722820422302_n.jpg?_nc_ht=scontent.cdninstagram.com&amp;_nc_ohc=ScVBgKRhIM0AX8LgQwb&amp;oh=6cdc7d99b80eecba14b7ba501a9de188&amp;oe=5EF7C953" alt=""><div class="insta-layer delay-1"></div><div class="vertical-align"><div class="date color-white"><img src="https://creativeconcepts.in/img/agency/heart.png" alt=""></div><h4 class="text-white"><b>7</b></h4></div></a></div>
            </div>
        </div><!-- End .container -->
    </div> --}}

{{--
    <div class="related-posts">
        <div class="container">
         

        <h2 class="subtitle">Latest Blogs</h2>

        <div class="row">
            @foreach ($blogs as $item)
                <div class="col-lg-4 col-sm-12">
                    <article class="entry">
                    <div class="entry-media">
                        <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">
                            <img src="{{ asset('storage/app/blog_image/'.$item->header_img) }}" alt="Post">
                        </a>
                    </div><!-- End .entry-media -->

                    <div class="entry-body">
                        <div class="entry-date">
                            <span class="day">{{ date('d', strtotime($item->created_at)) }}</span>
                            <span class="month">{{ date('M', strtotime($item->created_at)) }}</span>
                        </div><!-- End .entry-date -->

                        <h2 class="entry-title">
                            <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">{{ $item->title }}</a>
                        </h2>

                        <div class="entry-content">
                            <p>{{ substr(strip_tags($item->sort_info),0,100) }}...</p>
                            <a href="{{ route('blogView', ['slug'=>$item->slug]) }}" class="read-more">Read More <i class="icon-angle-double-right"></i></a>
                        </div><!-- End .entry-content -->
                    </div><!-- End .entry-body -->
                </article>
                </div>
                @endforeach
            </div>
                
        </div>
    </div><!-- End .related-posts -->
    --}}
</main><!-- End .main -->
@endsection

@section('extrascript')
@endsection