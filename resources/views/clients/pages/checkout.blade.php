@extends('clients.partials.master')


@section('title')
<title>Checkout</title>
@endsection

@section('content')
<!-- Breadcrumb Start -->
<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-12">
            @php 
            $product = App\Models\Product::find($products[0]['product_id'])
            @endphp
            @if(isset($isBuyNow))
            {{ Breadcrumbs::render('checkout-from-detail', $product) }}
            @else 
            {{ Breadcrumbs::render('checkout') }}
            @endif
        </div>
    </div>
</div>
<!-- Breadcrumb End -->


<!-- Checkout Start -->
<div class="container-fluid">
    <form action="{{ route('checkout.store') }}" method="POST">
        @csrf
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Billing Address</span></h5>
                <div class="bg-light p-30 mb-5">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Fullname</label>
                            <input name="fullname" class="form-control @error('fullname') is-invalid @enderror" type="text">
                            @error('fullname')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Phone number</label>
                            <input name="phone" class="form-control form-control @error('phone') is-invalid @enderror" type="number">
                            @error('phone')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="col-md-12 form-group">
                            <label>Address</label>
                            <input name="address" class="form-control @error('address') is-invalid @enderror" type="text">
                            @error('address')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="col-md-12 form-group">
                            <label>Note</label>
                            <textarea name="note" class="form-control @error('note') is-invalid @enderror" id="" rows="3"></textarea>
                            @error('note')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Order Total</span></h5>
                <div class="bg-light p-30 mb-5">
                    <div class="border-bottom">
                        <h6 class="mb-3">Products</h6>
                        @foreach($products as $index => $item)
                        <div class="d-flex justify-content-between">
                            <p class="pr-3">
                                {{ $index + 1 . '. ' . $item['name'] }}
                                (x{{ $item['quantity'] }})
                            </p>
                            <p>${{ number_format($item['price'] * $item['quantity'], 2, '.', ''); }}</p>
                        </div>
                        @endforeach
                    </div>
                    <div class="border-bottom pt-3 pb-2">
                        <div class="d-flex justify-content-between mb-3">
                            <h6>Subtotal</h6>
                            <h6>${{ $subtotal }}</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Shipping</h6>
                            <h6 class="font-weight-medium">${{ $shipping }}</h6>
                        </div>
                    </div>
                    <div class="pt-2">
                        <div class="d-flex justify-content-between mt-2">
                            <h5>Total</h5>
                            <h5>${{ $total }}</h5>
                        </div>
                    </div>
                </div>
                <div class="mb-5">
                    <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Payment</span></h5>
                    <div class="bg-light p-30">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input @error('payment') is-invalid @enderror" value="COD" name="payment" id="cod">
                                <label class="custom-control-label" for="cod">C.O.D (Cash On Delivery)</label>
                                @error('payment')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <input type="hidden" name="total" value="{{ $total }}">
                        <input type="hidden" name="shipping" value="{{ $shipping }}">
                        <input type="hidden" name="cart_items" value="{{ json_encode($products) }}">

                        <button type="submit" class="btn btn-block btn-primary font-weight-bold py-3">Place Order</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<!-- Checkout End -->
@endsection