<?php

namespace App\Http\View\Composers;

use Illuminate\View\View;
use Illuminate\Notifications\DatabaseNotification;
use Carbon\Carbon;
use App\Models\Review;
use App\Models\Order;

class NotificationComposer
{
    public function compose(View $view)
    {
        $notifies = DatabaseNotification::whereNull('read_at')->get();
        $validNotifies = [];
        $notiCount = 0;

        foreach ($notifies as $noti) {
            if ($noti->data['type'] == 'review') {
                $review = Review::find($noti->data['id']);
                if ($review) {
                    $validNotifies[] = [
                        'noti' => $noti,
                        'created_at' => Carbon::parse($review->created_at)->diffForHumans(),
                        'user' => $review->user
                    ];
                    $notiCount++;
                }
            } elseif ($noti->data['type'] == 'order') {
                $order = Order::find($noti->data['id']);
                if ($order) {
                    $validNotifies[] = [
                        'noti' => $noti,
                        'created_at' => Carbon::parse($order->created_at)->diffForHumans(),
                        'user' => $order->user
                    ];
                    $notiCount++;
                }
            }
        }

        $view->with('validNotifies', $validNotifies)
             ->with('notiCount', $notiCount);
    }
}
 