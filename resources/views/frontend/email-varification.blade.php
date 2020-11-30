@extends('frontend/common/webmaster')
@section('title'," | $seo->meta_title")

@section('content') 


<style>
    .main{ width:40%; margin: 5% auto;  }
</style>
   <div class="page-wrapper">
<main class="main">

    <div class="container">
        <div class="row">

            @foreach($userEmail as $email )

<div class="form">
<p>Verify your email <strong> Check your mail</strong> <strong text="danger">{{$email->email}} </strong></p> 
</div>

<BR>

<div class="form">
<a href="{{$email->email}}" class="btn btn-danger">CLick</a>
</div>

@endforeach

        </div><!-- End .row -->
    </div><!-- End .container -->

 </main><!-- End .main -->
</div>
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
   <!-- Plugins JS File -->
    <script src="{{ URL::asset('public/frontend/assets/js/jquery.min.js') }}"></script>
    <script src="{{ URL::asset('public/frontend/assets/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ URL::asset('public/frontend/assets/js/plugins.min.js') }}"></script>

    <!-- Main JS File -->
    <script src="{{ URL::asset('public/frontend/assets/js/main.min.js') }}"></script>
@endsection

@section('extrascript')
@endsection