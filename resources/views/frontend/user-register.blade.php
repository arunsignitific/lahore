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

 
            <div class="col-md-12">
                <h2 class="title mb-2">Register</h2>

                <form action="{{route('user-insert')}}" method="post">
                    @csrf

                    <label for="register-email">User Name <span class="required">*</span></label>
                    <input name="name" type="name" class="form-input form-wide mb-2" id="register-email" required="">
 

                    <label for="register-email">Email address <span class="required">*</span></label>
                    <input name="email" type="email" class="form-input form-wide mb-2" id="register-email" required="">

                    <label for="register-password">Password <span class="required">*</span></label>
                    <input name="password" type="password" class="form-input form-wide mb-2" id="register-password" required="">

                    <label for="register-phone">Phone <span class="required">*</span></label>
                    <input name="phone" type="phone" class="form-input form-wide mb-2" id="register-phone" required="">     

                    <div class="form-footer">
                        <button type="submit" class="btn btn-primary btn-md">Register</button>

                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="newsletter-signup">
                            <label class="custom-control-label" for="newsletter-signup">Sing up our Newsletter</label>
                        </div><!-- End .custom-checkbox -->

                            @if(session()->has('success'))
                                    <div class=" alert alert-success">{{ session()->get('success') }}</div>
                                    @endif
                                    @if(session()->has('Error'))
                                    <div class=" alert alert-danger">{{ session()->get('Error') }}</div>
                                    @endif
                    </div><!-- End .form-footer -->
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