<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class SearchController extends Controller
{
    public function search(Request $request)
    {
        $query = $request->input('query');

        try {

            $categoryQuery = Category::where('name', 'LIKE', "%$query%")->get();
            $categories = [];
            foreach($categoryQuery as $category) {
                $categories += (new Category())->getChildren($category);
            }
            $categoryIds = collect($categories)->pluck('id')->toArray();

            $products = Product::where('name', 'LIKE', "%$query%")
                               ->orWhereIn('category_id', $categoryIds)
                               ->where('status', 1)
                               ->get();
                               
            if ($request->ajax()) {
                return response()->json($products);
            }

            return view('clients.pages.searchResults', compact('products', 'query'));
            
        } catch (Exception $e) {
            Log::error('Search error:', ['error' => $e->getMessage()]);
            return response()->json(['error' => 'Search error'], 500);
        }
    }
}
