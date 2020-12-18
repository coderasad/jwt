<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


// auth here ============
Auth::routes();

// Front-End Controller ==========
Route::get('/', 'SiteController@index')->name('home');
Route::get('admin/login', 'SiteController@login')->name('admin.login');


// Admin===========
Route::get('admin', 'ProductController@index');
Route::resource('product', 'ProductController'); 
Route::get('product/{id}/destroy', 'ProductController@destroy');

// change password===========
Route::get('change_password', 'Auth\ChangePasswordController@changePassword')->name('changePassword');
Route::post('update_password', 'Auth\ChangePasswordController@updatePassword')->name('updatePassword');

