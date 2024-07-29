<?php

namespace App\Http\Controllers\Customer;

use App\Models\Cart;
use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\Checkout\CreateFormRequest;
use App\Models\User;
use App\Notifications\OrderNotification;

class CheckoutController extends Controller
{
    public function index() {
        $cart = Cart::where('user_id', Auth::id())->latest()->get();

        $products = [];
        $subtotal = 0;
        $shipping = 2;
        $total = 0;

        foreach($cart as $item) {
            $price = $item->product->discount == '' ? 
                     $item->product->price : 
                     $item->product->price - ($item->product->discount * $item->product->price / 100);

            $subtotal += $price * $item->quantity;

            $products[] = [
                'product_id' => $item->product->id,
                'name' => $item->product->name,
                'price' => $price,
                'quantity' => $item->quantity,
                'color' => $item->color,
                'size' => $item->size,
            ]; 
        }

        $subtotal = number_format($subtotal, 2, '.', '');
        $shipping = number_format($shipping, 2, '.', '');
        $total = number_format($subtotal + $shipping, 2, '.', '');

        return view('clients.pages.checkout', compact('products', 'subtotal', 'total', 'shipping'));
    }

    public function buyNow(Request $request) {
        $product = Product::find($request->product_id);

        $shipping = 2;
        $products = [];
        $subtotal = 0;
        $total = 0;

        $name = $product->name;
        $price = $product->discount == '' ? 
                     $product->price : 
                     $product->price - ($product->discount * $product->price / 100);

        $subtotal = $price * $request->quantity;

        $products[] = [
            'product_id' => $request->product_id,
            'name' => $name,
            'price' => $price,
            'quantity' => $request->quantity,
            'color' => $request->color,
            'size' => $request->size,
        ];

        $subtotal = number_format($subtotal, 2, '.', '');
        $shipping = number_format($shipping, 2, '.', '');
        $total = number_format($subtotal + $shipping, 2, '.', '');
        $isBuyNow = true;

        return view('clients.pages.checkout', compact('products', 'subtotal', 'shipping', 'total', 'isBuyNow'));
    }

    public function placeOrder(CreateFormRequest $request) {
        try {
            $data = [
                'user_id' => Auth::id(),
                'status' => 'pending',
                'total' => $request->total,
                'fullname' => $request->fullname,
                'phone' => $request->phone,
                'address' => $request->address,
                'note' => $request->note,
                'payment' => $request->payment,
                'shipping' => $request->shipping,
                'code' => Order::generateUniqueOrderCode(),
            ];
    
            $order = Order::create($data);
    
            // Add order items
            $cartItems = json_decode($request->input('cart_items'), true);
            foreach ($cartItems as $item) {
                $order->items()->create([
                    'product_id' => $item['product_id'],
                    'quantity' => $item['quantity'],
                    'price' => $item['price'],
                    'color' => $item['color'],
                    'size' => $item['size'],
                ]);
            }
    
            // delete product in user cart after order
            Cart::where('user_id', Auth::id())->delete();

            // Notify the user
            $user = User::find(Auth::id());
            $user->notify(new OrderNotification($order));
    
            return redirect()->route('profile.index');
            
        } catch (\Throwable $th) {
            Log::error('Message: ' . $th->getMessage());
            return redirect()->back();
        }
    }
}
