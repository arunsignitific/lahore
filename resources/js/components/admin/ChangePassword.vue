<template>
<!-- end:: Header -->
<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" >
	<!-- begin:: Subheader -->
	<div class="kt-subheader   kt-grid__item" id="kt_subheader">
		<div class="kt-subheader__main">
			<h3 class="kt-subheader__title">Dashboard</h3>
			<span class="kt-subheader__separator kt-hidden"></span>
			<div class="kt-subheader__breadcrumbs">
				<router-link :to="{name : 'index'}" class="kt-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></router-link>
				<span class="kt-subheader__breadcrumbs-separator"></span>
				<a href="#" class="kt-subheader__breadcrumbs-link">Change User Password</a>
				<!-- <span class="kt-subheader__breadcrumbs-link kt-subheader__breadcrumbs-link--active">Active link</span> -->
			</div>
		</div>
	</div>
	<!-- end:: Subheader -->
    <!-- begin:: Content -->
	<div class="kt-content  kt-grid__item kt-grid__item--fluid" id="kt_content">
		<div class="kt-portlet kt-portlet--mobile">
				<div class="kt-portlet__head kt-portlet__head--lg">
					<div class="kt-portlet__head-label">
						<span class="kt-portlet__head-icon">
							<i class="kt-font-brand flaticon2-line-chart"></i>
						</span>
						<h3 class="kt-portlet__head-title">
							Change User Password
						</h3>
					</div>
					<div class="kt-portlet__head-toolbar">
						<div class="kt-portlet__head-wrapper">
							<router-link :to="{name : 'index'}" class="btn btn-primary btn-icon-sm">
								<i class="la la-long-arrow-left"></i>Back
							</router-link>
						</div>
					</div>
				</div>

				<!--begin::Form-->
				<div class="kt-portlet__body">
					<form @submit.prevent="updatePasswordData()">
						<div class="row">
							<div class="col-12 form-group">
								<label>Current Password</label>
								<input v-model="form.old_password" type="text" name="old_password" class="form-control" :class="{ 'is-invalid': form.errors.has('old_password') }">
								<has-error :form="form" field="old_password"></has-error>
							</div>
							<div class="col-12 form-group">
								<label>Password</label>
								<input v-model="form.password" type="password" name="password" class="form-control" :class="{ 'is-invalid': form.errors.has('password') }">
								<has-error :form="form" field="password"></has-error>
							</div>
							<div class="col-12 form-group">
								<label>Confirm Password</label>
								<input v-model="form.password_confirmation" type="password" name="password_confirmation" class="form-control" :class="{ 'is-invalid': form.errors.has('password_confirmation') }">
								<has-error :form="form" field="password confirmation"></has-error>
							</div>
						</div>
						<button type="submit" class="btn btn-success">Update</button>
					</form>
				</div>
				<!--end::Form-->
		</div>
	</div>
	<!-- end:: Content -->
</div>
</template>

<script>
import Form from 'vform';
import axios from 'axios';
export default {
	data () {
		return {
			apiAddress : 'admin/changepassword/update',
			// Create a new form instance
			form: new Form({
				old_password: '',
				password: '',
				password_confirmation: ''
			})
		}
	},
	methods: {
		updatePasswordData () {
			this.$Progress.start();
			this.form.put(this.siteUrl+this.apiAddress)
			.then(({data})=>{
				Fire.$emit('AfterCreate');
				if (data=='success'){
					Toast.fire({ 
						icon : 'success',
						title : 'Password Updated Successfully'
					});
				}
				else if (data=='error'){
					Toast.fire({
						icon : 'error',
						title : 'Error! Password Not Updated'
					});
				}
				else if (data=='not_match'){
					Toast.fire({
						icon : 'error',
						title : 'Error! User`s Old Password Is Wrong'
					});
				}
				else{}
				this.$Progress.finish();
			})
			.catch(({data})=>{
				Toast.fire({
					icon : 'error',
					title : 'Error! Password Not Updated'
				});
				this.$Progress.fail();
			})
		}
	},

    created() {
		Fire.$on('AfterCreate',() => {
			this.form.reset();
		});
    }
}
</script>