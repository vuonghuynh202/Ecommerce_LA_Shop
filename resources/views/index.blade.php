@extends('clients.partials.master')

@section('content')
<!-- Carousel Start -->
<div class="container-fluid mb-3">
    <div class="row px-xl-5">
        <div class="col-lg-8">
            <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                <ol class="carousel-indicators">
                    @foreach($sliders as $index => $slider)
                    <li data-target="#header-carousel" data-slide-to="{{ $index }}" class="{{ $index == 0 ? 'active' : '' }}"></li>
                    @endforeach
                </ol>
                <div class="carousel-inner">
                    @foreach($sliders as $index => $slider)
                    <div class="carousel-item position-relative {{ $index == 0 ? 'active' : '' }}" style="height: 430px;">
                        <img class="position-absolute w-100 h-100" src="{{ asset($slider['image']) }}" style="object-fit: cover;">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown"><b>{{ $slider['title'] }}</b></h1>
                                <p class="mx-md-5 px-5 animate__animated animate__bounceIn">{{ $slider['content'] }}</p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="product-offer mb-30" style="height: 200px;">
                <img class="img-fluid" src="{{ asset('storage/saleOff/save1.jpg') }}" alt="">
                <div class="offer-text">
                    <h6 class="text-white text-uppercase">Hot Sale</h6>
                    <h3 class="text-white mb-3">Special Offer</h3>
                </div>
            </div>
            <div class="product-offer mb-30" style="height: 200px;">
                <img class="img-fluid" src="{{ asset('storage/saleOff/save2.jpg') }}" alt="">
                <div class="offer-text">
                    <h6 class="text-white text-uppercase">Save 40%</h6>
                    <h3 class="text-white mb-3">Special Offer</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Carousel End -->

<!-- Featured Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5 pb-3">
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
            </div>
        </div>
    </div>
</div>
<!-- Featured End -->

<!-- Products Start -->
<div class="container-fluid pt-5 pb-3">
    <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Featured Products</span></h2>
    <div class="row px-xl-5">
        @foreach($featureProducts as $item)
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
                            <button class="btn wishlist-btn {{ $item->wishlists->where('user_id', Auth::id())->count() ? 'chosen' : '' }}" data-product-id="{{ $item->id }}">
                                <i class="heart-icon {{ $item->wishlists->where('user_id', Auth::id())->count() ? 'fas' : 'far' }} fa-heart"></i>
                            </button>
                        </a>
                        <a class="btn btn-outline-dark btn-square" href="{{ route('product.detail', $item->slug) }}"><i class="far fa-eye"></i></a>
                    </div>
                </div>
                <div class="text-center py-4">
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
<!-- Products End -->

<!-- Offer Start -->
<div class="container-fluid pt-5 pb-3">
    <div class="row px-xl-5">
        <div class="col-md-6">
            <div class="product-offer mb-30" style="height: 300px;">
                <img class="img-fluid" src="{{ asset('storage/saleOff/save1.jpg') }}" alt="">
                <div class="offer-text">
                    <h6 class="text-white text-uppercase">Hot Sale</h6>
                    <h3 class="text-white mb-3">Special Offer</h3>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="product-offer mb-30" style="height: 300px;">
                <img class="img-fluid" src="{{ asset('storage/saleOff/save2.jpg') }}" alt="">
                <div class="offer-text">
                    <h6 class="text-white text-uppercase">Save 40%</h6>
                    <h3 class="text-white mb-3">Special Offer</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Offer End -->


<!-- Products Start -->
<div class="container-fluid pt-5 pb-3">
    <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Latest Products</span></h2>
    <div class="row px-xl-5">
        @foreach($latestProducts as $item)
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
                            <button class="btn wishlist-btn {{ $item->wishlists->where('user_id', Auth::id())->count() ? 'chosen' : '' }}" data-product-id="{{ $item->id }}">
                                <i class="heart-icon {{ $item->wishlists->where('user_id', Auth::id())->count() ? 'fas' : 'far' }} fa-heart"></i>
                            </button>
                        </a>
                        <a class="btn btn-outline-dark btn-square" href="{{ route('product.detail', $item->slug) }}"><i class="far fa-eye"></i></a>
                    </div>
                </div>
                <div class="text-center py-4">
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
<!-- Products End -->
@endsection