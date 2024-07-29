<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Traits\DeleteModelTrait;

class OrderController extends Controller
{
    use DeleteModelTrait;

    public function index() {
        $orders = Order::latest()->get();
        return view('admin.order.index', compact('orders'));
    }

    public function editStatus($id) {
        $order = Order::find($id);
        return view('admin.order.updateStatus', compact('order'));
    }

    public function updateStatus(Request $request, $id) {
        $order = Order::find($id);
        $order->status = $request->status;
        $order->save();

        return redirect()->route('order.index')->with('success', 'Update Successfully.');
    }

    public function orderDetail($id) {
        $order = Order::find($id);

        $subtotal = 0;
        foreach($order->items as $item) {
            $subtotal += $item->price * $item->quantity;
        }
        $subtotal = number_format($subtotal, 2, '.');

        return view('admin.order.orderDetail', compact('order', 'subtotal'));
    }

    public function destroy($id) {
        return $this->deleteModelTrait($id, (new Order()));
    }
}
