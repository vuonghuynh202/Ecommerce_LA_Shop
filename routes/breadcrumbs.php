<?php

use App\Models\Product;
use Diglactic\Breadcrumbs\Breadcrumbs;
use Diglactic\Breadcrumbs\Generator as BreadcrumbTrail;
//Home
Breadcrumbs::for('home', function (BreadcrumbTrail $trail): void {
    $trail->push('Home', route('home'));
});

//Home > Shop
Breadcrumbs::for('shop', function (BreadcrumbTrail $trail): void {
    $trail->parent('home');
    $trail->push('Shop', route('product.all'));
});

//Home > Shop > product-details
Breadcrumbs::for('detail', function (BreadcrumbTrail $trail, Product $product): void {
    $trail->parent('shop');
    $trail->push($product->slug, route('product.detail', $product->slug));
});

//Profile
Breadcrumbs::for('profile', function (BreadcrumbTrail $trail): void {
    $trail->push('Profile', route('profile.index'));
});

//Profile > edit profile
Breadcrumbs::for('edit-profile', function (BreadcrumbTrail $trail): void {
    $trail->parent('profile');
    $trail->push('Edit profile', route('product.all'));
});

//Cart
Breadcrumbs::for('cart', function (BreadcrumbTrail $trail): void {
    $trail->push('Cart', route('cart.list'));
});

//Cart > checkout
Breadcrumbs::for('checkout', function (BreadcrumbTrail $trail): void {
    $trail->parent('cart');
    $trail->push('Checkout', route('checkout'));
});

//product-details > checkout
Breadcrumbs::for('checkout-from-detail', function (BreadcrumbTrail $trail, Product  $product): void {
    $trail->parent('detail', $product);
    $trail->push('Checkout', route('checkout'));
});