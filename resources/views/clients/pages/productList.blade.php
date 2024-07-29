@extends('clients.partials.master')

@section('title')
<title>LA Shop | Products</title>
@endsection

@section('content')
<!-- Breadcrumb Start -->
<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-12">
            {{ Breadcrumbs::render('shop') }}
        </div>
    </div>
</div>
<!-- Breadcrumb End -->


<!-- Shop Start -->
<div class="container-fluid">
    <div class="row px-xl-5">
        <!-- Shop Sidebar Start -->
        <div class="col-lg-3 col-md-4">
            <!-- Price Start -->
            <form action="{{ route('product.filter') }}" method="GET">
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by price</span></h5>
                <div class="bg-light p-4 mb-30">
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="prices[]" value="all" class="custom-control-input" id="price-all"
                                {{ in_array('all', request()->query('prices', [])) ? 'checked' : '' }} 
                                {{ !request()->has('prices') ? 'checked' : '' }}>
                        <label class="custom-control-label" for="price-all">All Price</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="prices[]" value="0-10" class="custom-control-input" id="price-1" 
                        {{ in_array('0-10', request()->query('prices', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="price-1">$0 - $10</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="prices[]" value="10-20" class="custom-control-input" id="price-2"
                        {{ in_array('10-20', request()->query('prices', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="price-2">$10 - $20</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="prices[]" value="20-30" class="custom-control-input" id="price-3"
                        {{ in_array('20-30', request()->query('prices', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="price-3">$20 - $30</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="prices[]" value="30-40" class="custom-control-input" id="price-4"
                        {{ in_array('30-40', request()->query('prices', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="price-4">$30 - $40</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                        <input type="checkbox" name="prices[]" value="40-*" class="custom-control-input" id="price-5" {{ in_array('40-*', request()->query('prices', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="price-5">$40 and up</label>
                    </div>
                </div>
                <!-- Price End -->

                <!-- Color Start -->
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by color</span></h5>
                <div class="bg-light p-4 mb-30">
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="colors[]" value="all" class="custom-control-input" id="color-all"
                            {{ in_array('all', request()->query('colors', [])) ? 'checked' : '' }} 
                            {{ !request()->has('colors') ? 'checked' : '' }}>
                        <label class="custom-control-label" for="color-all">All Color</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="colors[]" value="Black" class="custom-control-input" id="color-1"
                            {{ in_array('Black', request()->query('colors', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="color-1">Black</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="colors[]" value="White" class="custom-control-input" id="color-2"
                            {{ in_array('White', request()->query('colors', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="color-2">White</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="colors[]" value="Red" class="custom-control-input" id="color-3"
                            {{ in_array('Red', request()->query('colors', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="color-3">Red</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="colors[]" value="Blue" class="custom-control-input" id="color-4"
                            {{ in_array('Blue', request()->query('colors', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="color-4">Blue</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                        <input type="checkbox" name="colors[]" value="Green" class="custom-control-input" id="color-5"
                            {{ in_array('Green', request()->query('colors', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="color-5">Green</label>
                    </div>
                </div>
                <!-- Color End -->

                <!-- Size Start -->
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by size</span></h5>
                <div class="bg-light p-4 mb-30">
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="sizes[]" value="all" class="custom-control-input" id="size-all"
                            {{ in_array('all', request()->query('sizes', [])) ? 'checked' : '' }} 
                            {{ !request()->has('sizes') ? 'checked' : '' }}>
                        <label class="custom-control-label" for="size-all">All Size</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="sizes[]" value="S" class="custom-control-input" id="size-1"
                            {{ in_array('S', request()->query('sizes', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="size-1">S</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="sizes[]" value="M" class="custom-control-input" id="size-2"
                            {{ in_array('M', request()->query('sizes', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="size-2">M</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="sizes[]" value="L" class="custom-control-input" id="size-3"
                            {{ in_array('L', request()->query('sizes', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="size-3">L</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" name="sizes[]" value="XL" class="custom-control-input" id="size-4"
                            {{ in_array('XL', request()->query('sizes', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="size-4">XL</label>
                    </div>
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                        <input type="checkbox" name="sizes[]" value="XXL" class="custom-control-input" id="size-5"
                            {{ in_array('XXL', request()->query('sizes', [])) ? 'checked' : '' }}>
                        <label class="custom-control-label" for="size-5">XXL</label>
                    </div>
                </div>
                <button type="submit" class="col-md-12 btn btn-primary p-2">
                    Filter
                </button>
            </form>
            <!-- Size End -->
        </div>
        <!-- Shop Sidebar End -->


        <!-- Shop Product Start -->
        <div class="col-lg-9 col-md-8">
            <div class="row pb-3">
                <div class="col-12 pb-1">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <div>
                        </div>
                        <div class="ml-2">
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">Sorting</button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="{{ route('product.sort', ['sort' => 'oldest']) }}">Oldest</a>
                                    <a class="dropdown-item" href="{{ route('product.sort', ['sort' => 'latest']) }}">Latest</a>
                                    <a class="dropdown-item" href="{{ route('product.sort', ['sort' => 'highest_price']) }}">Highest price</a>
                                    <a class="dropdown-item" href="{{ route('product.sort', ['sort' => 'lowest_price']) }}">Lowest price</a>
                                    <a class="dropdown-item" href="{{ route('product.sort', ['sort' => 'az']) }}">A -> Z</a>
                                    <a class="dropdown-item" href="{{ route('product.sort', ['sort' => 'za']) }}">Z -> A</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @foreach($products as $item)
                <div class="col-lg-4 col-md-6 col-sm-6 pb-1">
                    <div class="product-item bg-light mb-4">
                        @if($item->discount != '' || $item->discount != 0)
                        <span class="product-sticker">{{ $item->discount }}% OFF</span>
                        @endif
                        <div class="product-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="{{ $item->feature_img_path }}" alt="">
                            <div class="product-action">
                                <a class="btn btn-outline-dark btn-square">
                                    <form class="add-to-cart-form" action="{{ route('cart.add') }}" method="post">
                                        @csrf
                                        <input type="hidden" name="product_id" value="{{ $item->id }}">
                                        <input type="hidden" name="size" value="{{ $item->sizes->first()->name }}">
                                        <input type="hidden" name="color" value="{{ $item->colors->first()->name }}">
                                        <input type="hidden" name="quantity" value="1">
                                        <button type="submit" class="btn btn-outline-none">
                                            <i class='fa fa-shopping-cart'></i>
                                        </button>
                                    </form>
                                </a>
                                <a class="btn btn-outline-dark btn-square wishlist-toggle">
                                    <button class="btn wishlist-btn {{ $item->wishlists->where('user_id', Auth::id())->count() ? 'chosen' : '' }}" data-product-id="{{ $item->id }}">
                                        <i class="heart-icon {{ $item->wishlists->where('user_id', Auth::id())->count() ? 'fas' : 'far' }} fa-heart"></i>
                                    </button>
                                </a>
                                <a class="btn btn-outline-dark btn-square" href="{{ route('product.detail', $item->slug) }}"><i class="far fa-eye"></i></a>
                            </div>
                        </div>
                        <div class="text-center position-relative py-4">
                            <a class="h6 text-decoration-none product-name" href="{{ route('product.detail', $item->slug) }}">{{ $item->name }}</a>
                            <div class="d-flex align-items-center justify-content-center mt-2">
                                @if($item->discount == '' || $item->discount == 0)
                                <h5>${{ $item->formatPrice($item->price) }}</h5>
                                @else
                                <h5>${{ $item->formatPrice($item->price - ($item->price * $item->discount / 100)) }}</h5>
                                <h6 class="text-muted ml-2"><del>${{ $item->formatPrice($item->price) }}</del></h6>
                                @endif
                            </div>
                            <div class="list-star d-flex align-items-center justify-content-center mb-1">
                                @if($item->reviews())
                                @starRating($item->reviews()->avg('rating'))
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
                <div class="col-12">
                    <nav class="d-flex justify-content-center">
                    @unless(isset($is_filter) && $is_filter === true)
                        {{ $products->links() }}
                    @endunless
                    </nav>
                </div>
            </div>
        </div>
        <!-- Shop Product End -->
    </div>
</div>
<!-- Shop End -->
@endsection

@section('js')
<script src="{{ asset('clientAssets/filter/filter.js') }}"></script>
@endsection