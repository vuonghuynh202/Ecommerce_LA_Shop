@extends('clients.partials.master')

@section('title')
<title>LA Shop | Search</title>
@endsection

@section('content')


<!-- Shop Start -->
<div class="container-fluid">
    <div class="row px-xl-5">
        <!-- Shop Product Start -->
        <div class="col-lg-12 col-md-12">
            <h6 class="mb-4">Results for <i>'{{ $query }}':</i></h6>
            <div class="row pb-3">
                @foreach($products as $item)
                <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
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
                                    <button class="btn wishlist-btn" data-product-id="{{ $item->id }}">
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
            </div>
        </div>
        <!-- Shop Product End -->
    </div>
    <div style="height: 1000px;"></div>
</div>
<!-- Shop End -->
@endsection