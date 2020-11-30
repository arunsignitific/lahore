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
            @if (!empty($item->heading))<h1 style="color: {{ $item->heading_color }}">{!! $item->heading !!}</h1> @else <h1 style="color: {{ $item->heading_color }}">Contact Us</h1> @endif
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    @endforeach
    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('index') }}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Contact Us</li>
            </ol>
        </div><!-- End .container -->
        
    </nav><div class="page-header">
        <div class="container">
            <h1>Contact Us</h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->

    <div class="container">
        {{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3504.021270656863!2d77.2175713150812!3d28.56912398244284!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjjCsDM0JzA4LjkiTiA3N8KwMTMnMTEuMSJF!5e0!3m2!1sen!2sin!4v1593070156465!5m2!1sen!2sin" width="1170" height="460" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe> --}}

        <div class="row mt-4">
            <div class="col-md-6">
                <h2 class="light-title">Write <strong>Us</strong></h2>
                <form action="{{ route('contactMail') }}" method="POST" id="contact-form">
                    @csrf
                    <div class="form-group required-field">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div><!-- End .form-group -->

                    <div class="form-group required-field">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div><!-- End .form-group -->

                    <div class="form-group">
                        <label for="mob_no">Phone Number</label>
                        <input type="tel" class="form-control" id="mob_no" name="mob_no">
                    </div><!-- End .form-group -->

                    <div class="form-group required-field">
                        <label for="message">What’s on your mind?</label>
                        <textarea rows="1" id="message" class="form-control" name="message" required></textarea>
                    </div><!-- End .form-group -->

                    <div class="form-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div><!-- End .form-footer -->
                    <!-- Show Message Notification -->
                    <div class="form-message"></div>
                </form>
            </div><!-- End .col-md-8 -->

            <div class="col-md-3">
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
                        </div>
                        <div class="iconWithcontent">
                            <i class="icon-mail-alt"></i>
                            <p><a href="mailto:Lahorewatchco1950@gmail.com">Lahorewatchco1950@gmail.com</a></p>
                        </div>
                        <div class="iconWithcontent">
                            <i class="icon-clock"></i>
                            <p class="text-dark">Closes  8:30 PM</p>
                        </div>
                    </div><!-- End .info -->
                    <a href="https://goo.gl/maps/hkKT874xwG3hWYkq5" class="btn btn-primary" target="_blank">Get Direction</a>
            </div><!-- End .col-md-3 -->
            <div class="col-md-3">
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
                    </div>
                    <div class="iconWithcontent">
                        <i class="icon-mail-alt"></i>
                        <p><a href="mailto:Lahorewatchco1950@gmail.com">Lahorewatchco1950@gmail.com</a></p>
                    </div>
                    <div class="iconWithcontent">
                        <i class="icon-clock"></i>
                        <p class="text-dark">Closes  8:30 PM</p>
                    </div>
                </div><!-- End .info -->

                <a href="https://goo.gl/maps/bsndGWszbT6aLMgU9" class="btn btn-primary" target="_blank">Get Direction</a>
            </div>
        </div><!-- End .row -->
    </div><!-- End .container -->

    <div class="mb-8"></div><!-- margin -->
</main><!-- End .main -->
@endsection

@section('extrascript')
<script>
    /*======================
    Ajax Contact Form JS
    ============================*/
        // Get the form.
        var form = $('#contact-form');
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
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDc3LRykbLB-y8MuomRUIY0qH5S6xgBLX4"></script>
<script src="{{ URL::asset('public/frontend/assets/js/map.js') }}"></script>
@endsection