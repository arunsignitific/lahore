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
				<a href="#" class="kt-subheader__breadcrumbs-link">Discount</a>
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
							Discount List
						</h3>
					</div>
					<div class="kt-portlet__head-toolbar">
						<div class="kt-portlet__head-wrapper">
							<a href="#" class="btn btn-brand btn-icon-sm" @click="addPageData">
								<i class="flaticon2-plus"></i> Add New
							</a>
						</div>
					</div>
				</div>
				<div class="kt-portlet__body">
					<!--begin: Search Form -->
					<div class="kt-form kt-form--label-right kt-margin-t-20 kt-margin-b-10">
						<div class="row align-items-center">
							<div class="col-xl-8 order-2 order-xl-1">
								<div class="row align-items-center">
									<div class="col-md-4 kt-margin-b-20-tablet-and-mobile">
										<div class="kt-input-icon kt-input-icon--left">
											<div class="input-group">
												<input type="text" v-model="search" @keyup="searchit" class="form-control" placeholder="Search for...">
												<div class="input-group-append">
													<button class="btn btn-secondary" @click="searchit" type="submit">
														<i class="fas fa-search"></i>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--end: Search Form -->
				</div>
										
				<!--begin: Datatable -->
				<div class="kt-portlet__body">
					<div class="kt-section">
						<div class="kt-section__content">
							<div class="row">
								<div class="col-12">
									<div class="table-responsive-md">
										<table class="table table-hover">
											<thead class="thead-light">
												<tr>
													<th>S.no</th>
													<th>Discount By</th>
													<th>Start Date</th>
													<th>End Date</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr v-for="item in pages.data" :key="item.id">
													<th scope="row">{{ item.id }}</th>
													<td>{{ item.discount_by }}</td>
													<td>{{ item.discount_activation_date | formatDateBigMonth }}</td>
													<td>{{ item.discount_expiry_date | formatDateBigMonth}}</td>
													<td>
														<a href="#" class="btn btn-outline-warning btn-elevate btn-icon" @click="editPageData(item)"><i class="flaticon-edit"></i></a>
														<button class="btn btn-outline-danger btn-elevate btn-icon" @click="deletePage(item.id)"><i class="flaticon-delete"></i></button>
													</td>
												</tr>
											</tbody>
										</table>
										<table class="table table-hover">
											<tfoot>
												<pagination :data="pages" :limit="1" @pagination-change-page="getResults"></pagination>
												<p>Result Showing {{ pages.to }} of {{ pages.total }}</p>
											</tfoot>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--end: Datatable -->			
		</div>
		<div class="modal fade bd-example-modal-lg" id="kt_modal_4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;" aria-modal="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" v-show="editMode" id="exampleModalLabel">Update Discount`s Info</h5>
						<h5 class="modal-title" v-show="!editMode" id="exampleModalLabel">Add Discount`s Info</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						</button>
					</div>
					<form @submit.prevent="editMode ? updatePageData() : createPage()">
					<div class="modal-body">
						<div class="row">
							<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
								<label>By</label>
								<div class="kt-radio-inline">
									<label class="kt-radio kt-radio--bold kt-radio--primary">
										<input type="radio" v-model="form.discount_by" name="discount_by" @change="selectBy" id="sGender" value="Gender"> Gender
										<span></span>
									</label>
									<label class="kt-radio kt-radio--bold kt-radio--primary">
										<input type="radio" v-model="form.discount_by" name="discount_by" @change="selectBy" id="sBrand" value="Brand"> Brand
										<span></span>
									</label>
								</div>
							</div>
							<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
								<div class="form-group" id="Gender" v-show="genderShow">
									<label>Select Gender</label><br />
									<select v-model="form.gender_id" class="form-control select-multi" id="gender_id" @change="filterData" name="gender_id[]" multiple="multiple">
										<option v-for="c_id in gender_ids" :key="c_id.id" :value="c_id.id">{{ c_id.gender }}</option>
									</select>
								</div>
								<div class="form-group" id="Brand" v-show="brandShow">
									<label>Select Brand</label><br />
									<select v-model="form.brand_id" class="form-control select-multi" id="brand_id" @change="filterData" name="brand_id[]" multiple="multiple">
										<option v-for="c_id in brand_ids" :key="c_id.id" :value="c_id.id">{{ c_id.name }}</option>
									</select>
								</div>
							</div>
							<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
								<div class="form-group" id="Product">
									<label>Select Product By</label><br />
									<div class="kt-radio-inline">
										<label class="kt-radio kt-radio--bold kt-radio--primary">
											<input type="radio" v-model="form.product_by" name="product_by" @change="selectByProduct"  value="ALL"> ALL Product
											<span></span>
										</label>
										<label class="kt-radio kt-radio--bold kt-radio--primary">
											<input type="radio" v-model="form.product_by" name="product_by" @change="selectByProduct" value="Selected"> Selected Product
											<span></span>
										</label>
									</div>
								</div>
							</div>
							<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6" v-show="selected">
								<div class="form-group" id="Product">
									<label>Select Product</label><br />
									<select v-model="form.product_ids" class="form-control select-multi" id="product_ids" name="product_ids[]" multiple="multiple">
										<option v-for="c_id in product_data_ids" :key="c_id.id" :value="c_id.id">{{ c_id.model_no }}</option>
									</select>
								</div>
							</div>
							<div class="col-lg-6 col-md-12 form-group">
								<label>Discount Type</label>
								<select v-model="form.discount_type" class="form-control select" name="discount_type" id="disType">
									<option value="Amount">Amount</option>
									<option value="Percent">Percent</option>
								</select>
							</div>
							<div class="col-lg-6 col-md-12 form-group">
								<label>Discount Value</label>
								<input v-model="form.discount_value" type="text" name="discount_value" class="form-control" :class="{ 'is-invalid': form.errors.has('discount_value') }">
								<has-error :form="form" field="discount_value"></has-error>
							</div>
							<div class="col-lg-6 col-md-12 form-group">
								<label>Discount Max Value</label>
								<input v-model="form.max_value" type="text" name="max_value" class="form-control" :class="{ 'is-invalid': form.errors.has('max_value') }">
								<has-error :form="form" field="max_value"></has-error>
							</div>
							<div class="col-lg-6 col-md-12 form-group">
								<label>Discount Upto</label>
								<input v-model="form.discount_upto" type="text" name="discount_upto" class="form-control" :class="{ 'is-invalid': form.errors.has('discount_upto') }">
								<has-error :form="form" field="discount_upto"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group">
								<label>Discount Activation Date</label><br>
                                <date-picker name="discount_activation_date" v-model="form.discount_activation_date" type="date" value-type="YYYY-MM-DD"></date-picker>
							</div>
							<div class="col-md-12 col-lg-6 form-group">
								<label>Discount Expiry Date</label><br>
                                <date-picker name="discount_expiry_date" v-model="form.discount_expiry_date" type="date" value-type="YYYY-MM-DD"></date-picker>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" v-show="!editMode" class="btn btn-primary">Create</button>
						<button type="submit" v-show="editMode" class="btn btn-success">Update</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end:: Content -->
</div>
</template>

<script>
import Form from 'vform';
import axios from 'axios';
import DatePicker from 'vue2-datepicker';
import 'vue2-datepicker/index.css';
export default {
	data () {
		return {
			pages : {},
			editMode : false,
			search : '',
			apiAddress : 'api/discount',
			gender_ids : {},
			brand_ids : {},
			product_data_ids : {},
			genderShow : false,
			brandShow : false,
			selected : false,
			// Create a new form instance
			form: new Form({
				id: '',
				discount_by: '',
				product_by: '',
				gender_id: [],
				brand_id: [],
				product_ids: [],
				discount_type: '',
				discount_value: '',
				max_value: '',
				discount_upto: '',
				discount_activation_date: '',
				discount_expiry_date: ''
			})
		}
	},
	components: { DatePicker },
	methods: {
		getResults(page = 1) {
			this.$Progress.start();
			axios.get(this.siteUrl+this.apiAddress+'?page=' + page)
				.then(response => {
					this.pages = response.data;
				});
			this.$Progress.finish();
		},
		selectBy () {
			if(this.form.discount_by == 'Gender'){
				this.brandShow = false;
				this.genderShow = true;
				axios.get(this.siteUrl+'api/gender/idsShow').then((c_ids) => (this.gender_ids = c_ids.data));
			}
			else if (this.form.discount_by == 'Brand'){
				this.genderShow = false;
				this.brandShow = true;
				axios.get(this.siteUrl+'api/brand/idsShow').then((c_ids) => (this.brand_ids = c_ids.data));
			}
			else{}
		},
		selectByProduct () {
			if(this.form.product_by == 'ALL'){
				this.selected = false;
			}
			else if (this.form.product_by == 'Selected'){
				this.selected = true;
			}
			else{}
		},
		filterData () {
			if(this.form.discount_by == 'Gender' && this.form.gender_id.length > 0){
				axios.get(this.siteUrl+this.apiAddress+'/filterbygender?genders='+this.form.gender_id).then((c_ids) => (this.product_data_ids = c_ids.data));
				this.selected = true;
			}
			else if (this.form.discount_by == 'Brand' && this.form.brand_id.length > 0){
				axios.get(this.siteUrl+this.apiAddress+'/filterbybrand?brands='+this.form.brand_id).then((c_ids) => (this.product_data_ids = c_ids.data));
				this.selected = true;
			}
			else{
				this.selected = false;
			}
		},
		loadPageData () {
			this.$Progress.start();
			axios.get(this.siteUrl+this.apiAddress).then(({ data }) => (this.pages = data))
			this.$Progress.finish();
		},
		addPageData () {
			this.editMode = false;
			$('#kt_modal_4').modal('show');
			this.form.reset();
		},
		editPageData (data) {
			this.editMode = true;
			this.form.clear();
			$('#kt_modal_4').modal('show');
			this.form.reset();
			this.form.fill(data);
			if(this.form.discount_by == 'Gender'){
				this.brandShow = false;
				this.genderShow = true;
				axios.get(this.siteUrl+'api/gender/idsShow').then((c_ids) => (this.gender_ids = c_ids.data));
				this.form.gender_id = this.form.gender_id.split(',');
				this.form.brand_id = [];
			}
			else if (this.form.discount_by == 'Brand'){
				this.genderShow = false;
				this.brandShow = true;
				axios.get(this.siteUrl+'api/brand/idsShow').then((c_ids) => (this.brand_ids = c_ids.data));
				this.form.brand_id = this.form.brand_id.split(',');
				this.form.gender_id = [];
			}
			else{}

			if(this.form.discount_by == 'Gender' && this.form.gender_id.length > 0){
				axios.get(this.siteUrl+this.apiAddress+'/filterbygender?genders='+this.form.gender_id).then((c_ids) => (this.product_data_ids = c_ids.data));
				this.form.product_ids = this.form.product_ids.split(',');
				this.form.brand_id = [];
			}
			else if (this.form.discount_by == 'Brand' && this.form.brand_id.length > 0 ){
				axios.get(this.siteUrl+this.apiAddress+'/filterbybrand?brands='+this.form.brand_id).then((c_ids) => (this.product_data_ids = c_ids.data));
				this.form.product_ids = this.form.product_ids.split(',');
				this.form.gender_id = [];
			}
			else{
				this.selected = false;
			}

			if(this.form.product_by == 'ALL'){
				this.selected = false;
			}
			else if (this.form.product_by == 'Selected'){
				this.selected = true;
			}
			else{}
		},
		updatePageData () {
			this.$Progress.start();
			this.form.put(this.siteUrl+this.apiAddress+'/'+this.form.id)
			.then(()=>{
				Fire.$emit('AfterCreate');
				$('#kt_modal_4').modal('hide');
				$('.modal-backdrop').remove();

				Toast.fire({
					icon: 'success',
					title: 'Gender Updated Successfully'
				});
				
				this.$Progress.finish();
			})
			.catch(()=>{
				Toast.fire({
					icon: 'error',
					title: 'Error! Gender Not Updated'
				});
				this.$Progress.fail();
			})
		},
		deletePage (id) {
			Swal.fire({
			title: 'Are you sure?',
			text: "You won't be able to revert this!",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'Yes, delete it!'
			}).then((result) => {
			if (result.value) {
				this.form.delete(this.siteUrl+this.apiAddress+'/'+id)
				.then(()=>{
					Swal.fire(
					'Deleted!',
					'Your file has been deleted.',
					'success'
					)
					Fire.$emit('AfterCreate');
				})
				.catch(()=>{
					Swal.fire(
					'Failed!',
					'Error! Unable to Delete.',
					'warning'
					)
				})
			}
			})
		},
		createPage () {
			this.$Progress.start();
			this.form.post(this.siteUrl+this.apiAddress)
			.then(()=>{
				Fire.$emit('AfterCreate');
				$('#kt_modal_4').modal('hide');
				$('.modal-backdrop').remove();

				Toast.fire({
					icon: 'success',
					title: 'Gender Created Successfully'
				});
				
				this.$Progress.finish();
			})
			.catch(()=>{
				Toast.fire({
					icon: 'error',
					title: 'Error! Gender Not Created'
				});
				this.$Progress.fail();
			})
        },
		searchit: _.debounce(() => {
			Fire.$emit('searching');
		},1000)
	},

    created() {
		Fire.$on('searching',() => {
			this.$Progress.start();
			let query = this.search;
			if(query){
			axios.get(this.siteUrl+this.apiAddress+'/search/' + query)
				.then(({data}) => {
					this.pages = data;
					this.$Progress.finish();
				})
				.catch(()=>{
					Toast.fire({
						icon: 'error',
						title: 'Error!'
					});
					this.$Progress.fail();
				})
			}
			else{
				this.loadPageData();
				this.$Progress.finish();
			}
		});
		this.loadPageData();
		Fire.$on('AfterCreate',() => {
			this.loadPageData();
		});
    }
}
</script>
