<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Review;
use App\Traits\DeleteModelTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ReviewController extends Controller
{
    use DeleteModelTrait;

    public function index() {
        $reviews = Review::all();
        return view('admin.review.index', compact('reviews'));
    }

    public function destroy($id) {
        return $this->deleteModelTrait($id, (new Review()));
    }
}
