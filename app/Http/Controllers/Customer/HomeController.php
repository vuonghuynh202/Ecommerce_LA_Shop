<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Setting;
use App\Models\Slider;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    private $product;
    private $slider;

    public function __construct(Product $product, Slider $slider)
    {
        $this->product = $product;
        $this->slider = $slider;
    }


    public function index() {
        $featureProducts = $this->product->where('is_feature', 1)
                                         ->where('status', 1)
                                         ->inRandomOrder()
                                         ->take(8)
                                         ->get();

        $latestProducts = $this->product->latest()
                                        ->where('status', 1)
                                        ->take(8)
                                        ->get();

        $sliders = $this->slider->all();

        return view('index', compact('featureProducts', 'latestProducts', 'sliders'));
    }
}
