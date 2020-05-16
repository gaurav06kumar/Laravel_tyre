<?php

use Illuminate\Support\Facades\Route;

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

    Route::get('/', function () {return view('welcome');});
    Route::get('/contact', function () {return view('contact');});

    Route::get('/about', function () {return view('about');});


    Route::get('tyre','TyreController@index');

    Route::post('tyre','TyreController@store');

    Route::post('contact','TyreController@feedback');

    Route::get('/create','TyreController@create');

    Auth::routes();

    Route::get('/home', 'HomeController@index')->name('home');

    Route::get('/add-to-cart/{id}',['uses'=>'TyreController@getAddToCart', 'as'=>'tyre.addToCart']);

    Route::get('/reduce/{id}',['uses'=>'TyreController@getReduceByOne','as'=>'tyre.ReduceByOne' ] );  //passing the tyre id that remove from cart

    Route::get('/remove/{id}',['uses'=>'TyreController@getRemoveItem','as'=>'tyre.remove' ] );       //passing the tyre id that remove from cart

    Route::get('/cart',['uses'=>'TyreController@getCart']);

    Route::get('/checkout',['uses'=>'TyreController@checkout', 'middleware'=>'auth']);     //forcing user to login or sign up then they can go to checkout page

    Route::post('/checkout',['uses'=>'TyreController@postcheckout', 'middleware'=>'auth']); //forcing user to login or sign up then they can go to checkout page

    Route::any('/search',['uses'=>'TyreController@search']);


