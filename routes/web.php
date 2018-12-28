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
Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::delete('/dashboard/product/delete/{id}', 'DashboardController@delete_product' );
Route::post('add_product', 'DashboardController@add_product' )->name('create_product' );

Route::middleware(['auth'])->group(function (){
	Route::group(['prefix' => 'dashboard'], function(){
		Route::get('/', 'DashboardController@index')->name('dashboard');
		Route::get('products', 'DashboardController@product_list')->name('dashboard.products');
		Route::get('product/{id}', 'DashboardController@single_product')->name('dashboard.product');
		Route::get('product/edit/{id}', 'DashboardController@edit_product')->name('dashboard.product.edit');
		Route::post('product/edit/{id}', 'DashboardController@product_update')->name('dashboard.product.update');
		//Route::post('product/update/{$id}', 'DashboardController@product_update' )->name('dashboard.update' );
		Route::any('products/search/', 'DashboardController@search')->name('product.search');
		Route::resource('event', 'EventsController');
		/*		
		Route::get('events', 'EventsController@index')->name('dashboard.events');
		Route::get('events/add', 'EventsController@create')->name('dashboard.events.add');
		*/
	});
});

Route::get('/dev', function(){
	//$products 	= App\User::find(1)->product;
	$author 	= App\Product::find(14)->user;
	dd( $author );
});