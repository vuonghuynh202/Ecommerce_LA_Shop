<?php

namespace App\Providers;

use App\Models\Cart;
use App\Models\Category;
use App\Models\Wishlist;
use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Contracts\View\View;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Route;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * The path to your application's "home" route.
     *
     * Typically, users are redirected here after authentication.
     *
     * @var string
     */
    public const HOME = '/home';

    /**
     * Define your route model bindings, pattern filters, and other route configuration.
     */
    public function boot(): void
    {
        RateLimiter::for('api', function (Request $request) {
            return Limit::perMinute(60)->by($request->user()?->id ?: $request->ip());
        });

        $this->routes(function () {
            Route::middleware('api')
                ->prefix('api')
                ->group(base_path('routes/api.php'));

            Route::middleware('web')
                ->group(base_path('routes/web.php'));
        });

        view()->composer([
            'clients.layouts.navbar', 
            'clients.layouts.header',
            'clients.pages.cart',
        ], function ($view) {
            $categories = Category::where('parent_id', 0)
                                  ->where('status', 1)
                                  ->get();


            $wishlistCount = 0;
            if(Auth::check()) {
                $wishlistCount = Wishlist::where('user_id', Auth::id())
                                         ->withActiveProducts()
                                         ->count();
            }


            $cartCount = 0;
            if(Auth::check()) {
                $cartCount = Cart::where('user_id', Auth::id())
                                 ->withActiveProducts()
                                 ->count();
            } else {
                $cart = session()->get('cart', []);
                $cartCount = count($cart);
            }

            
            $view->with([
                'parentCategories' => $categories,
                'wishlistCount' => $wishlistCount,
                'cartCount' => $cartCount,
            ]);
        });
    }
}
