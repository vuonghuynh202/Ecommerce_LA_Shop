<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserWishlistController extends Controller
{
    public function index()
    {
        $wishlists = Wishlist::where('user_id', Auth::id())
                             ->withActiveProducts()
                             ->latest()
                             ->get();
                             
        return view('clients.pages.wishlist', compact('wishlists'));
    }

    public function toggle(Request $request)
    {
        try {
            $productId = $request->product_id;
            $userId = Auth::id();

            $wishlist = Wishlist::where('user_id', $userId)
                                ->where('product_id', $productId)
                                ->first();

            if ($wishlist) {
                $wishlist->delete();
                return response()->json([
                    'status' => 'removed',
                    'message' => 'Removed Successfully.',
                ]);
            } else {
                Wishlist::create([
                    'user_id' => $userId,
                    'product_id' => $productId,
                ]);
                return response()->json([
                    'status' => 'added',
                    'message' => 'Added Successfully.',
                ]);
            }
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function delete($id)
    {
        try {
            $wishlistItem = Wishlist::find($id);

            if ($wishlistItem->user_id == Auth::id()) {
                $wishlistItem->delete();

                return response()->json([
                    'success' => true,
                    'message' => 'Deleted Successfully!',
                ]);
            }

            return response()->json([
                'success' => false,
                'message' => 'Delete Failed! Try Again',
            ], 403);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
