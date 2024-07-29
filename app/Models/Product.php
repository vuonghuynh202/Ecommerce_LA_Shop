<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
                'name',
                'price',
                'discount',
                'feature_img_path',
                'slug',
                'is_feature',
                'description',
                'status',
                'category_id',
                'user_id',
            ];

    public function category() {
        return $this->belongsTo(Category::class);
    }

    public function colors() {
        return $this->belongsToMany(Color::class, 'product_colors')->withTimestamps();
    }

    public function sizes() {
        return $this->belongsToMany(Size::class, 'product_sizes')->withTimestamps();
    }

    public function images() {
        return $this->hasMany(ProductImage::class);
    }

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function reviews() {
        return $this->hasMany(Review::class);
    }

    public function wishlists() {
        return $this->hasMany(Wishlist::class);
    }

    public function carts() {
        return $this->hasMany(Cart::class);
    }

    public function formatPrice($price) {
        return number_format($price, 2, '.', '');
    }
}
