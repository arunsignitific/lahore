@extends('frontend/common/webmaster')
@section('title'," | $seo->meta_title")

@section('linkfile')
<meta name="keywords" content="{{ $seo->meta_keyword }}" />
<meta name="description" content="{{ $seo->meta_description }}">
@endsection

@section('content')
<main class="main">
    @foreach ($bannerheading as $item)
    <div class="page-header page-header-bg" style="background-image: url('{{ asset('storage/app/header_image/'.$item->banner_img) }}');">
        <div class="container">
            @if (!empty($item->heading))<h1 style="color: {{ $item->heading_color }}">{!! $item->heading !!}</h1> @else <h1 style="color: {{ $item->heading_color }}">About Us</h1> @endif
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    @endforeach

    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('index') }}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">About Us</li>
            </ol>
        </div><!-- End .container -->
    </nav>

    <div class="about-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <h2 class="subtitle">THE TIMELINE OF OUR LEGACY</h2>
                    <h5>THE BEGINNING OF OUR TRADITION</h5>
                    <p>The journey of the timeless passion for watches has covered a period of 7 decades till now and many more years are to pass by in this horology tradition. With its inception in 1950, Lahore Watch Co. was erstwhile known as the ‘Lahore Pen House’ which included the dealing with pens and watches. However, with time we became inclined towards the marketing of watches and hence subsequently solely embraced the idea of stepping into exclusive and personalized marketing of multiple brands of watches.</p>
                </div><!-- End .col-lg-7 -->
                <div class="col-lg-5">
                    <img src="{{ URL::asset('public/frontend/assets/images/about/img-one.jpg') }}" alt="image">
                </div><!-- End .col-lg-6 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .about-section -->

    {{-- <div class="gallery-section popup-gallery">
        <div class="container">
            <h2 class="subtitle">PHOTO GALLERY</h2>
            <div class="row">
                <div class="col-sm-6 col-lg-3">
                    <a href="{{ URL::asset('public/frontend/assets/images/about/gallery1.jpg') }}" class="gallery-item">
                        <img src="{{ URL::asset('public/frontend/assets/images/about/gallery1.jpg') }}" alt="gallery image">
                    </a>
                </div><!-- End .col-lg-3 -->

                <div class="col-sm-6 col-lg-3">
                    <a href="{{ URL::asset('public/frontend/assets/images/about/gallery2.jpg') }}" class="gallery-item">
                        <img src="{{ URL::asset('public/frontend/assets/images/about/gallery2.jpg') }}" alt="gallery image">
                    </a>
                </div><!-- End .col-lg-3 -->

                <div class="col-sm-6 col-lg-3">
                    <a href="{{ URL::asset('public/frontend/assets/images/about/gallery3.jpg') }}" class="gallery-item">
                        <img src="{{ URL::asset('public/frontend/assets/images/about/gallery3.jpg') }}" alt="gallery image">
                    </a>
                </div><!-- End .col-lg-3 -->
                <div class="col-sm-6 col-lg-3">

                    <a href="{{ URL::asset('public/frontend/assets/images/about/gallery4.jpg') }}" class="gallery-item">
                        <img src="{{ URL::asset('public/frontend/assets/images/about/gallery4.jpg') }}" alt="gallery image">
                    </a>
                </div><!-- End .col-lg-3 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .gallery-section --> --}}

    <div class="company-section">
        <div class="container">
            <div class="row align-items-lg-center">
                <div class="col-lg-6">
                    <img src="{{ URL::asset('public/frontend/assets/images/about/img-two.jpg') }}" alt="image">
                </div><!-- End .col-lg-6 -->

                <div class="col-lg-6 padding-left-lg">
                    <h3 class="subtitle">THE PIONEERS BEHIND THE CLASSIC TRADITION</h3>
                    <p>Lahore Watch Co was first founded by Mr Raj Chandyok who developed a vision of taking his company to new heights with his passion for dealing and marketing of watches. He led the company with an objective of inspiring the various classes of people to purchase the precious timepiece which would form a priceless possession in their life.</p>

                    <h3 class="subtitle">THE TIMELESS TRADITION TAKEN FORWARD</h3>
                    <p>With what started out as a small venture, the tradition of watch retail business was taken forward and pumped in with new energy in terms of reaching out to all the clients by Mr Rajeev Chandyok in the 1980s. He gave a new dynamism to the watch retail business with his relentless spirit to connect with the clients in the retail business and promote the valuable tradition with ardour with all the stakeholders.</p>
                </div><!-- End .col-lg-6 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .company-section -->

    <div class="about-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <h2 class="subtitle">THE PRESENT STATUS OF THE VALUABLE TRADITION OF HOROLOGY</h2>
                    <p>Currently, in its third generation, Lahore Watch Co has now gained a reputation of the most trusted and premier watch retail company. Leading with a strong belief to be resolute in taking the watch retail to a new zenith, the third generation led by Mr Jatin Chandyok has brought a new and dynamic vibe to the business of watch retail. He is now taking the legacy of his forefather forward by his vision of expanding the horology tradition to those areas which have the potential for expanding his retail business and to reach out to various classes of people.</p>
                </div><!-- End .col-lg-7 -->
                <div class="col-lg-5">
                    <img src="{{ URL::asset('public/frontend/assets/images/about/img-1.jpg') }}" alt="image">
                </div><!-- End .col-lg-6 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .about-section -->

    <div class="company-section">
        <div class="container">
            <div class="row align-items-lg-center">
                <div class="col-lg-6">
                    <img src="{{ URL::asset('public/frontend/assets/images/about/img-1.jpg') }}" alt="image">
                </div><!-- End .col-lg-6 -->

                <div class="col-lg-6 padding-left-lg">
                    <h3 class="subtitle">PRINCIPLES OF LAHORE WATCH CO</h3>
                    <p>Every generation who has been engaged and involved has steered the horology heritage incorporating the upgradations in the state-of-art technology of crafting the timepiece and simultaneously creating a wide appeal of a watch as a loyal companion of a person. The company has been founded and have fostered the following principles continuously :</p>
                    <ul class="ml-5" style="list-style-type: disc;">
                        <li>Exclusive and personalized guidance to every client</li>
                        <li>Presenting an unparalleled portfolio of watch brands</li>
                        <li>Serving the watch requirements with impeccable standards</li>
                        <li>Building and strengthening customer relationship with trust and loyalty</li>
                        <li>Catering to the customer needs with determination, dedication and diligence with world-class service</li>
                        <li>Strengthening the sales network</li>
                        <li>Working with and appreciating the devoted and faithful workforce whose role is of immense importance in the working of our company</li>
                    </ul>

                    </div><!-- End .col-lg-6 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .company-section -->

    {{-- <div class="features-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="feature-box">
                        <i class="icon-shipped"></i>

                        <div class="feature-box-content">
                            <h3>FREE SHIPPING</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        </div><!-- End .feature-box-content -->
                    </div><!-- End .feature-box -->
                </div><!-- End .col-md-4 -->
                
                <div class="col-md-4">
                    <div class="feature-box">
                        <i class="icon-us-dollar"></i>

                        <div class="feature-box-content">
                            <h3>100% MONEY BACK GUARANTEE</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        </div><!-- End .feature-box-content -->
                    </div><!-- End .feature-box -->
                </div><!-- End .col-md-4 -->

                <div class="col-md-4">
                    <div class="feature-box">
                        <i class="icon-online-support"></i>

                        <div class="feature-box-content">
                            <h3>ONLINE SUPPORT 24/7</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        </div><!-- End .feature-box-content -->
                    </div><!-- End .feature-box -->
                </div><!-- End .col-md-4 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .features-section --> --}}
</main><!-- End .main -->
@endsection

@section('extrascript')
@endsection