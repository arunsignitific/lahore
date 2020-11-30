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
				<a href="#" class="kt-subheader__breadcrumbs-link">Brands</a>
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
							Brands List
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
                        <table class="table">
                        <tr>
                        <td width="30">
						<vue-csv-import v-model="select_file" :map-fields="{field1: 'Id', field2: 'Name'}"></vue-csv-import>
                        </td>
                        <td width="30%" align="left" v-if="select_file.length">
                            <button class="btn btn-primary" @click="submitFiles()">Submit</button>
                        </td>
                        </tr>
                        </table>
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
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr v-for="item in pages.data" :key="item.id">
													<th scope="row">{{ item.id }}</th>
													<td>{{ item.name }}</td>
													<td>
														<span class="kt-switch kt-switch--sm kt-switch--icon">
															<label>
																<input type="checkbox" v-model="item.status" @change="statusUpdate(item.id, item.status)" name="status">
																<span></span>
															</label>
														</span>
													</td>
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
		<div class="modal fade" id="kt_modal_4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="display: none;" aria-modal="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" v-show="editMode" id="exampleModalLabel">Update Brand`s Info</h5>
						<h5 class="modal-title" v-show="!editMode" id="exampleModalLabel">Add Brand`s Info</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						</button>
					</div>
					<form @submit.prevent="editMode ? updatePageData() : createPage()">
					<div class="modal-body">
						<div class="row">
							<label class="col-4 col-form-label">Active Status</label>
							<div class="col-8 mb-5">
								<span class="kt-switch kt-switch--icon">
									<label>
										<input type="checkbox" v-model="form.status" name="status">
										<span></span>
									</label>
								</span>
							</div>
							<div class="col-md-12 form-group">
								<label>Name</label>
								<input v-model="form.name" type="text" name="name" class="form-control" :class="{ 'is-invalid': form.errors.has('name') }">
								<has-error :form="form" field="name"></has-error>
							</div>
							<div class="col-md-12 form-group">
								<label>Slug</label>
								<input v-model="form.slug" type="text" name="slug" class="form-control" :class="{ 'is-invalid': form.errors.has('slug') }">
								<has-error :form="form" field="slug"></has-error>
							</div>
							<div class="col-md-12 form-group">
								<label for="name_color">Name Color</label>
								<input v-model="form.name_color" type="color"  class="form-control" id="favcolor" name="name_color" value="#ffffff">
							</div>
                            <div class="col-md-12 form-group">
                                <label for="logo_img" class="control-label">Logo Image</label><br>
                                <input type="file" @change="updateProfile" name="logo_img" class="form-input"><br>
								<img :src="getPagePhoto()" v-if="form.logo_img" style="width:120px;">
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="banner_img" class="control-label">Banner Image</label><br>
                                <input type="file" @change="updateBanner" name="banner_img" class="form-input"><br>
								<img :src="getBannerPhoto()" v-if="form.banner_img" style="width:120px;">
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
import { VueCsvImport } from 'vue-csv-import';
export default {
	data () {
		return {
			pages : {},
			editMode : false,
			search : '',
			apiAddress : 'api/brand',
            select_file: [],
			// Create a new form instance
			form: new Form({
				id: '',
				name: '',
				slug: '',
				logo_img: '',
				banner_img: '',
				name_color: '',
				status: true
			})
		}
	},
	components: { VueCsvImport },
	methods: {
		getResults(page = 1) {
			this.$Progress.start();
			axios.get(this.siteUrl+this.apiAddress+'?page=' + page)
				.then(response => {
					this.pages = response.data;
				});
			this.$Progress.finish();
		},
        getPagePhoto(){
            let photo = (this.form.logo_img.length > 200) ? this.form.logo_img : this.siteUrl+"storage/app/brand_images/"+ this.form.logo_img ;
            return photo;
        },
        getBannerPhoto(){
            let photo = (this.form.banner_img.length > 200) ? this.form.banner_img : this.siteUrl+"storage/app/header_image/"+ this.form.banner_img ;
            return photo;
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
			this.form.name_color = '#ffffff';
		},
		editPageData (data) {
			this.editMode = true;
			this.form.clear();
			$('#kt_modal_4').modal('show');
			this.form.reset();
			this.form.fill(data);
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
					title: 'Brand Updated Successfully'
				});
				
				this.$Progress.finish();
			})
			.catch(()=>{
				Toast.fire({
					icon: 'error',
					title: 'Error! Brand Not Updated'
				});
				this.$Progress.fail();
			})
		},
        updateProfile(e){
            let file = e.target.files[0];
            let reader = new FileReader();
            let limit = 1024 * 1024 * 2;
            if(file['size'] > limit){
                Swal.fire(
                   'warning!',
				   'Oops...! You are uploading a large file',
				   'warning'
                )
                return false;
            }
            reader.onloadend = (file) => {
                this.form.logo_img = reader.result;
            }
            reader.readAsDataURL(file);
        },
        updateBanner(e){
            let file = e.target.files[0];
            let reader = new FileReader();
            let limit = 1024 * 1024 * 2;
            if(file['size'] > limit){
                Swal.fire(
                   'warning!',
				   'Oops...! You are uploading a large file',
				   'warning'
                )
                return false;
            }
            reader.onloadend = (file) => {
                this.form.banner_img = reader.result;
            }
            reader.readAsDataURL(file);
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
					title: 'Brand Created Successfully'
				});
				
				this.$Progress.finish();
			})
			.catch(()=>{
				Toast.fire({
					icon: 'error',
					title: 'Error! Brand Not Created'
				});
				this.$Progress.fail();
			})
		},
		statusUpdate (id, status) {
			this.$Progress.start();
			this.form.status = status;
			this.form.put(this.siteUrl+this.apiAddress+'/statusupdate/'+id)
			.then(()=>{
				Fire.$emit('AfterCreate');

				Toast.fire({
					icon: 'success',
					title: 'Status Updated Successfully'
				});
				
				this.$Progress.finish();
			})
			.catch(()=>{
				Toast.fire({
					icon: 'error',
					title: 'Error! Status Not Updated'
				});
				this.$Progress.fail();
			})
		},
        submitFiles(){
			this.$Progress.start();
            let formData = new FormData();
            formData.append('select_file', JSON.stringify(this.select_file));

            axios.post(this.siteUrl+this.apiAddress+'/import',
                formData
            ).then(()=>{
				Fire.$emit('AfterCreate');

				Toast.fire({
					icon: 'success',
					title: 'Brand Created Successfully'
				});
				
				this.$Progress.finish();
            })
            .catch(()=>{
                Toast.fire({
                    icon: 'error',
                    title: 'Error! Brand Not Created'
                });
                this.$Progress.fail();
            });
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
