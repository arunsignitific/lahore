@extends('frontend/common/webmaster')
@section('title'," | 404 Error! Page Not Found")

@section('linkfile')
<style>
.head_404{
   text-align: center;
}
.head_404 .head{
   font-size: 22px;
   color: red;
}
.head_404 .main_title{
   font-size: 120px;
   color: red;
}
</style>
@endsection

@section('content')
 <!--== Start Page Content Wrapper ==-->
 <div class="page-wrapper mt-4">
    <!--== Start About Description Content Area ==-->
    <div class="about-desc-content-area pt-60 pt-md-60 pt-sm-60 pb-60 pb-md-60 pb-sm-60">
       <div class="container">
          <div class="row mtm-30">
             <!-- Start About Content -->
             <div class="col-lg-12 mb-md-20 mb-sm-20">
                <div class="head_404">
                   <div class="head">
                     Error! Page Not Found
                   </div>
                   <div class="main_title">
                      404
                   </div>
                </div>
             </div>
             <!-- End About Content -->
          </div>
       </div>
    </div>
    <!--== End About Description Content Area ==-->
 </div>
 <!--== End Page Content Wrapper ==--> 
@endsection

@section('extrascript')
@endsection