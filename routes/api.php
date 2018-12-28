<?php

use Illuminate\Http\Request;
use App\Product;
use App\Http\Resources\ProductResource as Products;
use App\Http\Resources\ProductCollection;

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

Route::group(['prefix' => 'auth'], function(){
	Route::post('login', 'api\UserController@login');
	Route::post('register', 'api\UserController@register');
	/*Route::post('details', 'api\UserController@details')->middleware('auth:api');*/
	Route::post('details', 'api\UserController@details')->middleware('auth:api');
	Route::post('add_product', 'api\ProductController@add_product')->middleware('auth:api');
});

Route::get('/products', function(){
	//return Products::collection( Product::all() );
	return new ProductCollection( Product::all() );
});