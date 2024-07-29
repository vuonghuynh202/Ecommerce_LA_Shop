@extends('clients.partials.master')


@section('title')
<title>Cart</title>
@endsection

@section('content')

<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-lg-8 table-responsive mb-5">
            <table class="table table-light table-borderless table-hover text-center mb-0">
                <thead class="thead-dark">
                    <tr>
                        <th>Image</th>
                        <th>Products</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Size</th>
                        <th>Color</th>
                        <th>Remove</th>
                    </tr>
                </thead>
                <tbody class="align-middle">
                    @foreach ($cart as $item)
                    @php
                    //check $item is a Eloquent or a array
                    $product = is_array($item) ? \App\Models\Product::find($item['product_id']) : $item->product;
                    $quantity = is_array($item) ? $item['quantity'] : $item->quantity;
                    $color = is_array($item) ? $item['color'] : $item->color;
                    $size = is_array($item) ? $item['size'] : $item->size;
                    @endphp
                    <tr>
                        <td class="align-middle"><img src="{{ asset($product->feature_img_path) }}" alt="" style="width: 50px;"></td>
                        <td class="align-middle">
                            <a class="text-dark" href="{{ route('product.detail', $product->slug) }}">
                                {{ $product->name }}
                            </a>
                        </td>
                        <td class="align-middle">
                            <div class="d-flex">
                                <span>$</span>
                                <span class="product-cart-price">
                                    {{ $product->discount == '' ? $product->formatPrice($product->price) : $product->formatPrice($product->price - ($product->price * $product->discount / 100)) }}
                                </span>
                            </div>
                        </td>
                        <td class="align-middle">
                            <div class="input-group quantity mx-auto" style="width: 100px;">
                                <div class="input-group-btn">
                                    <button class="btn btn-sm btn-primary btn-minus btn-minus-cart" 
                                    data-product-id="{{ $product->id }}" 
                                    data-color="{{ $color }}" 
                                    data-size="{{ $size }}">
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <input type="text" id="cart-quantity" class="form-control form-control-sm bg-secondary border-0 text-center" value="{{ $quantity }}" data-current-quantity="{{ $quantity }}">
                                <div class="input-group-btn">
                                    <button class="btn btn-sm btn-primary btn-plus btn-plus-cart" 
                                    data-product-id="{{ $product->id }}" 
                                    data-color="{{ $color }}" 
                                    data-size="{{ $size }}">
                                        <i class="fa fa-plus"></i>
                                    </button>
                                </div>
                            </div>
                        </td>
                        <td class="align-middle">{{ strtoupper($size) }}</td>
                        <td class="align-middle">{{ ucfirst(strtolower($color)) }}</td>
                        <td class="align-middle">
                            <a href="#" class="btn btn-sm btn-dark cart-delete-btn" data-product-id="{{ $product->id }}" data-color="{{ $color }}" data-size="{{ $size }}">
                                <i class="fa fa-times"></i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        @if($cartCount > 0)
            <div class="col-lg-4">
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Cart Summary</span></h5>
                <div class="bg-light p-30 mb-5">
                    <div class="border-bottom pb-2">
                        <div class="d-flex justify-content-between mb-3">
                            <h6>Subtotal</h6>
                            <h6>$<span id="subtotal">{{ $subtotal }}</span></h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Shipping</h6>
                            <h6 class="font-weight-medium">$<span id="shipping">{{ $shipping }}</span></h6>
                        </div>
                    </div>
                    <div class="pt-2">
                        <div class="d-flex justify-content-between mt-2">
                            <h5>Total</h5>
                            <h5>$<span id="total">{{ $total }}</span></h5>
                        </div>
                        
                        <a href="{{ route('checkout') }}" class="btn btn-block btn-primary font-weight-bold my-3 py-3">Proceed To Checkout</a>
                    </div>
                </div>
            </div>
        @endif
    </div>
    <div style="height: 1000px;"></div>
</div>
@endsection