<?php

/* 
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/clear-cache', function() {
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('config:clear');
    return "Cache is cleared";
});

Route::get('/', "MainController@frontendIndex")->name('index');

Route::get('/about-us', "MainController@about")->name('about');

Route::get('/repair-and-services', "MainController@repairServices")->name('repairServices');

Route::get('/contact-us', "MainController@contact")->name('contact');

Route::post('/contact-us/send', 'InquiryController@sendcontactmail')->name('contactMail');

Route::post('/watch/send', 'InquiryController@sendwatchmail')->name('watchMail');

Route::get('/watches/{name}/{slug}', 'MainController@watchFinder')->name('watchFinder');

Route::get('/blog', "MainController@blog")->name('blog');

Route::get('/blog/{slug}', "MainController@blogDetail")->name('blogView');

Route::get('/brand', "MainController@brandSearch")->name('brandSearch');

Route::get('/brand/{slug}', "MainController@brand")->name('brand');

Route::get('/product', "MainController@product")->name('product');

Route::get('/accessories', "MainController@accessories")->name('accessories');

Route::get('/product/{id}', "MainController@productDetail")->name('productView');

Route::get('/get-brand', "MainController@getBrand")->name('getBrand');

Route::any('/filter', "MainController@filters")->name('filter');

Route::post('/acc-filter', "MainController@accfilters")->name('accfilter');

Route::post('/sale-filter', "MainController@sale_filters")->name('salefilter');

Route::get('/sale', "MainController@sale")->name('sale');

Route::get('/store', "MainController@store")->name('store');


Route::get('/imageForm', "DropdownController@imageForm")->name('imageForm');

Route::post('/image-upload/upload', "DropdownController@image_upload")->name('image_upload');

Route::get('/404', "MainController@pageNotFound")->name('error');



Route::get('/user-login', "MainController@userlogin")->name('userlogin');
Route::post('/userloginCheck', "MainController@userloginCheck")->name('loginCheck');

Route::get('/user-register', "MainController@userRegister")->name('userRegister');

Route::post('/user-insert', "InquiryController@sendverifyedMail")->name('user-insert');

  

Route::get('/email-varification', "MainController@emailVarification")->name('emailVarification');




Route::get('/user-profile/{id?}', "MainController@userDashboard")->name('user-profile');
Route::get('/change-password/{id?}', "MainController@changePassword")->name('change-password');
Route::get('/edit-address/{id?}', "MainController@editAddress")->name('edit-address');


Route::match('/edit-address/{id?}', "MainController@editAddress")->name('edit-address');


Route::post('/cart', 'MainController@Cart')->name('cart');




Route::match(['get','post'], '/add-to-cart', 'MainController@addToCart')->name('addToCart');


Route::match(['get','post'], '/removeitem', 'MainController@RemoveItem')->name('removeitem');

Route::post('/remove-cart-item', 'MainController@removeCartitem')->name('removeCartitem');



Route::get('/user-logout', "MainController@userLogout")->name('user-logout');


/*------------------------------------------------ Admin route ------------------------------------------------*/

Route::Group(['prefix' => 'admin', 'middleware' => ['auth']], function () {

Route::get('/', function () {
    return view('admin.index');
})->name('admin');

Route::get('/changepassword', "DropdownController@passwordedit")->name('admin.passwordEdit');

Route::put('/changepassword/update', "DropdownController@changepassword")->name('admin.updatePassword');

});

/*------------------------------------------------ Admin route end ---------------------------------------------*/

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
// Route::get('{path}','HomeController@index')->where( 'path', '([A-z\d\-\/_.]+)?' );
Route::Group(['middleware' => ['auth']], function () {
    Route::get('/admin/{any}', function () {
        return view('admin.index');
    })->where('any', '.*');
});



////====----user login----====/////

