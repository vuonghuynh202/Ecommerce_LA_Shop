<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\Notifications\DatabaseNotification;

class NotificationController extends Controller
{
    public function read($id) {
        $noti = DatabaseNotification::findOrFail($id);
        $noti->markAsRead();

        $data = $noti->getOriginal('data');

        //Redirect based on notification type
        if($data['type'] == 'review') {
            $slug = Review::find($data['id'])->product->slug;

            return redirect()->route('product.detail', $slug);

        } else if($data['type'] == 'order') {
            return redirect()->route('order.detail', $data['id']);
        }
    }
}
