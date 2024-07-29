<?php

namespace App\Http\Middleware;

use App\Models\Cart;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;

class CartMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if(Auth::check()) {
            $this->mergeCartFromSessionToDatabase();
        }
        return $next($request);
    }

    protected function mergeCartFromSessionToDatabase() {
        $sessionCart = session()->get('cart', []);
        foreach($sessionCart as $item) {
            $cart = Cart::updateOrCreate(
                [
                    'user_id' => Auth::id(),
                    'product_id' => $item['product_id'],
                    'color' => $item['color'],
                    'size' => $item['size'],
                ], 
                [
                    'quantity' => DB::raw('quantity + '. $item['quantity']),
                ]
            );
        }
        session()->forget('cart');
    }
}
