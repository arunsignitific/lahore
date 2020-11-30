@extends('frontend/common/webmaster')
@section('title'," | $seo->meta_title")

@section('linkfile')
<meta name="keywords" content="{{ $seo->meta_keyword }}" />
<meta name="description" content="{{ $seo->meta_description }}">
<style>
    .iconWithcontent{
        display: inline-flex;
    }
</style>
@endsection

@section('content')
<main class="main">
    @foreach ($bannerheading as $item)
    <div class="page-header page-header-bg" style="background-image: url('{{ asset('storage/app/header_image/'.$item->banner_img) }}');">
        <div class="container">
            @if (!empty($item->heading))<h1 style="color: {{ $item->heading_color }}">{!! $item->heading !!}</h1> @else <h1 style="color: {{ $item->heading_color }}">Store</h1> @endif
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    @endforeach

    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('index') }}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Store</li>
            </ol>
        </div><!-- End .container -->
    </nav>

    <div class="about-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <h2 class="subtitle">Gaffar Market Store</h2>
                    <h5 style="line-height: 20px;">
                        Shop No. 112, 113, <br>
                        Gaffar Market, Block 23, <br>
                        Beadonpura, Karol Bagh, <br>
                        New Delhi, Delhi, Pin Code - 110005
                    </h5>
                    <h2 class="light-title">Contact <strong>Details</strong></h2>
    
                    <div class="info">
                        <div class="iconWithcontent">
                            <i class="icon-phone"></i>
                            <p><a href="tel:01128729564">011 - 28729564</a></p>
                        </div><br>
                        <div class="iconWithcontent">
                            <i class="icon-mail-alt"></i>
                            <p><a href="mailto:Lahorewatchco1950@gmail.com">Lahorewatchco1950@gmail.com</a></p>
                        </div><br>
                        <div class="iconWithcontent">
                            <i class="icon-clock"></i>
                            <p class="text-dark">Closes  8:30 PM</p>
                        </div>
                    </div><!-- End .info -->
                </div><!-- End .col-lg-7 -->
                <div class="col-lg-5">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3501.3317855081264!2d77.18949831407191!3d28.649782690052994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d029dd4d73b83%3A0x67fdd05ca7d12428!2sShop%20No.%20112%2C%20113%2C%20Ghaffar%20Market%2C%20Block%2023%2C%20Beadonpura%2C%20Karol%20Bagh%2C%20New%20Delhi%2C%20Delhi%20110005!5e0!3m2!1sen!2sin!4v1593140648801!5m2!1sen!2sin" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div><!-- End .col-lg-6 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .about-section -->

    <div class="about-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <h2 class="subtitle">South Extention - I Store</h2>
                    <h5 style="line-height: 20px;">
                        G - 4, South Extention, <br>
                        Part - I, <br>
                        New Delhi,<br>
                        Pin Code - 110049
                    </h5>
                    <h2 class="light-title">Contact <strong>Details</strong></h2>
    
                    <div class="info">
                        <div class="iconWithcontent">
                            <i class="icon-phone"></i>
                            <p><a href="tel:01128729564">011 - 28729564</a></p>
                        </div><br>
                        <div class="iconWithcontent">
                            <i class="icon-mail-alt"></i>
                            <p><a href="mailto:Lahorewatchco1950@gmail.com">Lahorewatchco1950@gmail.com</a></p>
                        </div><br>
                        <div class="iconWithcontent">
                            <i class="icon-clock"></i>
                            <p class="text-dark">Closes  8:30 PM</p>
                        </div>
                    </div><!-- End .info -->
                </div><!-- End .col-lg-7 -->
                <div class="col-lg-5">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3503.8559977080786!2d77.2168996140698!3d28.574086593476824!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce3583a04d84d%3A0x309262ce9e4f9368!2sLahore%20Watch%20Co!5e0!3m2!1sen!2sin!4v1593140887808!5m2!1sen!2sin" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div><!-- End .col-lg-6 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .about-section -->
</main><!-- End .main -->
@endsection

@section('extrascript')
@endsection