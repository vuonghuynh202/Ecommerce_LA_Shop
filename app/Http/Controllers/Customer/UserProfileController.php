<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\User;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class UserProfileController extends Controller
{
    use StorageImageTrait;

    public function index()
    {
        $orders = Order::where('user_id', Auth::id())->latest()->get();
        return view('clients.pages.profile', compact('orders'));
    }

    public function edit()
    {
        return view('clients.pages.editProfile');
    }

    public function update(Request $request)
    {
        try {
            $user = User::find(Auth::id());

            $user->name = $request->name;

            $imagePath = $this->storageUploadImage($request, 'image', 'user');
            if ($imagePath) {
                $user->image = $imagePath;
            }
            $user->save();

            return redirect()->route('profile.index');
            
        } catch (\Throwable $th) {
            Log::error('Message: ' . $th->getMessage());

            return redirect()->back();
        }
    }

    public function cancelOrder(Order $order) {
        if($order->user_id == Auth::id()) {
            if (in_array($order->status, ['pending', 'confirmed', 'processing'])) {
                $order->status = 'cancelled';
                $order->save();
            }
        }
        return redirect()->back();
    }

    public function confirmDelivery(Order $order) {
        if($order->user_id == Auth::id()) {
            if ($order->status == 'shipped') {
                $order->status = 'delivered';
                $order->save();
            }
        }
        return redirect()->back();
    }
}
