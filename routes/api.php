<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\JoinUsController;
use App\Http\Controllers\TeamController;
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

// testttttttttttttttttttttttttttttttttttttttt
Route::post('create-admin', [AdminController::class, 'createAdmin']);

// start admin apis
Route::group(['prefix' => 'admin'], function () {
    // not authenticated
    Route::post('login', [AdminController::class, 'login']);
    // end not authenticated 

    //start authenticated
    Route::group(['prefix' => 'auth', 'middleware' => 'auth:sanctum'], function () {
        Route::post('create-admin', [AdminController::class, 'createAdmin']);
        Route::put('update-admin/{id}', [AdminController::class, 'updateAdmin']);
        Route::delete('delete-admin/{id}', [AdminController::class, 'deleteAdmin']);
        Route::post('add-client', [ClientController::class, 'insertClient']);
        Route::post('update-client/{id}', [ClientController::class, 'updateClient']);
        Route::delete('delete-client/{id}', [ClientController::class, 'deleteClient']);
        
        Route::post('add-team-member', [TeamController::class, 'insertTeamMember']);
        Route::post('update-team-member/{id}', [TeamController::class, 'updateTeamMember']);
        Route::delete('delete-team-member/{id}', [TeamController::class, 'deleteTeamMember']);

        Route::get('/get-all-join-us', [JoinUsController::class, 'getAllJoinUs']);
        Route::delete('/delete-join-us/{id}', [JoinUsController::class, 'deleteJoinUs']);
    });
    // end authenticated
});
// end of admin apis

// start user apis
Route::group(['prefix' => 'user'], function () {
Route::get('get-clients',[ClientController::class, 'getClients']);
Route::get('get-teams',[TeamController::class, 'getTeams']);
Route::post('join-us',[JoinUsController::class, 'joinUs']);
});
// end user apis
