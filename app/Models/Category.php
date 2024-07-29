<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'name',
        'slug',
        'parent_id',
        'status',
    ];

    public function parent()
    {
        return $this->belongsTo(Category::class, 'parent_id');
    }

    public function children()
    {
        return $this->hasMany(Category::class, 'parent_id');
    }

    public function products()
    {
        return $this->hasMany(Product::class);
    }

    public function getChildren($parent)
    {
        $categories = Category::all();
        $children[] = $parent;

        foreach ($categories as $item) {
            if ($item->parent_id == $parent->id) {
                $children[] = $item;
                $children = array_merge($children, $this->getChildren($item));
            }
        }

        return $children;
    }
}
