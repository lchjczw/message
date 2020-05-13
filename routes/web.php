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

Route::get('/', 'Home\HomeController@index');


Route::get('/auth/showLoginForm', 'Auth\LoginController@showLoginForm');
Route::post('/auth/login', 'Auth\LoginController@login');
Route::get('/auth/showRegistrationForm', 'Auth\RegisterController@showRegistrationForm');
Route::post('/auth/register', 'Auth\RegisterController@register');
Route::post('/auth/register', 'Auth\RegisterController@register');
Route::get('/auth/logout', 'Home\LoginController@logout');


Route::group(['middleware' => 'auth'], function () {
    Route::get('/user', 'Home\UserController@index');

});


