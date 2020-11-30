@extends('admin/common/webmaster')
@section('title'," | Change User Password")

@section('linkfile')

@endsection

@section('subheader')
<div class="kt-subheader__main">
	<h3 class="kt-subheader__title">Dashboard</h3>
	<span class="kt-subheader__separator kt-hidden"></span>
	<div class="kt-subheader__breadcrumbs">
		<a href="{{ route('admin') }}" class="kt-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a>
		<span class="kt-subheader__breadcrumbs-separator"></span>
		<a href="" class="kt-subheader__breadcrumbs-link">Change User Password</a>
		<!-- <span class="kt-subheader__breadcrumbs-link kt-subheader__breadcrumbs-link--active">Active link</span> -->
	</div>
</div> 
@endsection

@section('content')
<div class="kt-content  kt-grid__item kt-grid__item--fluid" id="kt_content">
	<div class="row mt-3">
		<div class="col-12">
			<!--begin::Portlet-->
			<div class="kt-portlet">
				<div class="kt-portlet__head">
					<div class="kt-portlet__head-label">
						<h3 class="kt-portlet__head-title">Change User Password</h3>
					</div>
					<div class="kt-portlet__head-toolbar">
						<div class="kt-portlet__head-wrapper">
							<a href="{{ route('admin') }}" class="btn btn-primary btn-icon-sm">
								<i class="la la-long-arrow-left"></i>Back
							</a>
						</div>
					</div>
				</div>
				<!--begin::Form-->
					<div class="kt-portlet__body">
					{{ Form::model($user, array('route' => array('admin.updatePassword', $user->id), 'method' => 'PUT')) }}{{-- Form model binding to automatically populate our fields with user data --}}
					@csrf
					@if ($errors->any())
						<div class="form-group form-group-last">
							<div class="alert alert-secondary fade show" role="alert">
								<div class="alert-icon"><i class="flaticon-warning kt-font-brand"></i></div>
								<div class="alert-text">
								<ul>{!! implode('', $errors->all('<li style="color:red">:message</li>')) !!}</ul>
								</div>
								<div class="alert-close">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true"><i class="la la-close"></i></span>
									</button>
								</div>
							</div>
						</div>
					@endif

					<div class="form-group">
						{{ Form::label('old_password', 'Current Password') }}
						{{ Form::text('old_password', null, array('class' => 'form-control')) }}
					</div>
				
					<div class="form-group">
						{{ Form::label('password', 'Password') }}<br>
						{{ Form::password('password', array('class' => 'form-control')) }}
					</div>
				
					<div class="form-group">
						{{ Form::label('password', 'Confirm Password') }}<br>
						{{ Form::password('password_confirmation', array('class' => 'form-control')) }}
					</div>
				
					{{ Form::submit('Change Password', array('class' => 'btn btn-success')) }}
				
					{{ Form::close() }}
				<!--end::Form-->
			</div>
			<!--end::Portlet-->
		</div>
	</div>
</div>
@endsection

@section('extrascript')
@endsection