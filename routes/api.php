<?php

use App\Http\Controllers\AdminController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'admin'], function () {
    // authenticated

    Route::post('login', [AdminController::class, 'login']);
    Route::group(['prefix' => 'auth', 'middleware' => 'auth:sanctum'], function () {
        Route::post('create-admin', [AdminController::class, 'createAdmin']);
    });
});
