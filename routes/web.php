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

use Illuminate\Support\Facades\Route;


Route::get('/', 'Home\HomeController@index');


Route::get('/login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('/auth/login', 'Auth\LoginController@login');
Route::get('/register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('/auth/register', 'Auth\RegisterController@register');
Route::post('/auth/register', 'Auth\RegisterController@register');
Route::get('/auth/logout', 'Auth\LoginController@logout');


Route::group(['middleware' => 'auth'], function () {
    Route::get('/user', 'Home\UserController@index');
    Route::get('/user/edit', 'Home\UserController@edit');
    Route::post('/user/update', 'Home\UserController@update');
    Route::get('/getUserMoney', 'Home\UserController@getUserMoney');

    Route::get('/getCode/index', 'Home\GetCodeController@index');
    Route::get('/project/selectList', 'Home\ProjectController@selectList');
    Route::get('/project/getProjectList', 'Home\ProjectController@getProjectList');

    // 充值页面
    Route::get('/user/recharge', 'Home\UserController@recharge');

    // 充值明细
    Route::get('/user/rechargeDetail', 'Home\UserController@rechargeDetail');
    Route::get('/user/rechargeDetailList', 'Home\UserController@rechargeDetailList');

    Route::get('/project/index', 'Home\ProjectController@index');

    // 已接簡訊
    Route::get('/codeReceive/index', 'Home\CodeReceivingRecordController@index');
    Route::post('/codeReceive/alreadyList', 'Home\CodeReceivingRecordController@alreadyList');

    Route::get('/welcome', 'Home\HomeController@welcome');


    Route::get('/selectCountryPage', 'Home\ProjectController@selectCountryPage');
    Route::get('/selectCountry', 'Home\ProjectController@selectCountry');


    Route::get('/getNumber', 'Home\GetCodeController@getNumber');
    Route::get('/getSmsContent', 'Home\GetCodeController@getSmsContent');
    Route::get('/releaseNumber', 'Home\GetCodeController@releaseNumber');
    Route::get('/shieldNumber', 'Home\GetCodeController@shieldNumber');


    Route::get('/test', 'Home\HomeController@test');
});


