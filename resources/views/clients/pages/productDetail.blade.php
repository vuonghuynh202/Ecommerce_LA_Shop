@extends('clients.partials.master')

@section('title')
<title>{{ $product->name }}</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('clientAssets/productDetail/productDetail.css') }}">
@endsection

@section('content')
<!-- Breadcrumb Start -->
<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-12">
            {{ Breadcrumbs::render('detail', $product) }}
        </div>
    </div>
</div>
<!-- Breadcrumb End -->


<!-- Shop Detail Start -->
<div class="container-fluid pb-5">
    <div class="row px-xl-5">
        <div class="col-lg-4 mb-30 slider">
            <div id="product-carousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner bg-light">
                    <div class="carousel-item active">
                        <img src="{{ asset($product->feature_img_path) }}" alt="Image">
                    </div>
                    @foreach($product->images as $index => $image)
                    <div class="carousel-item">
                        <img src="{{ asset($image->image_path) }}" alt="Image">
                    </div>
                    @endforeach
                </div>
                <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
                    <i class="fa fa-2x fa-angle-left text-dark"></i>
                </a>
                <a class="carousel-control-next" href="#product-carousel" data-slide="next">
                    <i class="fa fa-2x fa-angle-right text-dark"></i>
                </a>
            </div>
        </div>

        <div class="col-lg-8 mb-30">
            <div class="h-100 bg-light p-30">
                <h3>{{ $product->name }}</h3>
                <div class="d-flex mb-3 aligh-item-center">
                    <div class="text-primary mr-2">
                        @starRating($product->reviews()->avg('rating'))
                        <small class="rating-average">({{ number_format($product->reviews()->avg('rating'), 1, '.', '') }})</small>
                    </div>
                </div>
                <div class="d-flex">
                    @if($product->discount == '' || $product->discount == 0)
                    <h3 class="font-weight-semi-bold mb-4 mr-3">
                        ${{ $product->formatPrice($product->price) }}
                    </h3>
                    @else
                    <h3 class="font-weight-semi-bold mb-4 mr-3">
                        ${{ $product->formatPrice($product->price - ($product->price * $product->discount / 100)) }}
                    </h3>
                    <h5 class="text-muted pt-1">
                        <del>${{ $product->formatPrice($product->price) }}</del>
                    </h5>
                    @endif
                </div>
                <form class="add-to-cart-form" action="{{ route('cart.add') }}" method="post">
                    @csrf
                    <input type="hidden" name="product_id" value="{{ $product->id }}">
                    <div class="mb-4">
                        <strong class="text-dark mr-1">Category:</strong>
                        @if($product->category)
                            <a href="{{ route('product.category', $product->category->slug) }}">{{ $product->category->name }}</a>
                        @else
                            <a><i>Unknown Category</i></a>
                        @endif
                    </div>
                    <div class="mb-4">
                        <strong class="text-dark mr-3">Sizes:</strong><br>
                        @foreach($product->sizes as $index => $size)
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" 
                                   id="size-{{ $size->id }}" name="size" 
                                   {{ $index == 0 ? 'checked' : '' }} 
                                   value="{{ $size->name }}">
                            <label class="custom-control-label" for="size-{{ $size->id }}">{{ strtoupper($size->name) }}</label>
                        </div>
                        @endforeach
                    </div>
                    <div class="mb-4">
                        <strong class="text-dark mr-3">Colors:</strong><br>
                        @foreach($product->colors as $index => $color)
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" 
                                   id="color-{{$color->id}}" name="color" 
                                   {{ $index == 0 ? 'checked' : '' }} 
                                   value="{{ $color->name }}">
                            <label class="custom-control-label" for="color-{{$color->id}}">{{ ucfirst(strtolower($color->name)) }}</label>
                        </div>
                        @endforeach
                    </div>
                    <div class="d-flex align-items-center mb-4 pt-2">
                        <div class="input-group quantity mr-3" style="width: 130px;">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-primary btn-minus">
                                    <i class="fa fa-minus"></i>
                                </button>
                            </div>
                            <input type="text" name="quantity" class="form-control bg-secondary border-0 text-center" value="1">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-primary btn-plus">
                                    <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="pt-2">
                        <button type="submit" class="btn btn-primary px-3">
                            <i class="fa fa-shopping-cart mr-1"></i>
                            Add To Cart
                        </button>
                    </div>
                </form>
                <div class="pt-2 mt-4 d-flex wishlist-buttons">
                    <div class="wishlist-toggle">
                        <button class="btn btn-outline-dark wishlist-btn wishlist-btn-detail 
                                      {{ $product->wishlists->where('user_id', Auth::id())->count() ? 'chosen' : '' }}" 
                                      data-product-id="{{ $product->id }}">
                            <i class="heart-icon far {{ $product->wishlists->where('user_id', Auth::id())->count() ? 'fas' : 'far' }} fa-heart"></i>
                        </button>
                    </div>
                    <form class="buy-now-form" action="{{ route('buyNow') }}" method="GET">
                        @csrf
                        <input type="hidden" name="product_id" value="{{ $product->id }}">
                        <input type="hidden" name="size" value="">
                        <input type="hidden" name="color" value="">
                        <input type="hidden" name="quantity" value="">
                        @if(Auth::check())
                        <button type="submit" class="btn btn-primary">
                            Buy now
                        </button>
                        @else
                        <span class="d-inline-block" data-toggle="popover" data-content="You need to be logged in to proceed with the purchase. Please log in to continue">
                            <button class="btn btn-primary" style="pointer-events: none;" type="button" disabled>Buy now</button>
                        </span>
                        @endif
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row px-xl-5">
        <div class="col">
            <div class="bg-light p-30">
                <div class="nav nav-tabs mb-4" id="review-tab">
                    <a class="nav-item nav-link text-dark active" data-toggle="tab" href="#tab-pane-1">Description</a>
                    <a class="nav-item nav-link text-dark" data-toggle="tab" href="#tab-pane-2">Reviews ({{ $product->reviews->count() }})</a>
                </div>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="tab-pane-1">
                        <h4 class="mb-3">Product Description</h4>
                        {!! $product->description !!}
                    </div>
                    <div class="tab-pane fade" id="tab-pane-2">
                        <div class="row">
                            <div class="col-md-6">
                                @if(Auth::check())
                                <h4 class="mb-4">Leave a review</h4>
                                <form id="review-form" action="{{ route('review.store', $product->id) }}" method="post">
                                    @csrf
                                    <div class="d-flex my-3">
                                        <p class="mb-0 mr-2 mt-2">Rating:</p>
                                        <div class="text-primary rating-option">
                                            <i class="rating-icon far fa-star" onclick="setRating(1)"></i>
                                            <i class="rating-icon far fa-star" onclick="setRating(2)"></i>
                                            <i class="rating-icon far fa-star" onclick="setRating(3)"></i>
                                            <i class="rating-icon far fa-star" onclick="setRating(4)"></i>
                                            <i class="rating-icon far fa-star" onclick="setRating(5)"></i>
                                        </div>
                                    </div>
                                    <input type="hidden" name="rating" id="rating" value="">
                                    @error('rating')
                                    <div class="text-danger">{{ $message }}</div>
                                    @enderror

                                    <div class="form-group">
                                        <label for="message">Review:</label>
                                        <textarea id="message" name="review" cols="30" rows="5" class="form-control">{{ old('review') }}</textarea>
                                        @error('review')
                                        <div class="text-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="form-group mb-0">
                                        <input type="submit" value="Submit" class="btn btn-primary px-3">
                                    </div>
                                </form>
                                @else
                                <h6 class="mb-4">
                                    Please 
                                    <a class="" href="{{ route('login', ['intended' => url()->current()]) }}">
                                        log in
                                    </a> 
                                    to review.
                                </h6>
                                
                                @endif
                            </div>
                            <div class="col-md-6">
                                <h4 class="mb-4">Reviews for <i>{{ $product->name }}:</i></h4>
                                <div id="reviews-container">
                                    @foreach($product->reviews as $review)
                                    <div class="row review-{{ $review->id }}">
                                        <div class="col-md-12">
                                            <div class="mb-4 d-flex justify-content-between">
                                                <div class="review-left d-flex">
                                                    <div class="user-image-review">
                                                        <img src="{{ asset($review->user ? $review->user->image : 'storage/user/user.png') }}" alt="Image" class="img-fluid mr-3 mt-1">
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="user-review-name">{{ $review->user ? $review->user->name : 'Unknown User' }}<small> - <i>{{ $review->created_at }}</i></small></div>
                                                        <div class="user-rating text-primary mb-2">
                                                            @for ($i = 1; $i <= 5; $i++) @if ($i <= $review->rating)
                                                                <i class="fas fa-star"></i>
                                                                @else
                                                                <i class="far fa-star"></i>
                                                                @endif
                                                            @endfor
                                                        </div>
                                                        <p class="review-content">{{ $review->review }}</p>
                                                    </div>
                                                </div>
                                                <div class="review-right">
                                                    @if(Auth::check())
                                                        @if(Auth()->user()->id == ($review->user ? $review->user->id : ''))
                                                        <div class="dropdown dropleft">
                                                            <button role="button" id="myInput" type="button" class="btn dropdown" data-toggle="dropdown">
                                                                <i class="fas fa-ellipsis-v"></i>
                                                            </button>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                                                <a href="" data-id="{{ $review->id }}" class="dropdown-item action_delete">Delete</a>
                                                            </div>
                                                        </div>
                                                        @endif
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Shop Detail End -->


<!-- Products Start -->
<div class="container-fluid py-5">
    @if(count($relatedProducts))
    <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4">
        <span class="bg-secondary pr-3">You May Also Like</span>
    </h2>
    @endif
    <div class="row px-xl-5">
        <div class="col">
            <div class="owl-carousel related-carousel">
                @foreach($relatedProducts as $item)
                <div class="product-item bg-light">
                    @if($item->discount != '' || $item->discount != 0)
                    <span class="product-sticker">{{ $item->discount }}% OFF</span>
                    @endif
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="{{ asset($item->feature_img_path) }}" alt="">
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
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate product-name" href="{{ route('product.detail', $item->slug) }}">{{ $item->name }}</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            @if($item->discount == '' || $item->discount == 0)
                            <h5>
                                ${{ $item->formatPrice($item->price) }}
                            </h5>
                            @else
                            <h5>
                                ${{ $item->formatPrice($item->price - ($item->price * $item->discount / 100)) }}
                            </h5>
                            <h6 class="text-muted ml-2"><del>
                                    ${{ $item->formatPrice($item->price) }}
                                </del></h6>
                            @endif
                        </div>
                        <div class="list-star d-flex align-items-center justify-content-center mb-1">
                            @if($item->reviews())
                            @starRating($item->reviews()->avg('rating'))
                            @endif
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('clientAssets/productDetail/productDetail.js') }}"></script>
<script>
    $(function () {
        $('[data-toggle="popover"]').popover()
    })
</script>
@endsection
