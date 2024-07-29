<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductListController extends Controller
{
    private $product;
    private $category;

    public function __construct(Product $product, Category $category)
    {
        $this->product = $product;
        $this->category = $category;
    }

    public function allProduct()
    {
        $products = $this->product->paginate(15);
        return view('clients.pages.productList', compact('products'));
    }

    private function getProductByCategory($category)
    {
        $categories = $this->category->getChildren($category);
        $categoryIds = collect($categories)->pluck('id')->toArray();

        $products = $this->product->whereIn('category_id', $categoryIds)
            ->where('status', 1);

        return $products;
    }

    public function productCategory($slug)
    {
        $category = $this->category->where('slug', $slug)->first();
        $products = $this->getProductByCategory($category)->latest()->paginate(15);

        return view('clients.pages.productList', compact('products'));
    }

    public function filter(Request $request)
    {
        $query = Product::query();

        // Filter by price
        if ($request->has('prices')) {
            $prices = $request->input('prices');
            if (!in_array('all', $prices)) {
                $query->where(function($q) use ($prices) {
                    foreach ($prices as $price) {
                        list($min, $max) = explode('-', $price);
                        if ($max === '*') {
                            $q->orWhereRaw('COALESCE(price - (price * discount / 100), price) >= ?', [$min]);
                        } else {
                            $q->orWhereRaw('COALESCE(price - (price * discount / 100), price) BETWEEN ? AND ?', [$min, $max]);
                        }
                    }
                });
            }
        }

        // Filter by color
        if ($request->has('colors')) {
            $colors = $request->input('colors');
            if (!in_array('all', $colors)) {
                $query->whereHas('colors', function($q) use ($colors) {
                    $q->whereIn('name', $colors);
                });
            }
        }

        // Filter by size
        if ($request->has('sizes')) {
            $sizes = $request->input('sizes');
            if (!in_array('all', $sizes)) {
                $query->whereHas('sizes', function($q) use ($sizes) {
                    $q->whereIn('name', $sizes);
                });
            }
        }

        // Execute the query and get the filtered products
        $products = $query->get();

        // Return the filtered products and query parameters to the view
        return view('clients.pages.productList', [
            'products' => $products,
            'is_filter' => true,
            'prices' => $request->input('prices', []),
            'colors' => $request->input('colors', []),
            'sizes' => $request->input('sizes', []),
        ]);
    }

    public function sort($sort) {
        $products = Product::query();

        switch ($sort) {
            case 'latest':
                $products->orderBy('created_at', 'desc');
                break;
            case 'oldest':
                $products->orderBy('created_at', 'asc');
                break;
            case 'highest_price':
                $products->orderBy('price', 'desc');
                break;
            case 'lowest_price':
                $products->orderBy('price', 'asc');
                break;
            case 'az':
                $products->orderBy('name', 'asc');
                break;
            case 'za':
                $products->orderBy('name', 'desc');
                break;
            default:
                $products->orderBy('id', 'desc');
                break;
        }

        $products = $products->paginate(15);

        return view('clients.pages.productList', compact('products'));
    }
}
