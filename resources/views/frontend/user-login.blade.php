@extends('frontend/common/webmaster')
@section('title'," | $seo->meta_title")

@section('content') 


<style>
    .main{ width:40%; margin: 5% auto;  }
</style>
   <div class="page-wrapper">
<main class="main">
<div class="mfp-cont"><div class="modal-wrapper">
    <div class="container">
        <div class="row row-sparse">


@error('Error')
    <div class="error alert alert-danger">{{ $message }}</div>
@enderror
 
 
 <div class="col-md-12">
                <h2 class="title mb-2">Login</h2>

                <form action="{{ route('loginCheck') }}" method="POST" id="contact-form" class="mb-1">
                    @csrf
                    <label for="login-email">Email address <span class="required">*</span></label>
                    <input name="email" type="email" class="form-input form-wide mb-2" id="login-email" required="">

                    <label for="login-password">Password <span class="required">*</span></label>
                    <input name="password" type="password" class="form-input form-wide mb-2" id="login-password" required="">

                    <div class="form-footer">
                        <button type="submit" class="btn btn-primary btn-md">LOGIN</button>
                    <a href="{{ route('userRegister') }}" class="btn btn-success btn-md">Sign up</a>
                        <div class="custom-control custom-checkbox form-footer-right">
                            <input type="checkbox" class="custom-control-input" id="lost-password">
                            <label class="custom-control-label form-footer-right" for="lost-password">Remember Me</label>
                        </div>
                    </div><!-- End .form-footer -->

                        @if(session()->has('success'))
                                    <div class=" alert alert-success">{{ session()->get('success') }}</div>
                                    @endif
                                    @if(session()->has('Error'))
                                    <div class=" alert alert-danger">{{ session()->get('Error') }}</div>
                                    @endif
                  
                    <a href="#" class="forget-password">Forgot your password?</a>

                </form>
            </div><!-- End .col-md-6 -->



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