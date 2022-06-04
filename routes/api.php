<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\JoinUsController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\ProjectSubCategoryController;
use App\Http\Controllers\RequestProjectController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\SocialMediaController;
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
// ###########################################
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
        // Route::post('update-client/{id}', [ClientController::class, 'updateClient']);
        Route::delete('delete-client/{id}', [ClientController::class, 'deleteClient']);

        Route::post('add-team-member', [TeamController::class, 'insertTeamMember']);
        Route::get('/get-team-member/{id}', [TeamController::class, 'getTeamMember']);
        Route::post('update-team-member/{id}', [TeamController::class, 'updateTeamMember']);
        Route::delete('delete-team-member/{id}', [TeamController::class, 'deleteTeamMember']);

        Route::get('/get-all-join-us', [JoinUsController::class, 'getAllJoinUs']);
        Route::get('/get-join-us/{id}', [JoinUsController::class, 'getJoinUs']);
        Route::get('/download-resume/{id}', [JoinUsController::class, 'downloadResume']);
        Route::delete('/delete-join-us/{id}', [JoinUsController::class, 'deleteJoinUs']);
    
        Route::get('/get-all-contact-us', [ContactController::class, 'getAllContactUs']);
        Route::get('/get-contact-us/{id}', [ContactController::class, 'getContactUs']);
        Route::delete('/delete-contact-us/{id}', [ContactController::class, 'deleteContactUs']);
    
        Route::post('/creare-main-category', [ProjectController::class, 'createMainCategory']);
        Route::post('/creare-sub-category', [ProjectSubCategoryController::class, 'createSubCategory']);

        Route::get('/get-all-request-projects', [RequestProjectController::class, 'getAllRequestProjects']);
        Route::get('/get-request-project/{id}', [RequestProjectController::class, 'getRequestProject']);
        Route::delete('/delete-request-project/{id}', [RequestProjectController::class, 'deleteRequestProject']);
    });
    // end authenticated
});
// end of admin apis

// start user apis
Route::group(['prefix' => 'user'], function () {

    Route::get('/dummy-social', [SocialMediaController::class, 'dummySocial']);
    Route::get('/get-social-info', [SocialMediaController::class, 'getSocialInfo']);
    
    Route::get('/dummy-sliders', [SliderController::class, 'dummySliders']);
    Route::get('/get-sliders', [SliderController::class, 'getSliders']);
    Route::get('/get-all-clients', [ClientController::class, 'getClients']);
    Route::get('/get-teams', [TeamController::class, 'getTeams']);
    Route::post('/join-us', [JoinUsController::class, 'joinUs']);
    Route::get('/get-contact-info', [ContactController::class, 'contactInfo']);
    Route::post('/contact-us', [ContactController::class, 'contactUs']);

    Route::get('/dummy-data-for-projects', [ProjectController::class, 'dummyDataForProjects']);
    Route::get('/projects', [ProjectController::class, 'allProjects']);
    // mobile apis
    Route::get('/get-mobile-projects', [ProjectController::class, 'getAllMobileProjects']);
    Route::get('/discover-more-apps', [ProjectController::class, 'discoverMoreApps']);
    Route::get('/get-app-info/{id}', [ProjectController::class, 'getAppInfo']);
    // website apis
    Route::get('/get-website-projects', [ProjectController::class, 'getAllWebsiteProjects']);
    Route::get('/get-website-info/{id}', [ProjectController::class, 'getWebsiteInfo']);

    // fetching common project common data
    Route::get('/get-projects-with-type/{type}', [ProjectController::class, 'getProjectsWithType']);
    Route::get('/get-project-info/{id}', [ProjectController::class, 'getProjectInfo']);

      // motion graphics apis
      Route::get('/get-motion-graphic-projects', [ProjectController::class, 'getMotionGraphicsProjects']);
      Route::get('/get-motion-graphic-info/{id}', [ProjectController::class, 'getMotionGraphicInfo']);

    //   request projects
    Route::post('/insert-request-project', [RequestProjectController::class, 'insertRequestProject']);
});
// end user apis
