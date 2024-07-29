<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Str;

class Order extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'user_id',
        'status',
        'total',
        'fullname',
        'phone',
        'address',
        'note',
        'shipping',
        'code'
    ];

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function items() {
        return $this->hasMany(OrderItem::class);
    }

    public static function generateUniqueOrderCode() {
        do {
            $orderCode = 'ORD-' . strtoupper(Str::random(5));

        }  while(self::where('code', $orderCode)->exists());

        return $orderCode;
    }
}
