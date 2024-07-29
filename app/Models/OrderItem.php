<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'order_id',
        'product_id',
        'quantity',
        'price',
        'color',
        'size',
    ];

    public function product() {
        return $this->belongsTo(Product::class);
    }

    public function oder() {
        return $this->belongsTo(Order::class);
    }
}
