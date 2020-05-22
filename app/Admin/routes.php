<?php

use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;
use Dcat\Admin\Admin;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');

    $router->resource('countries', 'CountryController');
    $router->resource('project', 'ProjectController');

    $router->resource('user', 'UserController');
    $router->resource('rechargeDetail', 'RechargeDetailController');
    $router->resource('codeReceivingRecord', 'CodeReceivingRecordController');
    $router->resource('addUserMoney', 'AddUserMoneyController');

    $router->post('addUserMoneyAction', 'AddUserMoneyController@addUserMoneyAction');

});
