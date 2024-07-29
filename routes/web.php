<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\CartController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\NotificationController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\ReviewController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\TrashController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\WishlistController;
use App\Http\Controllers\Customer\CheckoutController;
use App\Http\Controllers\Customer\HomeController;
use App\Http\Controllers\Customer\ProductDetailController;
use App\Http\Controllers\Customer\ProductListController;
use App\Http\Controllers\Customer\SearchController;
use App\Http\Controllers\Customer\UserCartController;
use App\Http\Controllers\Customer\UserProfileController;
use App\Http\Controllers\Customer\UserReviewController;
use App\Http\Controllers\Customer\UserSettingController;
use App\Http\Controllers\Customer\UserWishlistController;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Auth::routes();

Route::get('/', [HomeController::class, 'index']);
Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::get('/search', [SearchController::class, 'search'])->name('search');
Route::get('/products', [ProductListController::class, 'allProduct'])->name('product.all');
Route::get('/products/filter', [ProductListController::class, 'filter'])->name('product.filter');
Route::get('/category/{slug}', [ProductListController::class, 'productCategory'])->name('product.category');
Route::get('/products/sort/{sort}', [ProductListController::class, 'sort'])->name('product.sort');
Route::get('/product/{slug}', [ProductDetailController::class, 'index'])->name('product.detail');

Route::get('/about', [UserSettingController::class, 'getAbout'])->name('about');
Route::get('/helps', [UserSettingController::class, 'getHelps'])->name('helps');
Route::get('/contact', [UserSettingController::class, 'getContact'])->name('contact');

Route::get('/cart', [UserCartController::class, 'index'])->name('cart.list');
Route::post('/cart/add', [UserCartController::class, 'addToCart'])->name('cart.add');
Route::post('/cart/update', [UserCartController::class, 'updateQuantity'])->name('cart.update');
Route::delete('/cart/remove', [UserCartController::class, 'removeFromCart'])->name('cart.remove');

Route::middleware(['checkuser'])->group(function() {
    //review
    Route::post('review/store/{id}', [UserReviewController::class, 'store'])->name('review.store');
    Route::delete('review/delete/{id}', [UserReviewController::class, 'delete'])->name('review.delete');

    //wishlit
    Route::get('/wishlist', [UserWishlistController::class, 'index'])->name('wishlist.list');
    Route::post('/wishlist/toggle', [UserWishlistController::class, 'toggle'])->name('wishlist.toggle');
    Route::delete('/wishlist/delete/{id}', [UserWishlistController::class, 'delete'])->name('wishlist.delete');

    //user profile
    Route::get('/profile', [UserProfileController::class, 'index'])->name('profile.index');
    Route::get('/profile/edit', [UserProfileController::class, 'edit'])->name('profile.edit');
    Route::post('/profile/update', [UserProfileController::class, 'update'])->name('profile.update');

    //user orders
    Route::post('/orders/cancel/{order}', [UserProfileController::class, 'cancelOrder'])->name('order.cancel');
    Route::post('/orders/confirm-delivery/{order}', [UserProfileController::class, 'confirmDelivery'])->name('order.confirmDelivery');

    //checkout
    Route::get('/checkout', [CheckoutController::class, 'index'])->name('checkout');
    Route::get('/buy-now', [CheckoutController::class, 'buyNow'])->name('buyNow');
    Route::post('/checkout/place-order', [CheckoutController::class, 'placeOrder'])->name('checkout.store');

    //notification
    Route::get('/notification/read/{id}', [NotificationController::class, 'read'])->name('notification.read');

});

//admin login
Route::get('logon', [AdminController::class, 'adminLogin'])->name('admin.login');
Route::post('logon', [AdminController::class, 'postAdminLogin']);

Route::prefix('admin')->middleware('admin')->group(function () {
    Route::get('/', [DashboardController::class, 'index'])->name('admin.index');

    Route::resource('category', CategoryController::class);
    
    Route::resource('product', ProductController::class);
    
    Route::resource('user', UserController::class);
    
    Route::resource('slider', SliderController::class);

    Route::resource('setting', SettingController::class);

    Route::get('/wishlist', [WishlistController::class, 'index'])->name('wishlist.index');
    Route::delete('/wishlist/destroy/{id}', [WishlistController::class, 'destroy'])->name('wishlist.destroy');
    
    Route::get('/cart', [CartController::class, 'index'])->name('cart.index');
    Route::delete('/cart/destroy/{id}', [CartController::class, 'destroy'])->name('cart.destroy');

    Route::get('/order', [OrderController::class, 'index'])->name('order.index');
    Route::get('/order/edit/{id}', [OrderController::class, 'editStatus'])->name('order.editStatus');
    Route::post('/order/update/{id}', [OrderController::class, 'updateStatus'])->name('order.updateStatus');
    Route::get('/order/detail/{id}', [OrderController::class, 'orderDetail'])->name('order.detail');
    Route::delete('/order/destroy/{id}', [OrderController::class, 'destroy'])->name('order.destroy');

    Route::get('/review', [ReviewController::class, 'index'])->name('review.index');
    Route::delete('/review/destroy/{id}', [ReviewController::class, 'destroy'])->name('review.destroy');
    
    Route::prefix('trash')->group(function () {
        Route::get('/', [TrashController::class, 'index'])->name('trash.index');
        
        Route::get('category-restore/{id}', [CategoryController::class, 'restore'])->name('category.restore');
        Route::get('category-forceDelete/{id}', [CategoryController::class, 'forceDelete'])->name('category.forceDelete');
        
        Route::get('product-restore/{id}', [ProductController::class, 'restore'])->name('product.restore');
        Route::get('product-forceDelete/{id}', [ProductController::class, 'forceDelete'])->name('product.forceDelete');
        
        Route::get('user-restore/{id}', [UserController::class, 'restore'])->name('user.restore');
        Route::get('user-forceDelete/{id}', [UserController::class, 'forceDelete'])->name('user.forceDelete');
        
        Route::get('slider-restore/{id}', [SliderController::class, 'restore'])->name('slider.restore');
        Route::get('slider-forceDelete/{id}', [SliderController::class, 'forceDelete'])->name('slider.forceDelete');
    });
});