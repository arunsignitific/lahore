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
				<a href="#" class="kt-subheader__breadcrumbs-link">Product Details</a>
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
							Product Details List
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
						<vue-csv-import v-model="select_file" :map-fields="{
							field1: 'Id',
                			field2: 'model_no',
                			field3: 'series',
                			field4: 'price',
                			field5: 'material', 
                			field6: 'buckle',
                			field7: 'size',
                			field8: 'shape',
                			field9: 'frame_colour',
                			field10: 'lens',
                			field11: 'visible_ray',
                			field12: 'dimensions',
                			field13: 'nib',
                			field14: 'length_mm',
                			field15: 'taper',
                			field16: 'clasp_type',
                			field17: 'clasp_size',
                			field18: 'lock_system',
                			field19: 'description',
                			field20: 'warranty_period',
                			field21: 'main_category_id',
                			field22: 'colour_id',
                			field23: 'clock_type_id',
                			field24: 'brand_id',
                			field25: 'collection_id',
                			field26: 'movement_id',
                			field27: 'movement_type_id',
                			field28: 'case_size_id',
                			field29: 'case_shape_id',
                			field30: 'case_material_id',
                			field31: 'glass_material_id',
                			field32: 'dial_colour_id',
                			field33: 'strap_material_id',
                			field34: 'strap_colour_id',
                			field35: 'gender_id',
                			field36: 'feature_id'
						}">
						</vue-csv-import>
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
													<th>Model No.</th>
													<th>Status</th>
													<th>Featured Status</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr v-for="item in pages.data" :key="item.id">
													<th scope="row">{{ item.id }}</th>
													<td>{{ item.model_no }}</td>
													<td>
														<span class="kt-switch kt-switch--sm kt-switch--icon">
															<label>
																<input type="checkbox" v-model="item.status" @change="statusUpdate(item.id, item.status)" name="status">
																<span></span>
															</label>
														</span>
													</td>
													<td>
														<span class="kt-switch kt-switch--sm kt-switch--icon">
															<label>
																<input type="checkbox" v-model="item.featured_status" @change="statusFeaturedUpdate(item.id, item.featured_status)" name="featured_status">
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
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" v-show="editMode" id="exampleModalLabel">Update Product Detail`s post</h5>
						<h5 class="modal-title" v-show="!editMode" id="exampleModalLabel">Add Product Detail`s post</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						</button>
					</div>
					<form @submit.prevent="editMode ? updatePageData() : createPage()" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="row">
							<label class="col-md-6 col-lg-2 col-form-label">Active Status</label>
							<div class="col-md-6 col-lg-4 mb-5">
								<span class="kt-switch kt-switch--icon">
									<label>
										<input type="checkbox" v-model="form.status" name="status">
										<span></span>
									</label>
								</span>
							</div>
							<label class="col-md-6 col-lg-2 col-form-label">Featured Status</label>
							<div class="col-md-6 col-lg-4 mb-5">
								<span class="kt-switch kt-switch--icon">
									<label>
										<input type="checkbox" v-model="form.featured_status" name="featured_status">
										<span></span>
									</label>
								</span>
							</div>
							<div class="col-md-12 col-lg-6 form-group">
								<label>Main Categories</label>
								<select v-model="form.main_category_id" name="main_category_id" class="form-control" @change="selectBy">
									<option v-for="data_id in main_category_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group">
								<label>Brands</label>
								<select v-model="form.brand_id" name="brand_id" class="form-control">
									<option v-for="data_id in brand_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="collectionMode">
								<label>Collections</label>
								<select v-model="form.collection_id" name="collection_id" class="form-control">
									<option v-for="data_id in collection_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="colourMode">
								<label>Colours</label>
								<select v-model="form.colour_id" name="colour_id" class="form-control">
									<option v-for="data_id in colour_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="clock_typeMode">
								<label>Clock Types</label>
								<select v-model="form.clock_type_id" name="clock_type_id" class="form-control">
									<option v-for="data_id in clock_type_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="movementMode">
								<label>Movements</label>
								<select v-model="form.movement_id" name="movement_id" class="form-control">
									<option v-for="data_id in movement_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="movement_typeMode">
								<label>Movement Types</label>
								<select v-model="form.movement_type_id" name="movement_type_id" class="form-control">
									<option v-for="data_id in movement_type_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="case_sizeMode">
								<label>Case Sizes</label>
								<select v-model="form.case_size_id" name="case_size_id" class="form-control">
									<option v-for="data_id in case_size_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.case_size }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="case_shapeMode">
								<label>Case Shapes</label>
								<select v-model="form.case_shape_id" name="case_shape_id" class="form-control">
									<option v-for="data_id in case_shape_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="case_materialMode">
								<label>Case Materials</label>
								<select v-model="form.case_material_id" name="case_material_id" class="form-control">
									<option v-for="data_id in case_material_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="glass_materialMode">
								<label>Glass Materials</label>
								<select v-model="form.glass_material_id" name="glass_material_id" class="form-control">
									<option v-for="data_id in glass_material_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="dial_colourMode">
								<label>Dial Colours</label>
								<select v-model="form.dial_colour_id" name="dial_colour_id" class="form-control">
									<option v-for="data_id in dial_colour_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="strap_materialMode">
								<label>Strap Materials</label>
								<select v-model="form.strap_material_id" name="strap_material_id" class="form-control">
									<option v-for="data_id in strap_material_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="strap_colourMode">
								<label>Strap Colours</label>
								<select v-model="form.strap_colour_id" name="strap_colour_id" class="form-control">
									<option v-for="data_id in strap_colour_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="genderMode">
								<label>Gender</label>
								<select v-model="form.gender_id" name="gender_id" class="form-control">
									<option v-for="data_id in gender_ids.data" :key="data_id.id" :value="data_id.id">{{ data_id.gender }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="featureMode">
								<label>Features</label>
                                <!-- <multiselect v-model="value" :options="options" :multiple="true" :close-on-select="false" :clear-on-select="false" :preserve-search="true" placeholder="Pick some" label="name" track-by="name" :preselect-first="true">
                                    <template slot="selection" slot-scope="{ values, search, isOpen }"><span class="multiselect__single" v-if="values.length &amp;&amp; !isOpen">{{ values.length }} options selected</span></template>
                                </multiselect> -->
								<select v-model="form.feature_id" id="select2" name="feature_id[]" class="form-control" multiple style="width: 100%">
									<option v-for="data_id in feature_ids" :key="data_id.id" :value="data_id.id">{{ data_id.name }}</option>
								</select>
							</div>
							<div class="col-md-12 col-lg-6 form-group">
								<label>Model No.</label>
								<input v-model="form.model_no" type="text" name="model_no" class="form-control" :class="{ 'is-invalid': form.errors.has('model_no') }">
								<has-error :form="form" field="model_no"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="materialMode">
								<label>Material</label>
								<input v-model="form.material" type="text" name="material" class="form-control" :class="{ 'is-invalid': form.errors.has('material') }">
								<has-error :form="form" field="material"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="seriesMode">
								<label>Series</label>
								<input v-model="form.series" type="text" name="series" class="form-control" :class="{ 'is-invalid': form.errors.has('series') }">
								<has-error :form="form" field="series"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="buckleMode">
								<label>Buckle</label>
								<input v-model="form.buckle" type="text" name="buckle" class="form-control" :class="{ 'is-invalid': form.errors.has('buckle') }">
								<has-error :form="form" field="buckle"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="sizeMode">
								<label>Size</label>
								<input v-model="form.size" type="text" name="size" class="form-control" :class="{ 'is-invalid': form.errors.has('size') }">
								<has-error :form="form" field="size"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="shapeMode">
								<label>Shape</label>
								<input v-model="form.shape" type="text" name="shape" class="form-control" :class="{ 'is-invalid': form.errors.has('shape') }">
								<has-error :form="form" field="shape"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="frame_colourMode">
								<label>Frame Colour</label>
								<input v-model="form.frame_colour" type="text" name="frame_colour" class="form-control" :class="{ 'is-invalid': form.errors.has('frame_colour') }">
								<has-error :form="form" field="frame_colour"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="lensMode">
								<label>Lens</label>
								<input v-model="form.lens" type="text" name="lens" class="form-control" :class="{ 'is-invalid': form.errors.has('lens') }">
								<has-error :form="form" field="lens"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="visible_rayMode">
								<label>Visible Ray</label>
								<input v-model="form.visible_ray" type="text" name="visible_ray" class="form-control" :class="{ 'is-invalid': form.errors.has('visible_ray') }">
								<has-error :form="form" field="visible_ray"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="dimensionsMode">
								<label>Dimensions</label>
								<input v-model="form.dimensions" type="text" name="dimensions" class="form-control" :class="{ 'is-invalid': form.errors.has('dimensions') }">
								<has-error :form="form" field="dimensions"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="nibMode">
								<label>NIB</label>
								<input v-model="form.nib" type="text" name="nib" class="form-control" :class="{ 'is-invalid': form.errors.has('nib') }">
								<has-error :form="form" field="nib"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="length_mmMode">
								<label>Length MM</label>
								<input v-model="form.length_mm" type="text" name="length_mm" class="form-control" :class="{ 'is-invalid': form.errors.has('length_mm') }">
								<has-error :form="form" field="length_mm"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="taperMode">
								<label>Taper</label>
								<input v-model="form.taper" type="text" name="taper" class="form-control" :class="{ 'is-invalid': form.errors.has('taper') }">
								<has-error :form="form" field="taper"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="clasp_typeMode">
								<label>Clasp Type</label>
								<input v-model="form.clasp_type" type="text" name="clasp_type" class="form-control" :class="{ 'is-invalid': form.errors.has('clasp_type') }">
								<has-error :form="form" field="clasp_type"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="clasp_sizeMode">
								<label>Clasp Size</label>
								<input v-model="form.clasp_size" type="text" name="clasp_size" class="form-control" :class="{ 'is-invalid': form.errors.has('clasp_size') }">
								<has-error :form="form" field="clasp_size"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="lock_systemMode">
								<label>Lock System</label>
								<input v-model="form.lock_system" type="text" name="lock_system" class="form-control" :class="{ 'is-invalid': form.errors.has('lock_system') }">
								<has-error :form="form" field="lock_system"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group">
								<label>Price</label>
								<input v-model="form.price" type="text" name="price" class="form-control" :class="{ 'is-invalid': form.errors.has('price') }">
								<has-error :form="form" field="price"></has-error>
							</div>
							<div class="col-md-12 col-lg-6 form-group" v-show="warranty_periodMode">
								<label>Warranty Period</label>
								<input v-model="form.warranty_period" type="text" name="warranty_period" class="form-control" :class="{ 'is-invalid': form.errors.has('warranty_period') }">
								<has-error :form="form" field="warranty_period"></has-error>
							</div>
							<div class="col-md-12 form-group">
								<label>H1 Heading</label>
								<input v-model="form.h1" type="text" name="h1" class="form-control" :class="{ 'is-invalid': form.errors.has('h1') }">
								<has-error :form="form" field="h1 heading"></has-error>
							</div>
							<div class="col-md-12 form-group">
								<label>Meta Title</label>
								<input v-model="form.meta_title" type="text" name="meta_title" class="form-control" :class="{ 'is-invalid': form.errors.has('meta_title') }">
								<has-error :form="form" field="meta_title"></has-error>
							</div>
							<div class="col-md-12 form-group">
								<label>Meta Description</label>
								<input v-model="form.meta_description" type="text" name="meta_description" class="form-control" :class="{ 'is-invalid': form.errors.has('meta_description') }">
								<has-error :form="form" field="meta_description"></has-error>
							</div>
							<div class="col-md-12 form-group">
								<label>Meta Keyword</label>
								<input v-model="form.meta_keyword" type="text" name="meta_keyword" class="form-control" :class="{ 'is-invalid': form.errors.has('meta_keyword') }">
								<has-error :form="form" field="meta_keyword"></has-error>
							</div>
                            <div class="col-md-12 col-lg-6 form-group">
                                <label for="images" class="control-label">Product Image</label><br>
                                <input type="file" @change="updateProfile" name="images[]" id="upload-file" multiple class="form-input"><br>
                            </div>
							<div class="col-12 form-group">
								<label>Product Description</label>
								<ckeditor name="description" row="3" v-model="form.description" :class="{ 'is-invalid': form.errors.has('description') }"></ckeditor>
								<has-error :form="form" field="description"></has-error>
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
<style src="vue-multiselect/dist/vue-multiselect.min.css"></style>
<script>
import Form from 'vform';
import axios from 'axios';
import { VueCsvImport } from 'vue-csv-import';
// import Multiselect from 'vue-multiselect';
// import ClassicEditor from '@ckeditor/ckeditor5-build-classic'; 
export default {
	data () {
		return {
			pages : {},
			editMode : false,
            colourMode : false,
            clock_typeMode : false,
            collectionMode : false,
            movementMode : false,
            movement_typeMode : false,
            case_sizeMode : false,
            case_shapeMode : false,
            case_materialMode : false,
            glass_materialMode : false,
            dial_colourMode : false,
            strap_materialMode : false,
            strap_colourMode : false,
            genderMode : false,
            featureMode : false,
			materialMode : false,
			seriesMode : false,
			buckleMode : false,
			sizeMode : false,
			shapeMode : false,
			frame_colourMode : false,
			lensMode : false,
			visible_rayMode : false,
			dimensionsMode : false,
			nibMode : false,
			length_mmMode : false,
			taperMode : false,
			clasp_typeMode : false,
			clasp_sizeMode : false,
			lock_systemMode : false,
			warranty_periodMode : false,
			search : '',
            apiAddress : 'api/product-detail',
            main_category_ids : {},
            brand_ids : {},
            colour_ids : {},
            clock_type_ids : {},
            collection_ids : {},
            movement_ids : {},
            movement_type_ids : {},
            case_size_ids : {},
            case_shape_ids : {},
            case_material_ids : {},
            glass_material_ids : {},
            dial_colour_ids : {},
            strap_material_ids : {},
            strap_colour_ids : {},
			gender_ids : {},
			feature_ids : {},
			image: [],
            select_file: [],
			// options: [],
			// Create a new form instance
			form: new Form({
				id: '',
                main_category_id : '',
                colour_id : '',
                clock_type_id : '',
                brand_id : '',
                collection_id : '',
                movement_id : '',
                movement_type_id : '',
                case_size_id : '',
                case_shape_id : '',
                case_material_id : '',
                glass_material_id : '',
                dial_colour_id : '',
                strap_material_id : '',
                strap_colour_id : '',
                gender_id : '',
                feature_id : [],
				model_no: '',
				series: '',
				price: '',
				material: '',
				buckle: '',
				size: '',
				shape: '',
				frame_colour: '',
				lens: '',
				visible_ray: '',
				dimensions: '',
				nib: '',
				length_mm: '',
				taper: '',
				clasp_type: '',
				clasp_size: '',
				lock_system: '',
				description: '',
				warranty_period: '',
				meta_title: '',
				meta_description: '',
				meta_keyword: '',
				h1: '',
				images: [],
				status: true,
				featured_status: false
			})
		}
    },
	components: { VueCsvImport },
    // components: { Multiselect },
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
		addPageData () {
			this.editMode = false;
			$('#kt_modal_4').modal('show');
			Fire.$emit('load_ids');
			this.form.reset();
			// $('select').select2({
			// 	width : '100%'
			// });
			// this.value = [];
		},
		editPageData (data) {
			this.editMode = true;
			this.form.clear();
			$('#kt_modal_4').modal('show');
            this.form.reset();
			this.form.fill(data);
			Fire.$emit('load_ids');
			// $('select').select2({
			// 	width : '100%'
			// });
			// this.value = jQuery.parseJSON(this.form.feature_id);
			this.form.feature_id = (this.form.feature_id == null)? [] : this.form.feature_id.split(',');
			this.form.images = (this.form.images == null)? [] : this.form.images.split(',');
			this.selectBy(this.form.main_category_id);
		},
		updatePageData () {
			this.$Progress.start();
			this.form.images = this.image;
			this.form.put(this.siteUrl+this.apiAddress+'/'+this.form.id)
			.then(()=>{
				Fire.$emit('AfterCreate');
				$('#kt_modal_4').modal('hide');
				$('.modal-backdrop').remove();
				Toast.fire({
					icon: 'success',
					title: 'Product Detail Updated Successfully'
				});
				this.$Progress.finish();
			})
			.catch(()=>{
				Toast.fire({
					icon: 'error',
					title: 'Error! Product Detail Not Updated'
				});
				this.$Progress.fail();
			})

			$("#upload-file").val('');
			this.form.image = [];
			this.image = [];
		},
        updateProfile(e){
            let selectedFiles=e.target.files;
			for(let i=0; i<selectedFiles.length; i++){
				let file = selectedFiles[i];
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
					this.image.push(reader.result);
				}
				reader.readAsDataURL(file);
			}
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
			// this.form.feature_id = this.value;
			this.form.images = this.image;
			this.form.post(this.siteUrl+this.apiAddress)
			.then(()=>{
				Fire.$emit('AfterCreate');
				$('#kt_modal_4').modal('hide');
				$('.modal-backdrop').remove();

				Toast.fire({
					icon: 'success',
					title: 'Product Detail Created Successfully'
				});
				
				this.$Progress.finish();
			})
			.catch(()=>{
				Toast.fire({
					icon: 'error',
					title: 'Error! Product Detail Not Created'
				});
				this.$Progress.fail();
			})

			$("#upload-file").val('');
			this.form.image = [];
			this.image = [];
		},
		selectBy (id) {
			if(this.form.main_category_id == 1 || 1 == id){
				this.colourMode = false;
            	this.clock_typeMode = false;
            	this.collectionMode = true;
            	this.movementMode = true;
            	this.movement_typeMode = true;
            	this.case_sizeMode = true;
            	this.case_shapeMode = true;
            	this.case_materialMode = true;
            	this.glass_materialMode = true;
            	this.dial_colourMode = true;
            	this.strap_materialMode = true;
            	this.strap_colourMode = true;
            	this.genderMode = true;
            	this.featureMode = true;
				this.materialMode = false;
				this.seriesMode = true;
				this.buckleMode = false;
				this.sizeMode = false;
				this.shapeMode = false;
				this.frame_colourMode = false;
				this.lensMode = false;
				this.visible_rayMode = false;
				this.dimensionsMode = false;
				this.nibMode = false;
				this.length_mmMode = false;
				this.taperMode = false;
				this.clasp_typeMode = false;
				this.clasp_sizeMode = false;
				this.lock_systemMode = false;
				this.warranty_periodMode = true;
			}
			else if(this.form.main_category_id == 2 || 2 == id){
				this.colourMode = true;
            	this.clock_typeMode = false;
            	this.collectionMode = true;
            	this.movementMode = false;
            	this.movement_typeMode = false;
            	this.case_sizeMode = false;
            	this.case_shapeMode = false;
            	this.case_materialMode = true;
            	this.glass_materialMode = false;
            	this.dial_colourMode = false;
            	this.strap_materialMode = false;
            	this.strap_colourMode = false;
            	this.genderMode = false;
            	this.featureMode = true;
				this.materialMode = false;
				this.seriesMode = true;
				this.buckleMode = false;
				this.sizeMode = false;
				this.shapeMode = false;
				this.frame_colourMode = false;
				this.lensMode = false;
				this.visible_rayMode = false;
				this.dimensionsMode = false;
				this.nibMode = true;
				this.length_mmMode = false;
				this.taperMode = false;
				this.clasp_typeMode = false;
				this.clasp_sizeMode = false;
				this.lock_systemMode = false;
				this.warranty_periodMode = true;
			}
			else if(this.form.main_category_id == 3 || 3 == id){
				this.colourMode = false;
            	this.clock_typeMode = false;
            	this.collectionMode = true;
            	this.movementMode = false;
            	this.movement_typeMode = false;
            	this.case_sizeMode = false;
            	this.case_shapeMode = false;
            	this.case_materialMode = false;
            	this.glass_materialMode = false;
            	this.dial_colourMode = false;
            	this.strap_materialMode = false;
            	this.strap_colourMode = false;
            	this.genderMode = true;
            	this.featureMode = false;
				this.seriesMode = false;
				this.materialMode = true;
				this.buckleMode = true;
				this.sizeMode = true;
				this.shapeMode = false;
				this.frame_colourMode = false;
				this.lensMode = false;
				this.visible_rayMode = false;
				this.dimensionsMode = false;
				this.nibMode = false;
				this.length_mmMode = false;
				this.taperMode = false;
				this.clasp_typeMode = false;
				this.clasp_sizeMode = false;
				this.lock_systemMode = false;
				this.warranty_periodMode = true;
			}
			else if(this.form.main_category_id == 4 || 4 == id){
				this.colourMode = false;
            	this.clock_typeMode = false;
            	this.collectionMode = false;
            	this.movementMode = false;
            	this.movement_typeMode = false;
            	this.case_sizeMode = false;
            	this.case_shapeMode = false;
            	this.case_materialMode = false;
            	this.glass_materialMode = false;
            	this.dial_colourMode = false;
            	this.strap_materialMode = false;
            	this.strap_colourMode = false;
            	this.genderMode = true;
            	this.featureMode = false;
				this.materialMode = true;
				this.seriesMode = false;
				this.buckleMode = false;
				this.sizeMode = false;
				this.shapeMode = false;
				this.frame_colourMode = false;
				this.lensMode = false;
				this.visible_rayMode = false;
				this.dimensionsMode = false;
				this.nibMode = false;
				this.length_mmMode = false;
				this.taperMode = false;
				this.clasp_typeMode = false;
				this.clasp_sizeMode = false;
				this.lock_systemMode = false;
				this.warranty_periodMode = true;
			}
			else if(this.form.main_category_id == 5 || 5 == id){
				this.colourMode = false;
            	this.clock_typeMode = true;
            	this.collectionMode = true;
            	this.movementMode = true;
            	this.movement_typeMode = false;
            	this.case_sizeMode = true;
            	this.case_shapeMode = true;
            	this.case_materialMode = true;
            	this.glass_materialMode = true;
            	this.dial_colourMode = true;
            	this.strap_materialMode = false;
            	this.strap_colourMode = false;
            	this.genderMode = false;
            	this.featureMode = true;
				this.materialMode = false;
				this.seriesMode = true;
				this.buckleMode = false;
				this.sizeMode = false;
				this.shapeMode = false;
				this.frame_colourMode = false;
				this.lensMode = false;
				this.visible_rayMode = false;
				this.dimensionsMode = false;
				this.nibMode = false;
				this.length_mmMode = false;
				this.taperMode = false;
				this.clasp_typeMode = false;
				this.clasp_sizeMode = false;
				this.lock_systemMode = false;
				this.warranty_periodMode = true;
			}
			else if(this.form.main_category_id == 6 || 6 == id){
				this.colourMode = true;
            	this.clock_typeMode = false;
            	this.collectionMode = true;
            	this.movementMode = false;
            	this.movement_typeMode = false;
            	this.case_sizeMode = false;
            	this.case_shapeMode = false;
            	this.case_materialMode = false;
            	this.glass_materialMode = false;
            	this.dial_colourMode = false;
            	this.strap_materialMode = false;
            	this.strap_colourMode = false;
            	this.genderMode = true;
            	this.featureMode = false;
				this.materialMode = true;
				this.seriesMode = false;
				this.buckleMode = false;
				this.sizeMode = true;
				this.shapeMode = true;
				this.frame_colourMode = false;
				this.lensMode = false;
				this.visible_rayMode = false;
				this.dimensionsMode = false;
				this.nibMode = false;
				this.length_mmMode = false;
				this.taperMode = false;
				this.clasp_typeMode = false;
				this.clasp_sizeMode = false;
				this.lock_systemMode = false;
				this.warranty_periodMode = true;
			}
			else if(this.form.main_category_id == 7 || 7 == id){
				this.colourMode = true;
            	this.clock_typeMode = false;
            	this.collectionMode = true;
            	this.movementMode = false;
            	this.movement_typeMode = false;
            	this.case_sizeMode = false;
            	this.case_shapeMode = false;
            	this.case_materialMode = true;
            	this.glass_materialMode = false;
            	this.dial_colourMode = false;
            	this.strap_materialMode = false;
            	this.strap_colourMode = false;
            	this.genderMode = true;
            	this.featureMode = false;
				this.materialMode = false;
				this.seriesMode = false;
				this.buckleMode = false;
				this.sizeMode = false;
				this.shapeMode = false;
				this.frame_colourMode = true;
				this.lensMode = true;
				this.visible_rayMode = true;
				this.dimensionsMode = true;
				this.nibMode = false;
				this.length_mmMode = false;
				this.taperMode = false;
				this.clasp_typeMode = false;
				this.clasp_sizeMode = false;
				this.lock_systemMode = false;
				this.warranty_periodMode = true;
			}
			else if(this.form.main_category_id == 8 || 8 == id){
				this.colourMode = false;
            	this.clock_typeMode = false;
            	this.collectionMode = false;
            	this.movementMode = false;
            	this.movement_typeMode = false;
            	this.case_sizeMode = false;
            	this.case_shapeMode = false;
            	this.case_materialMode = false;
            	this.glass_materialMode = false;
            	this.dial_colourMode = false;
            	this.strap_materialMode = false;
            	this.strap_colourMode = false;
            	this.genderMode = true;
            	this.featureMode = false;
				this.materialMode = true;
				this.seriesMode = false;
				this.buckleMode = false;
				this.sizeMode = false;
				this.shapeMode = false;
				this.frame_colourMode = false;
				this.lensMode = false;
				this.visible_rayMode = false;
				this.dimensionsMode = false;
				this.nibMode = false;
				this.length_mmMode = false;
				this.taperMode = false;
				this.clasp_typeMode = false;
				this.clasp_sizeMode = false;
				this.lock_systemMode = false;
				this.warranty_periodMode = true;
			}
			else if(this.form.main_category_id == 9 || 9 == id){
				this.colourMode = false;
            	this.clock_typeMode = false;
            	this.collectionMode = false;
            	this.movementMode = false;
            	this.movement_typeMode = false;
            	this.case_sizeMode = false;
            	this.case_shapeMode = false;
            	this.case_materialMode = false;
            	this.glass_materialMode = false;
            	this.dial_colourMode = false;
            	this.strap_materialMode = false;
            	this.strap_colourMode = false;
            	this.genderMode = true;
            	this.featureMode = false;
				this.materialMode = true;
				this.seriesMode = false;
				this.buckleMode = false;
				this.sizeMode = false;
				this.shapeMode = false;
				this.frame_colourMode = false;
				this.lensMode = false;
				this.visible_rayMode = false;
				this.dimensionsMode = false;
				this.nibMode = false;
				this.length_mmMode = false;
				this.taperMode = false;
				this.clasp_typeMode = false;
				this.clasp_sizeMode = false;
				this.lock_systemMode = false;
				this.warranty_periodMode = true;
			}
			else if(this.form.main_category_id == 10 || 10 == id){
				this.colourMode = false;
            	this.clock_typeMode = false;
            	this.collectionMode = false;
            	this.movementMode = false;
            	this.movement_typeMode = false;
            	this.case_sizeMode = false;
            	this.case_shapeMode = false;
            	this.case_materialMode = false;
            	this.glass_materialMode = false;
            	this.dial_colourMode = false;
            	this.strap_materialMode = false;
            	this.strap_colourMode = true;
            	this.genderMode = false;
            	this.featureMode = false;
				this.materialMode = true;
				this.seriesMode = false;
				this.buckleMode = false;
				this.sizeMode = false;
				this.shapeMode = false;
				this.frame_colourMode = false;
				this.lensMode = false;
				this.visible_rayMode = false;
				this.dimensionsMode = false;
				this.nibMode = false;
				this.length_mmMode = true;
				this.taperMode = true;
				this.clasp_typeMode = true;
				this.clasp_sizeMode = true;
				this.lock_systemMode = false;
				this.warranty_periodMode = false;
			}
			else if(this.form.main_category_id == 11 || 11 == id){
				this.colourMode = true;
            	this.clock_typeMode = false;
            	this.collectionMode = true;
            	this.movementMode = false;
            	this.movement_typeMode = false;
            	this.case_sizeMode = false;
            	this.case_shapeMode = false;
            	this.case_materialMode = false;
            	this.glass_materialMode = false;
            	this.dial_colourMode = false;
            	this.strap_materialMode = false;
            	this.strap_colourMode = false;
            	this.genderMode = true;
            	this.featureMode = false;
				this.materialMode = true;
				this.seriesMode = false;
				this.buckleMode = false;
				this.sizeMode = false;
				this.shapeMode = false;
				this.frame_colourMode = false;
				this.lensMode = false;
				this.visible_rayMode = false;
				this.dimensionsMode = false;
				this.nibMode = false;
				this.length_mmMode = false;
				this.taperMode = false;
				this.clasp_typeMode = false;
				this.clasp_sizeMode = false;
				this.lock_systemMode = false;
				this.warranty_periodMode = true;
			}
			else if(this.form.main_category_id == 12 || 12 == id){
				this.colourMode = true;
            	this.clock_typeMode = false;
            	this.collectionMode = false;
            	this.movementMode = false;
            	this.movement_typeMode = false;
            	this.case_sizeMode = false;
            	this.case_shapeMode = false;
            	this.case_materialMode = false;
            	this.glass_materialMode = false;
            	this.dial_colourMode = false;
            	this.strap_materialMode = false;
            	this.strap_colourMode = false;
            	this.genderMode = false;
            	this.featureMode = true;
				this.materialMode = true;
				this.seriesMode = false;
				this.buckleMode = false;
				this.sizeMode = true;
				this.shapeMode = false;
				this.frame_colourMode = false;
				this.lensMode = false;
				this.visible_rayMode = false;
				this.dimensionsMode = false;
				this.nibMode = false;
				this.length_mmMode = false;
				this.taperMode = false;
				this.clasp_typeMode = false;
				this.clasp_sizeMode = false;
				this.lock_systemMode = true;
				this.warranty_periodMode = false;
			}
			else{}
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
		statusFeaturedUpdate (id, status) {
			this.$Progress.start();
			this.form.featured_status = status;
			this.form.put(this.siteUrl+this.apiAddress+'/statusfeaturedupdate/'+id)
			.then(()=>{
				Fire.$emit('AfterCreate');

				Toast.fire({
					icon: 'success',
					title: 'Featured Status Updated Successfully'
				});
				
				this.$Progress.finish();
			})
			.catch(()=>{
				Toast.fire({
					icon: 'error',
					title: 'Error! Featured Status Not Updated'
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
					title: 'Product Details Created Successfully'
				});
				
				this.$Progress.finish();
            })
            .catch(()=>{
                Toast.fire({
                    icon: 'error',
                    title: 'Error! Product Details Not Created'
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
		Fire.$on('load_ids',() => {
			axios.get(this.siteUrl+'api/main-category/idsShow').then((main_category_ids) => (this.main_category_ids = main_category_ids));
			axios.get(this.siteUrl+'api/brand/idsShow').then((brand_ids) => (this.brand_ids = brand_ids));
			axios.get(this.siteUrl+'api/collection/idsShow').then((collection_ids) => (this.collection_ids = collection_ids));
			axios.get(this.siteUrl+'api/movement/idsShow').then((movement_ids) => (this.movement_ids = movement_ids));
			axios.get(this.siteUrl+'api/movement-type/idsShow').then((movement_type_ids) => (this.movement_type_ids = movement_type_ids));
			axios.get(this.siteUrl+'api/case-size/idsShow').then((case_size_ids) => (this.case_size_ids = case_size_ids));
			axios.get(this.siteUrl+'api/case-shape/idsShow').then((case_shape_ids) => (this.case_shape_ids = case_shape_ids));
			axios.get(this.siteUrl+'api/case-material/idsShow').then((case_material_ids) => (this.case_material_ids = case_material_ids));
			axios.get(this.siteUrl+'api/glass-material/idsShow').then((glass_material_ids) => (this.glass_material_ids = glass_material_ids));
			axios.get(this.siteUrl+'api/dial-colour/idsShow').then((dial_colour_ids) => (this.dial_colour_ids = dial_colour_ids));
			axios.get(this.siteUrl+'api/strap-material/idsShow').then((strap_material_ids) => (this.strap_material_ids = strap_material_ids));
			axios.get(this.siteUrl+'api/strap-colour/idsShow').then((strap_colour_ids) => (this.strap_colour_ids = strap_colour_ids));
			axios.get(this.siteUrl+'api/gender/idsShow').then((gender_ids) => (this.gender_ids = gender_ids));
			axios.get(this.siteUrl+'api/colour/idsShow').then((colour_ids) => (this.colour_ids = colour_ids));
			axios.get(this.siteUrl+'api/clock-type/idsShow').then((clock_type_ids) => (this.clock_type_ids = clock_type_ids));
			// axios.get(this.siteUrl+'api/feature/idsShow').then((feature_ids) => (this.options = feature_ids.data));
			axios.get(this.siteUrl+'api/feature/idsShow').then((feature_ids) => (this.feature_ids = feature_ids.data));
		});
    }
}
</script>
