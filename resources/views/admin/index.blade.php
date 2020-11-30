@extends('admin/common/webmaster')
@section('title'," | DashBoard")

@section('linkfile')

@endsection

@section('subheader')
<div class="kt-subheader__main">
<h3 class="kt-subheader__title">
	DashBoard</h3>
<span class="kt-subheader__separator kt-hidden"></span>
<div class="kt-subheader__breadcrumbs">
	<a href="{{ url('/admin') }}" class="kt-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a>
	<!-- <span class="kt-subheader__breadcrumbs-link kt-subheader__breadcrumbs-link--active">Active link</span> -->
</div> 
</div>
@endsection

@section('content')
<div class="kt-content  kt-grid__item kt-grid__item--fluid" id="kt_content"></div>
@endsection

@section('extrascript')
@endsection