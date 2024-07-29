<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Order;
use App\Models\Product;
use App\Models\Wishlist;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index()
    {
        // get data
        $products = $this->getProducts();
        $categories = $this->getCategories();
        $orders = $this->getOrders();
        $wishlist = $this->getWishlist();

        // calculate total revenue
        $total = $this->calculateTotalRevenue($orders);

        // get monthly total revenue
        $monthlyEarnings = $this->getMonthlyEarnings();

        //Get data on registered users quantity in last 7 days
        $userRegistrationData = $this->getUserRegistrationData();

        //Get top product category sold
        $topLevelCategories = $this->getTopCategories();

        return view('admin.home', [
            'products' => $products,
            'categories' => $categories,
            'orders' => $orders,
            'wishlist' => $wishlist,
            'total' => $total,
            'monthlyEarnings' => $monthlyEarnings,
            'userRegistrationData' => $userRegistrationData,
            'topLevelCategories' => $topLevelCategories,
        ]);
    }

    private function getProducts()
    {
        return Product::all();
    }

    private function getCategories()
    {
        return Category::all();
    }

    private function getOrders()
    {
        return Order::all();
    }

    private function getWishlist()
    {
        return Wishlist::all();
    }

    private function calculateTotalRevenue($orders)
    {
        return $orders->sum('total');
    }

    private function getMonthlyEarnings()
    {
        $monthlyEarnings = DB::table('orders')
            ->select(DB::raw('MONTH(created_at) as month'), DB::raw('SUM(total) as total'))
            ->groupBy(DB::raw('MONTH(created_at)'))
            ->orderBy('month')
            ->pluck('total', 'month')
            ->toArray();

        // Make sure all months are valid
        return array_replace(array_fill(1, 12, 0), $monthlyEarnings);
    }

    private function getUserRegistrationData()
    {
        // Get the number of registered users by day in the last 7 days
        $sevenDaysAgo = Carbon::now()->subDays(6); // 7 days ago
        $registeredUsers = DB::table('users')
            ->select(DB::raw('DATE(created_at) as date'), DB::raw('COUNT(*) as count'))
            ->where('created_at', '>=', $sevenDaysAgo)
            ->groupBy(DB::raw('DATE(created_at)'))
            ->orderBy('date')
            ->pluck('count', 'date')
            ->toArray();

        // Make sure all dates are valid
        $dates = [];
        $counts = [];
        for ($i = 6; $i >= 0; $i--) {
            $date = Carbon::now()->subDays($i)->toDateString();
            $dates[] = $date;
            $counts[] = isset($registeredUsers[$date]) ? $registeredUsers[$date] : 0;
        }

        return [
            'dates' => $dates,
            'counts' => $counts
        ];
    }


    private function getTopCategories()
    {
        // Get all products sold
        $soldProducts = DB::table('order_items')
            ->join('products', 'order_items.product_id', '=', 'products.id')
            ->select('products.category_id', DB::raw('SUM(order_items.quantity) as total_sold'))
            ->groupBy('products.category_id')
            ->get();

        // Take the parent category for each subcategory and sum the sales
        $data = [];

        foreach ($soldProducts as $soldProduct) {
            // find child category
            $category = DB::table('categories')->where('id', $soldProduct->category_id)->first();

            // get root category
            $topCategoryId = $category->parent_id;
            while ($category && $category->parent_id != 0) {
                $category = DB::table('categories')->where('id', $category->parent_id)->first();
                $topCategoryId = $category ? $category->id : $topCategoryId;
            }

            // update or add data to result
            if (isset($data[$topCategoryId])) {
                $data[$topCategoryId]['total_sold'] += $soldProduct->total_sold;
            } else {
                $topCategory = DB::table('categories')->where('id', $topCategoryId)->first();
                $data[$topCategoryId] = [
                    'category' => $topCategory->name,
                    'total_sold' => $soldProduct->total_sold
                ];
            }
        }

        // convert result to array
        $data = array_values($data);

        $totalSold = array_column($data, 'total_sold');
        $totalSold = array_map('intval', $totalSold); 
        $categories = array_column($data, 'category');

        return [
            'total_sold' => $totalSold,
            'categories' => $categories
          ];
    }
}
