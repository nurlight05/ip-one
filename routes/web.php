<?php

use Illuminate\Http\Request;

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

Route::domain('{subdomain?}.ip-one.net')->group(function () {
    Route::get('/', function (Request $request) {
        dd($request->subdomain);
    });


    Route::get('/lang/{locale}', 'HomeController@lang');

    // Route::get('/', 'HomeController@index');

    Route::resource('/news', 'NewsController');

    Route::resource('/stocks', 'StocksController');

    Route::resource('/products', 'ProductsController');

    Route::resource('/bussiness', 'BussinessController');

    Route::get('/showrooms', 'ShowroomsController@index');
    Route::get('/showrooms/{showroom}', 'ShowroomsController@show');

    Route::get('/science', 'ScienceController@index');

    Route::get('/reviews', 'ReviewsController@index');

    Route::get('/faq', 'FaqController@index');

    Route::get('/info', 'InfoController@index');

    Route::get('/how-to-buy', 'HowToBuyController@index');

    Route::get('/contacts', 'ContactsController@index');

    Route::get('/idea', 'IdeaController@index');

    Route::get('/documents', 'DocumentsController@index');

    Route::get('/video', 'VideoController@index');

    Route::get('/about', 'AboutController@index');

    Route::get('/basket', 'BasketController@index');

    Route::get('/search', 'SearchController@index');
});

// require __DIR__.'/contents.php';

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
