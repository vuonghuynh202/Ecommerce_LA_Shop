<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserCartController extends Controller
{
    public function index()
    {
        if (Auth::check()) {
            $cart = Cart::where('user_id', Auth::id())
                        ->withActiveProducts()
                        ->latest()
                        ->get();
        } else {
            $cart = session()->get('cart', []);
        }

        $subtotal = 0;
        foreach ($cart as $item) {

            if (Auth::check()) {

                $price = $item->product->price;
                $discount = $item->product->discount;

                if($discount) {
                    $subtotal += ($price - ($price * $discount / 100)) * $item->quantity;
                } else {
                    $subtotal += $price * $item->quantity;
                }
            } else {
                $product = Product::find($item['product_id']);
                $price = $product->price;
                $discount = $product->discount;

                if($discount) {
                    $subtotal += ($price - ($price * $discount / 100)) * $item['quantity'];
                } else {
                    $subtotal += $price * $item['quantity'];
                }
            }
        }

        $shipping = $subtotal == 0 ? 0 : 2;
        $total = $subtotal + $shipping;

        $subtotal = number_format($subtotal, 2, '.', '');
        $shipping = number_format($shipping, 2, '.', '');
        $total = number_format($total, 2, '.', '');

        return view('clients.pages.cart', compact('cart', 'subtotal', 'shipping', 'total'));
    }

    public function addToCart(Request $request)
    {
        $product_id = $request->product_id;
        $quantity = $request->quantity;
        $size = $request->size;
        $color = $request->color;

        if (Auth::check()) {
            $cart = Cart::updateOrCreate(
                [
                    'user_id' => Auth::id(),
                    'product_id' => $product_id,
                    'color' => $color,
                    'size' => $size
                ],
                [
                    'quantity' => DB::raw('quantity + ' . $quantity)
                ]
            );
        } else {
            $cart = session()->get('cart', []);
            $key = $product_id . '-' . $color . '-' . $size;
            if (isset($cart[$key])) {
                $cart[$key]['quantity'] += $quantity;
            } else {
                $cart[$key] = [
                    'product_id' => $product_id,
                    'quantity' => $quantity,
                    'color' => $color,
                    'size' => $size
                ];
            }
            session()->put('cart', $cart);
        }

        return response()->json([
            'success' => true,
            'message' => 'Added Successfully.'
        ]);
    }

    public function removeFromCart(Request $request)
    {
        $product_id = $request->product_id;
        $size = $request->size;
        $color = $request->color;

        if (Auth::check()) {
            Cart::where('user_id', Auth::id())
                ->where('product_id', $product_id)
                ->where('color', $color)
                ->where('size', $size)
                ->delete();
        } else {
            $cart = session()->get('cart', []);
            $key = $product_id . '-' . $color . '-' . $size;
            unset($cart[$key]);
            session()->put('cart', $cart);
        }

        return response()->json([
            'success' => true,
            'message' => 'Deleted Successfully.'
        ]);
    }

    public function updateQuantity(Request $request)
    {
        $product_id = $request->product_id;
        $quantity = $request->quantity;
        $size = $request->size;
        $color = $request->color;

        if (Auth::check()) {
            $cartItem = Cart::where('user_id', Auth::id())
                ->where('product_id', $product_id)
                ->where('color', $color)
                ->where('size', $size)
                ->first();

            if ($cartItem) {
                $cartItem->quantity = $quantity;
                $cartItem->save();

                return response()->json(['success' => true]);
            }

            return response()->json(['success' => false]);
        } else {
            $cart = session()->get('cart', []);
            $key = $product_id . '-' . $color . '-' . $size;

            if (isset($cart[$key])) {
                $cart[$key]['quantity'] = $quantity;
                session()->put('cart', $cart);

                return response()->json(['success' => true]);
            }

            return response()->json(['success' => false]);
        }
    }
}
