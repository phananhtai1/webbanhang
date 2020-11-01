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

Route::get('/', function () {
    return view('welcome');
});

Route::group(['namespace' => 'App\Http\Controllers\Auth'], function () {
    Route::get('/', 'FrontendController@getHome');

    Route::get('detail/{id}', 'FrontendController@getDetail');
    Route::post('detail/{id}', 'FrontendController@postComment');

    Route::get('category/{id}/{slug}.html', 'FrontendController@getCategory');

    Route::get('search', 'FrontendController@getSearch');

    Route::get('login-checkout', 'FrontendController@getLoginCheckout');
    Route::post('login-checkout', 'FrontendController@postLoginCheckout');

    Route::get('register', 'FrontendController@getRegister');
    Route::post('register', 'FrontendController@postRegister');

    Route::get('logout-checkout', 'FrontendController@getLogoutCheckout');

    Route::group(['prefix' => 'cart'], function () {
        Route::get('add/{id}', 'CartController@getAddCart');
        Route::get('show', 'CartController@getShowCart');
        Route::get('delete/{id}', 'CartController@getDeleteCart');
        Route::get('update', 'CartController@getUpdateCart');
        Route::post('show-complete', 'CartController@postComplete');
        Route::get('checkout', 'CartController@getCheckout');
    });
    Route::get('complete', 'CartController@getComplete');
});

Route::group(['namespace' => 'App\Http\Controllers\Admin'], function () {
    Route::group(['prefix' => 'login'], function () {
        Route::get('/', 'LoginController@getLogin');
        Route::post('/', 'LoginController@postLogin');
    });

    Route::get('logout', 'HomeController@getLogout');

    Route::group(['prefix' => 'admin', 'middleware' => 'CheckLogIn'], function () {
        Route::get('/', 'HomeController@getHome');

        Route::group(['prefix' => 'category'], function () {
            Route::get('/', 'CategoryController@getCategory');
            Route::post('/', 'CategoryController@postCategory');

            Route::get('edit/{id}', 'CategoryController@getEditCategory');
            Route::post('edit/{id}', 'CategoryController@postEditCategory');

            Route::get('delete/{id}', 'CategoryController@getDeleteCategory');
        });

        Route::group(['prefix' => 'product'], function () {
            Route::get('/', 'ProductController@getProduct');

            Route::get('add', 'ProductController@getAddProduct');
            Route::post('add', 'ProductController@postAddProduct');

            Route::get('edit/{id}', 'ProductController@getEditProduct');
            Route::post('edit/{id}', 'ProductController@postEditProduct');

            Route::get('delete/{id}', 'ProductController@getDeleteProduct');
        });

        Route::group(['prefix' => 'user'], function () {
            Route::get('/', 'UserController@getUser');

            Route::get('add', 'UserController@getAddUser');
            Route::post('add', 'UserController@postAddUser');

            Route::get('edit/{id}', 'UserController@getEditUser');
            Route::post('edit/{id}', 'UserController@postEditUser');

            Route::get('delete/{id}', 'UserController@getDeleteUser');
        });

        Route::group(['prefix' => 'order'], function () {
            Route::get('/','OrderController@getOrder');

            Route::get('view/{id}','OrderController@getViewOrder');

            Route::get('delete/{id}','OrderController@getDeleteOrder');
        });
    });
});
