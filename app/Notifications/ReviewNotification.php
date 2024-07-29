<?php

namespace App\Notifications;

use App\Models\Review;
use Carbon\Carbon;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class ReviewNotification extends Notification
{
    use Queueable;

    protected $review;

    /**
     * Create a new notification instance.
     */
    public function __construct(Review $review)
    {
        $this->review = $review;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['database'];
    }

    public function toDatabase($notifiable)
    {
        $userName = $this->review->user->name;
        $productName = $this->review->product->name;

        return [
            'type' => 'review',
            'id' => $this->review->id,
            'message' => $userName . ' reviewed the product ' . $productName,
        ];
    }
}
