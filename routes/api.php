<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

/*----------------------------Page url-------------------------------*/
Route::apiResources(['page' => 'API\PageController']);
Route::get('page/search/{query}', 'API\PageController@search');
Route::put('page/statusupdate/{id}', 'API\PageController@updateStatus');
/*-------------------------------------------------------------------*/

/*------------------------Blog Category url--------------------------*/
Route::get('blog-category/idsShow', 'API\BlogCategoryController@idsShow');
Route::apiResources(['blog-category' => 'API\BlogCategoryController']);
Route::get('blog-category/search/{query}', 'API\BlogCategoryController@search');
Route::put('blog-category/statusupdate/{id}', 'API\BlogCategoryController@updateStatus');

/*-------------------------------------------------------------------*/

/*------------------------Blog Author url----------------------------*/
Route::get('blog-author/idsShow', 'API\BlogAuthorController@idsShow');
Route::apiResources(['blog-author' => 'API\BlogAuthorController']);
Route::get('blog-author/search/{query}', 'API\BlogAuthorController@search');

/*-------------------------------------------------------------------*/

/*----------------------------Blog url-------------------------------*/
Route::apiResources(['blog' => 'API\BlogController']);
Route::get('blog/search/{query}', 'API\BlogController@search');
Route::put('blog/statusupdate/{id}', 'API\BlogController@updateStatus');
/*-------------------------------------------------------------------*/

/*------------------------Banner Heading url-------------------------*/
Route::apiResources(['banner-heading' => 'API\BannerHeadingController']);
Route::get('banner-heading/search/{query}', 'API\BannerHeadingController@search');

/*-------------------------------------------------------------------*/

/*----------------------------SEO url--------------------------------*/
Route::apiResources(['seo-tag' => 'API\SeoTagController']);
Route::get('seo-tag/search/{query}', 'API\SeoTagController@search');
/*-------------------------------------------------------------------*/

/*----------------------------Inquiry url----------------------------*/
Route::apiResources(['inquiry' => 'API\InquiryController']);
Route::get('inquiry/search/{query}', 'API\InquiryController@search');
/*-------------------------------------------------------------------*/

/*----------------------------Watch Enquiry url----------------------------*/
Route::apiResources(['watch-enquiry' => 'API\WatchEnquiryController']);
Route::get('watch-enquiry/search/{query}', 'API\WatchEnquiryController@search');
/*-------------------------------------------------------------------*/

/*----------------------------Brand url------------------------------*/
Route::get('brand/idsShow', 'API\BrandController@idsShow');
Route::apiResources(['brand' => 'API\BrandController']);
Route::post('brand/import', 'API\BrandController@import');
Route::get('brand/search/{query}', 'API\BrandController@search');
Route::put('brand/statusupdate/{id}', 'API\BrandController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Collection url-------------------------*/
Route::get('collection/idsShow', 'API\CollectionController@idsShow');
Route::apiResources(['collection' => 'API\CollectionController']);
Route::post('collection/import', 'API\CollectionController@import');
Route::get('collection/search/{query}', 'API\CollectionController@search');
Route::put('collection/statusupdate/{id}', 'API\CollectionController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Main Categories url--------------------*/
Route::get('main-category/idsShow', 'API\MainCategoryController@idsShow');
Route::apiResources(['main-category' => 'API\MainCategoryController']);
Route::post('main-category/import', 'API\MainCategoryController@import');
Route::get('main-category/search/{query}', 'API\MainCategoryController@search');
Route::put('main-category/statusupdate/{id}', 'API\MainCategoryController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Movement url---------------------------*/
Route::get('movement/idsShow', 'API\MovementController@idsShow');
Route::apiResources(['movement' => 'API\MovementController']);
Route::post('movement/import', 'API\MovementController@import');
Route::get('movement/search/{query}', 'API\MovementController@search');
Route::put('movement/statusupdate/{id}', 'API\MovementController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Movement Type url----------------------*/
Route::get('movement-type/idsShow', 'API\MovementTypeController@idsShow');
Route::apiResources(['movement-type' => 'API\MovementTypeController']);
Route::post('movement-type/import', 'API\MovementTypeController@import');
Route::get('movement-type/search/{query}', 'API\MovementTypeController@search');
Route::put('movement-type/statusupdate/{id}', 'API\MovementTypeController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Case Size url--------------------------*/
Route::get('case-size/idsShow', 'API\CaseSizeController@idsShow');
Route::apiResources(['case-size' => 'API\CaseSizeController']);
Route::post('case-size/import', 'API\CaseSizeController@import');
Route::get('case-size/search/{query}', 'API\CaseSizeController@search');
Route::put('case-size/statusupdate/{id}', 'API\CaseSizeController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Case Shape url-------------------------*/
Route::get('case-shape/idsShow', 'API\CaseShapeController@idsShow');
Route::apiResources(['case-shape' => 'API\CaseShapeController']);
Route::post('case-shape/import', 'API\CaseShapeController@import');
Route::get('case-shape/search/{query}', 'API\CaseShapeController@search');
Route::put('case-shape/statusupdate/{id}', 'API\CaseShapeController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Case Material url----------------------*/
Route::get('case-material/idsShow', 'API\CaseMaterialController@idsShow');
Route::apiResources(['case-material' => 'API\CaseMaterialController']);
Route::post('case-material/import', 'API\CaseMaterialController@import');
Route::get('case-material/search/{query}', 'API\CaseMaterialController@search');
Route::put('case-material/statusupdate/{id}', 'API\CaseMaterialController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Glass Material url---------------------*/
Route::get('glass-material/idsShow', 'API\GlassMaterialController@idsShow');
Route::apiResources(['glass-material' => 'API\GlassMaterialController']);
Route::post('glass-material/import', 'API\GlassMaterialController@import');
Route::get('glass-material/search/{query}', 'API\GlassMaterialController@search');
Route::put('glass-material/statusupdate/{id}', 'API\GlassMaterialController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Dial Colour url------------------------*/
Route::get('dial-colour/idsShow', 'API\DialColourController@idsShow');
Route::apiResources(['dial-colour' => 'API\DialColourController']);
Route::post('dial-colour/import', 'API\DialColourController@import');
Route::get('dial-colour/search/{query}', 'API\DialColourController@search');
Route::put('dial-colour/statusupdate/{id}', 'API\DialColourController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Strap Material url---------------------*/
Route::get('strap-material/idsShow', 'API\StrapMaterialController@idsShow');
Route::apiResources(['strap-material' => 'API\StrapMaterialController']);
Route::post('strap-material/import', 'API\StrapMaterialController@import');
Route::get('strap-material/search/{query}', 'API\StrapMaterialController@search');
Route::put('strap-material/statusupdate/{id}', 'API\StrapMaterialController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Strap Colour url-----------------------*/
Route::get('strap-colour/idsShow', 'API\StrapColourController@idsShow');
Route::apiResources(['strap-colour' => 'API\StrapColourController']);
Route::post('strap-colour/import', 'API\StrapColourController@import');
Route::get('strap-colour/search/{query}', 'API\StrapColourController@search');
Route::put('strap-colour/statusupdate/{id}', 'API\StrapColourController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Gender url-----------------------------*/
Route::get('gender/idsShow', 'API\GenderController@idsShow');
Route::apiResources(['gender' => 'API\GenderController']);
Route::post('gender/import', 'API\GenderController@import');
Route::get('gender/search/{query}', 'API\GenderController@search');
/*-------------------------------------------------------------------*/

/*----------------------------Feature url----------------------------*/
Route::get('feature/idsShow', 'API\FeatureController@idsShow');
Route::apiResources(['feature' => 'API\FeatureController']);
Route::post('feature/import', 'API\FeatureController@import');
Route::get('feature/search/{query}', 'API\FeatureController@search');
Route::put('feature/statusupdate/{id}', 'API\FeatureController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Product Detail url---------------------*/
// Route::post('product-detail/{id}', 'API\ProductDetailController@update');
Route::apiResources(['product-detail' => 'API\ProductDetailController']);
Route::post('product-detail/import', 'API\ProductDetailController@import');
Route::get('product-detail/search/{query}', 'API\ProductDetailController@search');
Route::put('product-detail/statusupdate/{id}', 'API\ProductDetailController@updateStatus');
Route::put('product-detail/statusfeaturedupdate/{id}', 'API\ProductDetailController@updateFeaturedStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Discount url---------------------*/
Route::get('discount/filterbygender', 'API\DiscountController@filterByGender');
Route::get('discount/filterbybrand', 'API\DiscountController@filterByBrand');
// Route::post('product-detail/{id}', 'API\ProductDetailController@update');
Route::apiResources(['discount' => 'API\DiscountController']);
Route::get('discount/search/{query}', 'API\DiscountController@search');
/*-------------------------------------------------------------------*/

/*----------------------------Colour url-----------------------------*/
Route::get('colour/idsShow', 'API\ColourController@idsShow');
Route::apiResources(['colour' => 'API\ColourController']);
Route::post('colour/import', 'API\ColourController@import');
Route::get('colour/search/{query}', 'API\ColourController@search');
Route::put('colour/statusupdate/{id}', 'API\ColourController@updateStatus');
/*-------------------------------------------------------------------*/

/*----------------------------Clock Type url-------------------------*/
Route::get('clock-type/idsShow', 'API\ClockTypeController@idsShow');
Route::apiResources(['clock-type' => 'API\ClockTypeController']);
Route::post('clock-type/import', 'API\ClockTypeController@import');
Route::get('clock-type/search/{query}', 'API\ClockTypeController@search');
Route::put('clock-type/statusupdate/{id}', 'API\ClockTypeController@updateStatus');
/*-------------------------------------------------------------------*/
