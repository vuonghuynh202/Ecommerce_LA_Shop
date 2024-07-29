<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Slider;
use App\Traits\TrashTrait;
use Illuminate\Http\Request;

class TrashController extends Controller
{
    use TrashTrait;

    private $category;
    private $product;
    private $slider;

    public function __construct(Category $category, Product $product, Slider $slider)
    {
        $this->category = $category;
        $this->product = $product;
        $this->slider = $slider;
    }

    public function index() {
        $categories = $this->trashPage($this->category);
        $products = $this->trashPage($this->product);
        $sliders = $this->trashPage($this->slider);

        return view('admin.trash.index', compact('categories', 'products', 'sliders'));
    }
}
