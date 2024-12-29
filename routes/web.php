<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OngkirController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\TagController;

// Alias conflicting controllers
use App\Http\Controllers\ProductController as FrontProductController;
use App\Http\Controllers\Admin\ProductController as AdminProductController;

use App\Http\Controllers\CheckoutController;
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

// Public Routes
Route::get('/', [HomeController::class, 'index'])->name('homepage');
Route::get('/shop/{slug?}', [ShopController::class, 'index'])->name('shop.index');
Route::get('/shop/tag/{slug?}', [ShopController::class, 'tag'])->name('shop.tag');
Route::get('/product/{product:slug}', [FrontProductController::class, 'show'])->name('product.show');

// React Routes
Route::get('products/{slug?}', [ShopController::class, 'getProducts']);
Route::get('products', [HomeController::class, 'getProducts']);
Route::get('product-detail/{product:slug}', [FrontProductController::class, 'getProductDetail']);
Route::post('carts', [CartController::class, 'store']);
Route::get('carts', [CartController::class, 'showCart']);

// Shipping API Routes
Route::get('api/provinces', [OngkirController::class, 'getProvinces']);
Route::get('api/cities', [OngkirController::class, 'cities']);
Route::get('api/shipping-cost', [OngkirController::class, 'shippingCost']);
Route::post('api/set-shipping', [OngkirController::class, 'setShipping']);
Route::post('api/checkout', [OrderController::class, 'checkout']);

// User Login API
Route::get('api/users', [UserController::class, 'index']);

// Authenticated Routes
Route::group(['middleware' => 'auth'], function() {

    // Customer Routes
    Route::get('/order/checkout', [OrderController::class, 'process'])->name('checkout.process');
    Route::resource('/cart', CartController::class)->except(['store', 'show']);

    // Admin Routes
    Route::group(['middleware' => ['isAdmin'], 'prefix' => 'admin', 'as' => 'admin.'], function() {

        // Admin Dashboard
        Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');
        Route::post('dashboard/update', [DashboardController::class, 'update'])->name('dashboard.update');

        // Categories Management
        Route::resource('categories', CategoryController::class);
        Route::post('categories/images', [CategoryController::class, 'storeImage'])->name('categories.storeImage');

        // Tags Management
        Route::resource('tags', TagController::class);

        // Products Management
        Route::resource('products', AdminProductController::class); // Use alias for Admin controller
        Route::post('products/images', [AdminProductController::class, 'storeImage'])->name('products.storeImage'); // Alias applied
    });
});

// Authentication Routes
Auth::routes();

// Redirect After Login
Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::post('/checkout', [CheckoutController::class, 'store'])->name('checkout.store');

Route::get('/checkout', [CheckoutController::class, 'index'])->name('checkout');