<?php

namespace App\Http\Controllers\Customer;

use App\Models\User;
use App\Models\Review;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Notifications\ReviewNotification;
use App\Http\Requests\Review\CreateFormRequest;

class UserReviewController extends Controller
{
    public function store(CreateFormRequest $request, $id) {
        $dataCreate = [
            'user_id' => Auth::user()->id,
            'product_id' => $id,
            'rating' => $request->rating,
            'review' => $request->review,
        ];
        $review = Review::create($dataCreate);

        // Notify the user
        $user = User::find(Auth::id());
        $user->notify(new ReviewNotification($review));
    
        return response()->json([
            'success' => true,
            'review' => $review,
            'user' => $review->user,
            'current_user' => Auth::check() ? Auth::user()->id : '',
        ]);
    }

    public function delete($id) {
        $review = Review::find($id);
        $review->delete();

        return response()->json([
            'success' => true,
        ]);
    }
}
