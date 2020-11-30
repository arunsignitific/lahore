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
				<a href="#" class="kt-subheader__breadcrumbs-link">Watch Enquiry</a>
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
							Watch Enquiry List
						</h3>
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
													<th>Name</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr v-for="item in pages.data" :key="item.id">
													<th scope="row">{{ item.id }}</th>
													<td>{{ item.name }}</td>
													<td>
														<a href="#" class="btn btn-outline-info btn-elevate btn-icon" @click="editPageData(item)"><i class="flaticon-eye"></i></a>
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
		<div class="modal fade" id="kt_modal_4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;" aria-modal="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Watch Enquiry`s Info</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						</button>
					</div>
					<form>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12 col-lg-6 form-group">
								<label>Product ID</label>
								<input v-model="form.product_detail_id" type="text" name="product_detail_id" class="form-control" :class="{ 'is-invalid': form.errors.has('product_detail_id') }" disabled>
								<has-error :form="form" field="product_detail_id"></has-error>
								<!-- <button class="btn btn-primary" @click="ViewProductData(form.id)">View This Product</button> -->
							</div>
							<div class="col-md-12 col-lg-6 form-group">
								<label>Product Name</label>
								<input v-model="form.product_name" type="text" name="product_name" class="form-control" :class="{ 'is-invalid': form.errors.has('product_name') }" disabled>
								<has-error :form="form" field="product_name"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group">
								<label>Subject</label>
								<input v-model="form.subject" type="text" name="subject" class="form-control" :class="{ 'is-invalid': form.errors.has('subject') }" disabled>
								<has-error :form="form" field="subject"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group">
								<label>Name</label>
								<input v-model="form.name" type="text" name="name" class="form-control" :class="{ 'is-invalid': form.errors.has('name') }" disabled>
								<has-error :form="form" field="name"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group">
								<label>Email</label>
								<input v-model="form.email" type="text" name="email" class="form-control" :class="{ 'is-invalid': form.errors.has('email') }" disabled>
								<has-error :form="form" field="email"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group">
								<label>Contact No.</label>
								<input type="text" name="mob_no" v-model="form.mob_no" class="form-control" :class="{ 'is-invalid': form.errors.has('mob_no') }" disabled>
								<has-error :form="form" field="mob_no"></has-error>
							</div>
							<div class="col-12 form-group">
								<label>Message</label>
								<textarea v-model="form.message" type="text" name="message" class="form-control" :class="{ 'is-invalid': form.errors.has('message') }" disabled></textarea>
								<has-error :form="form" field="message"></has-error>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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
export default {
	data () {
		return {
			pages : {},
			search : '',
			apiAddress : 'api/watch-enquiry',
			// Create a new form instance
			form: new Form({
				id: '',
				product_detail_id: '',
				product_name: '',
				name: '',
				mob_no: '',
				email: '',
				message: '',
				subject: ''
			})
		}
	},
	methods: {
		getResults(page = 1) {
			this.$Progress.start();
			axios.get(this.siteUrl+this.apiAddress+'?page=' + page)
				.then(response => {
					this.pages = response.data;
				});
			this.$Progress.finish();
		},
		loadPageData () {
			this.$Progress.start();
			axios.get(this.siteUrl+this.apiAddress).then(({ data }) => (this.pages = data))
			this.$Progress.finish();
		},
		editPageData (data) {
			this.form.clear();
			$('#kt_modal_4').modal('show');
			this.form.reset();
			this.form.fill(data);
		},
		// ViewProductData (id) {
		// 	axios.get(this.siteUrl+'api/product-detail/'+id)
		// 	.then(()=>{
		// 		Toast.fire({
		// 			icon: 'success',
		// 			title: 'Product View Successfully'
		// 		});
		// 	})
		// 	.catch(()=>{
		// 		Toast.fire({
		// 			icon: 'error',
		// 			title: 'Error!'
		// 		});
		// 	})
		// },
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
