@extends('clients.partials.master')

@section('title')
<title>{{ Auth::user()->name }}</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('clientAssets/profile/profile.css') }}">
@endsection

@section('content')

<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-lg-4 col-md-4">
            <div class="profile-left mb-3">
                <div class="bg-light profile-bg">
                    <img src="{{ asset('storage/user/background.jpg') }}" alt="">
                    <div class="user-avt">
                        <img src="{{ asset(Auth::user()->image) }}" alt="">
                        <a href="{{ route('profile.edit') }}" class="avt-cover">Edit</a>
                    </div>
                </div>
                <div class="profile-info mt-3">
                    <div class="my-3">
                        <i class="fas fa-user"></i>
                        &nbsp; {{ Auth::user()->name }}
                    </div>
                    <div class="mt-3">
                        <i class="fas fa-envelope"></i>
                        &nbsp; {{ Auth::user()->email }}
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-8 col-md-8">
            @if(count($orders))
                <h3 class="mb-3">Your orders:</h3>
            @else
                <div class="text-center">
                    <i>You do not have any orders! </i><br>
                    <a class="btn btn-primary mt-3" href="{{ route('product.all') }}">Shop Now</a>
                </div>
            @endif
            @foreach($orders as $order)
            <div class="profile-order bg-light py-4 mb-5">
                <div class="row px-4">
                    <div class="col-md-6 mb-3"><b>Code</b>: {{ $order->code }}</div>
                    <div class="col-md-6 mb-3"><b>Date</b>:<i> {{ $order->created_at }}</i></div>
                    <div class="col-md-6 mb-3"><b>Recipient</b>: {{ $order->fullname }}</div>
                    <div class="col-md-6 mb-3"><b>Phone</b>: {{ $order->phone }}</div>
                    <div class="col-md-6 mb-3"><b>Payment method</b>: {{ $order->payment }}</div>
                    <div class="col-md-6 mb-3 d-flex align-items-center">
                        <b>Status: </b>
                        <h5 class="ml-2"><span class="badge badge-secondary">{{ $order->status }}</span></h5>
                    </div>
                    <p class="pl-1 col-md-12">
                        <button class="btn btn-default" type="button" 
                                data-toggle="collapse" data-target="#collapseInfo-{{ $order->id }}" 
                                aria-expanded="false" aria-controls="collapseInfo-{{ $order->id }}">
                            <span>More information</span>
                            <i class="fas fa-caret-down"></i>
                        </button>
                    </p>
                    <div class="col-md-12 collapse mb-4" id="collapseInfo-{{ $order->id }}">
                        <div class="card card-body py-3 px-1">
                            <div class="col-md-12 mb-3"><b>Address</b>: {{ $order->address }}</div>
                            <div class="col-md-12"><b>Note</b>: {{ $order->note }}</div>
                        </div>
                    </div>
                </div>
                <div class="order-line">
                    <div class="left-half-circle"></div>
                    <div class="right-half-circle"></div>
                </div>
                <div class="row px-4 mt-4">
                    @foreach($order->items as $index => $item)
                    <div class="col-md-12 d-flex justify-content-between">
                        <a class="text-dark pr-2" 
                        @if($item->product) 
                            href="{{ route('product.detail', $item->product->slug) }}" 
                        @endif>
                            {{ $index + 1 }}. 
                            {{ $item->product ? $item->product->name : 'Unknown Product' }} 
                            ({{ strtoupper($item->size) }} - {{ ucfirst(strtolower($item->color)) }})
                        </a>
                        <span><b>{{ $item->quantity }}</b> x ${{ $item->price }}</span>
                    </div>
                    @endforeach
                    <div class="col-md-12 mt-1 d-flex justify-content-between"><b>Shipping:</b> ${{ $order->shipping }}</div>
                </div>
                <div class="row px-4 mt-3">
                    <div class="col-md-12  d-flex justify-content-end">
                        <b class="pt-1 border-top">Total: ${{ $order->total }}</b>
                    </div>
                </div>
                <div class="row px-4 mt-3">
                    <div class="col-md-12 mt-3">
                        @if (in_array($order->status, ['pending', 'confirmed', 'processing']))
                        <form method="POST" action="{{ route('order.cancel', $order->id) }}">
                            @csrf
                            <button type="submit" class="btn btn-primary">Cancel Order</button>
                        </form>
                        @endif

                        @if ($order->status === 'shipped')
                        <form method="POST" action="{{ route('order.confirmDelivery', $order->id) }}">
                            @csrf
                            <button type="submit" class="btn btn-primary">Confirm Delivery</button>
                        </form>
                        @endif
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
    <div style="height: 1000px"></div>
</div>
@endsection