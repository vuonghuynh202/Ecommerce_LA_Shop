<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Wishlist;
use App\Traits\DeleteModelTrait;
use Illuminate\Http\Request;

class WishlistController extends Controller
{
    use DeleteModelTrait;

    public function index() {
        $wishlist = Wishlist::all();
        return view('admin.wishlist.index', compact('wishlist'));
    }

    public function destroy($id) {
        return $this->deleteModelTrait($id, (new Wishlist())); 
    }
}
