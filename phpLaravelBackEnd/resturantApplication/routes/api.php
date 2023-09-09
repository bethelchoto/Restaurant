<?php

use App\Models\Food;
use App\Models\FoodType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TestController;
use App\Http\Controllers\Api\V1\AuthController;
use App\Http\Controllers\Api\V1\FoodController;
use App\Http\Controllers\Api\V1\OrderController;
use App\Http\Controllers\Api\V1\ProductController;
use App\Http\Controllers\Api\V1\CustomerController;
use App\Http\Controllers\Api\V1\FoodTypeController;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// PUBLIC ROUTES 

// User Routes
Route::group(['prefix'=>'user'], function(){
    Route::post('/register',[AuthController::class,'register']);
    Route::post('/login',[AuthController::class,'login']);
});

// Products Routes 
Route::group(['prefix' => 'products'], function () {
    Route::get('/popular_products',[ProductController::class,'get_popular_products']);
    Route::get('/recommended_products',[ProductController::class,'get_recommended_products']);
    Route::get('/test',[ProductController::class,'test_get_recommended_products']); 
}); 

// Foods Route 
Route::group(['prefix'=>'foods'], function(){
    Route::post('/store',[FoodController::class,'store']);
    Route::get('/index',[FoodController::class,'index']);
    Route::get('/show/{id}',[FoodController::class,'show']);
    Route::get('/detail/{id}',[FoodController::class,'detail']);
});

// FoodType 
Route::group(['prefix'=>'food_type'], function(){
    Route::get('/show_all',[FoodTypeController::class,'index']);
    Route::post('/store',[FoodTypeController::class,'store']);
    Route::get('/show/{id}',[FoodTypeController::class,'show']);

});

// PROTECTED ROUTES 
Route::group(['middleware'=>['auth:sanctum']], function(){

    // User Routes
    Route::group(['prefix'=>'user'], function(){
        Route::post('/logout',[AuthController::class,'logout']);
        Route::post('/current_user',[AuthController::class,'get_current_user']); 
        Route::post('/update',[AuthController::class,'update']); 
    });

    // Route Customers
    Route::group(['prefix'=>'customers'], function(){
        // for this route to work it has to know the token for it to retrieve the user_id
        Route::get('/list', [CustomerController::class,'address_list']);
        Route::get('/info', [CustomerController::class,'info']);
        Route::post('/add_address', [CustomerController::class,'add_new_address']);
        Route::put('/address/{id}',[CustomerController::class,'update_address']);
    });

    // Route Orders
    Route::group(['prefix'=>'orders'],function(){
        Route::post('/cart', [OrderController::class,'place_order']);
        Route::get('/details', [OrderController::class,'get_order_list']);
    });
});

