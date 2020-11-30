@extends('frontend/common/webmaster')
@section('title'," | $seo->meta_title")

@section('content') 
   <div class="page-wrapper">
        <main class="main">
            <nav aria-label="breadcrumb" class="breadcrumb-nav">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                    </ol>
                </div><!-- End .container -->
            </nav>

            <div class="container">
                <div class="row">
                    <div class="col-lg-9 order-lg-last dashboard-content">
                        <h2 id="contactDetail">My Dashboard</h2>

                        <div class="alert alert-success alert-intro" role="alert">
                            Thank you for registering with Porto - Premium Template.
                        </div><!-- End .alert -->

                        <div class="alert alert-success" role="alert">
                            Hello, <strong>Porto customer!</strong> From your My Account Dashboard you have the ability to view a snapshot of your recent account activity and update your account information. Select a link below to view or edit information.
                        </div><!-- End .alert -->

                        <div class="mb-4"></div><!-- margin -->

                        <h3>Account Information</h3>

                        <div class="row" id="myOrder">
                            <div class="col-md-6">
                                <div class="card" >
                                    <div class="card-header">
                                        Contact Information
                                        <a href="#" class="card-edit">Edit</a>
                                    </div><!-- End .card-header -->

                                    <div class="card-body">

                                        @foreach($usersData as $data)
                                        <p>
                                           {{$data->name}}
                                           <br>
                                             {{$data->email}}<br>
                                             {{$data->phone}}
                                             <br>
                            <a href="{{route('change-password')}}/{{$data->id}}">Change Password</a>
                                        </p>
 
                                        @endforeach
                                    </div><!-- End .card-body -->
                                </div><!-- End .card -->
                            </div><!-- End .col-md-6 -->

                            <div class="col-md-6">
                                <div class="card">
                                <div class="card-header">
                                Address Book
                                <a href="#" class="card-edit">Edit</a>
                            </div><!-- End .card-header -->

                                    <div class="card-body">
                                        @foreach($ShippingAdd as $data)
                                       <address>
                                            {{$data->address_line}}<br>
                                            {{$data->city}}, 
                                            {{$data->state}} ,
                                            {{$data->country}}
                                            <br>
                                             {{$data->phone}} <br>
                                                                                        <a href="{{route('edit-address')}}/{{$data->uid}}">Edit Address</a>
                                        </address>

                                    @endforeach

                                    </div><!-- End .card-body -->
                                </div><!-- End .card -->
                            </div><!-- End .col-md-6 -->
                        </div><!-- End .row -->

                        <div class="card" >
                            <div class="card-header">
                               Order History
                                <a href="#" class="card-edit">Edit</a>
                            </div><!-- End .card-header -->

                            <div class="card-body">
                               <h5>User order history</h5>
                            </div><!-- End .card-body -->
                        </div><!-- End .card -->
                    </div><!-- End .col-lg-9 -->

                    <aside class="sidebar col-lg-3">
                        <div class="widget widget-dashboard">
                            <h3 class="widget-title">My Account</h3>

                            <ul class="list">
                                <li class="active"><a href="#">Account Dashboard</a></li>
                                <li><a href="#contactDetail">Account Information</a></li>
                                <li><a href="#">Address Book</a></li>
                                <li><a href="#myOrder">My Orders</a></li>
                           <!--      <li><a href="#">Billing Agreements</a></li>
                                <li><a href="#">Recurring Profiles</a></li>
                                <li><a href="#">My Product Reviews</a></li>
                                <li><a href="#">My Tags</a></li>
                                <li><a href="#">My Wishlist</a></li>
                                <li><a href="#">My Applications</a></li>
                                <li><a href="#">Newsletter Subscriptions</a></li>
                                <li><a href="#">My Downloadable Products</a></li> -->
                            </ul>
                        </div><!-- End .widget -->
                    </aside><!-- End .col-lg-3 -->
                </div><!-- End .row -->
            </div><!-- End .container -->

            <div class="mb-5"></div><!-- margin -->
        </main><!-- End .main -->
</div>
   <!--- Plugins JS File -->
    <script src="{{ URL::asset('public/frontend/assets/js/jquery.min.js') }}"></script>
    <script src="{{ URL::asset('public/frontend/assets/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ URL::asset('public/frontend/assets/js/plugins.min.js') }}"></script>

    <!-- Main JS File -->
    <script src="{{ URL::asset('public/frontend/assets/js/main.min.js') }}"></script>
@endsection

@section('extrascript')
@endsection