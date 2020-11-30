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
            @if (!empty($item->heading))<h1 style="color: {{ $item->heading_color }}">{!! $item->heading !!} @else <h1 style="color: {{ $item->heading_color }}">Repair & Services</h1> @endif
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    @endforeach

    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('index') }}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Repair & Services</li>
            </ol>
        </div><!-- End .container -->
    </nav>

    <div class="about-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <h2 class="subtitle">LAHORE WATCH</h2>
                    <p>Time does not wait for anyone. So, we also believe to not keep you waiting to access the time of your life. We impart horological service with the finest standards in the watch industry and serve with an uncompromising dedication with our quality service. We care and value your time and hence believe in fulfilling the commitment of engaging and investing ourselves in the state-of-art of repair management of the watches.</p>
                </div><!-- End .col-lg-7 -->

                <div class="col-lg-5">
                    <img src="{{ URL::asset('public/frontend/assets/images/repair_section/1.jpg') }}" alt="image">
                </div><!-- End .col-lg-5 -->
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
    <div class="about-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="subtitle text-center">WHY CHOOSE OUR SERVICE</h2>
                    <p>We offer all-encompassing watch care incorporating all forms of servicing and repair, ensuring and assuring that your timepiece is catered and valued by our skilled and efficient team of watch care technical professionals. Your timepiece will be catered with the expert guidance on watch servicing and repair with multiple assessments and check system.

                        We commence every watch piece journey with an assessment of the whole piece of art, examining every element meticulously by a specialized technical watch professional. He would then inform and guide you about your timepiece, stating the exact requirement of the watch piece along with its estimate.
                        
                        The moment the watch piece is handed over to us, our team of dedicated watch technicians would start working on your prized possession in an intricate manner, handling the special piece of craft with care. Right from the beginning of the servicing till the end of it, our expert team of watch technical professionals skilfully analyse each and every element and aspect of your watch and hence take great pride in serving you exclusively.
                        
                        With the servicing and repair coming to an end, we follow up with our customers and ask for their valuable feedback so as to introspect the satisfaction and the fulfilment of our customers after they receive their watch piece.
                        </p>
                    <h4>THE SERVICE AND REPAIR FACILITY</h4>
                    <p>We are dedicated to serving the expectations of our customers with our upgraded state-of-art technology and the latest innovation in the watch retail business whereby our expertise devotes their time in fixing the precious timepiece with their full commitment to quality. 

                        To ensure the above, we have a dedicated space where all our watch technical professionals function where the servicing centre is fully equipped with modern and upgraded machines that assist them in working on every watch piece accurately and yielding optimum results thus ensuring the highest standards for your watch.
                        </p>
                    <h4>THE SERVICES OFFERED BY US</h4>
                    <ul class="ml-5" style="list-style-type: disc;">
                        <li>Complete Maintenance</li>
                        <li>Battery Check and Replacement</li>
                        <li>Sizing and Adjustment</li>
                        <li>Ultrasonic Cleaning and Polishing</li>
                        <li>Strap and Bracelet Replacement</li>
                        <li>Water Resistance Maintenance</li>

                    </ul>
                </div><!-- End .col-lg-7 -->

            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .about-section -->

    <div class="company-section">
        <div class="container">
            <div class="row align-items-lg-center">
                <div class="col-lg-6">
                    <img src="{{ URL::asset('public/frontend/assets/images/repair_section/2.jpg') }}" alt="image">
                </div><!-- End .col-lg-6 -->

                <div class="col-lg-6 padding-left-lg">
                    <div class="order-summary">
                        <h4>
                            <a data-toggle="collapse" href="#order-cart-section" class="collapsed" role="button" aria-expanded="false" aria-controls="order-cart-section">Complete Maintenance</a>
                        </h4>

                        <div class="collapse" id="order-cart-section" style="">
                            <table class="table table-mini-cart">
                                <tbody>
                                    <tr>
                                        <td class="price-col">
                                            A complete servicing of the timepiece requires certain levels of insightful introspection in the working of the watch, dismantling the parts of the watch, fixing every element of the watch with care especially the parts which are worn and torn and again reassembling the components of the watch with fresh and necessary lubrication making the timepiece look and function like a brand new piece. After the whole process is completed, it is put under the assessment of a technical professional to confirm the success of the servicing of the watch. Every time you notice that your watch is gaining or losing time, it serves as an indication to get your watch servicing and maintenance.
                                        </td>
                                    </tr>
                                </tbody>    
                            </table>
                        </div><!-- End #order-cart-section -->
                    </div><!-- End .order-summary -->

                    <div class="order-summary">
                        <h4>
                            <a data-toggle="collapse" href="#order-cart-section2" class="collapsed" role="button" aria-expanded="false" aria-controls="order-cart-section">Battery Check and Replacement</a>
                        </h4>

                        <div class="collapse" id="order-cart-section2" style="">
                            <table class="table table-mini-cart">
                                <tbody>
                                    <tr>
                                        <td class="price-col">
                                            Watch batteries usually need to be changed every 2-3 years because, over a period of time, even the battery drains out or starts leaking which in turn hampers the proper functioning of the watch. We offer a high-quality replacement of batteries with utmost precision.
                                        </td>
                                    </tr>
                                </tbody>    
                            </table>
                        </div><!-- End #order-cart-section -->
                    </div><!-- End .order-summary -->
                    
                    <div class="order-summary">
                        <h4>
                            <a data-toggle="collapse" href="#order-cart-section3" class="collapsed" role="button" aria-expanded="false" aria-controls="order-cart-section">Sizing and Adjustment</a>
                        </h4>

                        <div class="collapse" id="order-cart-section3" style="">
                            <table class="table table-mini-cart">
                                <tbody>
                                    <tr>
                                        <td class="price-col">
                                            We understand that sometimes there could be an issue with the size of the watch regardless of when it was purchased. Customer’s satisfaction is our priority and it is our duty to fix anything that is bothering you with respect to your watch including its sizing and adjustment issues. Our staff is always there to assist you to choose the best timepiece and ensure its perfect fit on your wrist.
                                        </td>
                                    </tr>
                                </tbody>    
                            </table>
                        </div><!-- End #order-cart-section -->
                    </div><!-- End .order-summary -->
                    
                    <div class="order-summary">
                        <h4>
                            <a data-toggle="collapse" href="#order-cart-section4" class="collapsed" role="button" aria-expanded="false" aria-controls="order-cart-section">Ultrasonic Cleaning and Polishing</a>
                        </h4>

                        <div class="collapse" id="order-cart-section4" style="">
                            <table class="table table-mini-cart">
                                <tbody>
                                    <tr>
                                        <td class="price-col">
                                            This kind of cleaning goes beyond wiping the watch with a cloth. With the help of specialised equipment which contains an electrolyte solution, it provides an exhaustive cleaning of the components of the watch. This removes the grime and dirt that cannot be seen by the naked eye, adding sheen to the looks of the watch. This is further enhanced with the simultaneous polishing with the polishing tools so as to get rid of the scratches and make the watch look brand new.
                                        </td>
                                    </tr>
                                </tbody>    
                            </table>
                        </div><!-- End #order-cart-section -->
                    </div><!-- End .order-summary -->
                    
                    <div class="order-summary">
                        <h4>
                            <a data-toggle="collapse" href="#order-cart-section5" class="collapsed" role="button" aria-expanded="false" aria-controls="order-cart-section">Strap and Bracelet Replacement</a>
                        </h4>

                        <div class="collapse" id="order-cart-section5" style="">
                            <table class="table table-mini-cart">
                                <tbody>
                                    <tr>
                                        <td class="price-col">
                                            Get a replacement of straps and bracelets of any model of the watch. In case, if it is not there in store then we will specially order it for you as we believe in meeting the desires of our customers.
                                        </td>
                                    </tr>
                                </tbody>    
                            </table>
                        </div><!-- End #order-cart-section -->
                    </div><!-- End .order-summary -->
                    
                    <div class="order-summary">
                        <h4>
                            <a data-toggle="collapse" href="#order-cart-section6" class="collapsed" role="button" aria-expanded="false" aria-controls="order-cart-section">Water Resistance Maintenance</a>
                        </h4>

                        <div class="collapse" id="order-cart-section6" style="">
                            <table class="table table-mini-cart">
                                <tbody>
                                    <tr>
                                        <td class="price-col">
                                            Certain mechanical watches need extra care and special attention to ensure that the timepiece is not damaged with water. While some watches can work in water, those which cannot, we offer our specialised technical service to ensure that water does not hamper the functioning of the watch piece.
                                        </td>
                                    </tr>
                                </tbody>    
                            </table>
                        </div><!-- End #order-cart-section -->
                    </div><!-- End .order-summary -->
                </div>
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .company-section -->

</main><!-- End .main -->
@endsection

@section('extrascript')
@endsection