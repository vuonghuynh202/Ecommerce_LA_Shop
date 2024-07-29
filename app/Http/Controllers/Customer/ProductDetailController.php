<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProductDetailController extends Controller
{
    private $product;
    private $category;
    public function __construct(Product $product, Category $category)
    {
        $this->product = $product;
        $this->category = $category;
    }

    private function getProductByCategory($category) {
        if(!$category) {
            return $this->product->whereRaw('1 = 0');
        }

        $categories = $this->category->getChildren($category);
        $categoryIds = collect($categories)->pluck('id')->toArray();

        $products = $this->product->whereIn('category_id', $categoryIds)
                                  ->where('status', 1);

        return $products;
    }

    public function index($slug) {
        $product = $this->product->where('slug', $slug)->first();
        $cateParent = $product->category ? $product->category->parent : null;

        $relatedProducts = $this->getProductByCategory($cateParent)
                                ->where('id', '!=', $product->id)
                                ->get();
        
        $wishlistCheck = Wishlist::where('product_id', $product->id)
                                ->where('user_id', Auth::id())
                                ->exists();

        return view('clients.pages.productDetail', compact('product', 'relatedProducts', 'wishlistCheck'));
    }
}