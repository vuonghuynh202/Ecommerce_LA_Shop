<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Traits\DeleteModelTrait;
use Illuminate\Http\Request;

class CartController extends Controller
{
    use DeleteModelTrait;

    public function index() {
        $cart = Cart::all();
        return view('admin.cart.index', compact('cart'));
    }

    public function destroy($id) {
        return $this->deleteModelTrait($id, (new Cart()));
    }
}
