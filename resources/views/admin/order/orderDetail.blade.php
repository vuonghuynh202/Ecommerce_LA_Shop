@extends('admin.partials.master')

@section('title')
<title>Admin | Order Details</title>
@endsection


@section('content')
<div class="card mb-4 p-3">
    <div class="row">
        <div class="col-md-12 px-5 mt-3 d-flex justify-content-end ">
            <h1 class="text-primary"><b>Receipt</b></h1>
        </div>
    </div>
    <div class="card-body">
        <h5 class="text-primary"><b>LA Shop</b></h5>
        <div class="row bg-light p-3 mb-4">
            <div class="col-md-12">
                <h4>{{ $order->code }}</h4>
            </div>
            <div class="col-md-6 mb-3"><b>Recipient</b>: {{ $order->fullname }}</div>
            <div class="col-md-6 mb-3"><b>Phone</b>: {{ $order->phone }}</div>
            <div class="col-md-6 mb-3"><b>Payment method</b>: {{ $order->payment }}</div>
            <div class="col-md-6 mb-3"><b>Date</b>: {{ $order->created_at }}<i></i></div>
            <div class="col-md-12 mb-3"><b>Address:</b> {{ $order->address }}</div>
            <div class="col-md-12 mb-3"><b>Note:</b> {{ $order->note }}</div>
        </div>
        <div class="row mb-3 border-bottom">
            <table class="table card-table">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Size</th>
                        <th>Color</th>
                        <th>Price</th>
                        <th>Qty</th>
                        <th>Amount</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    @foreach($order->items as $item)
                    <tr>
                        <td>{{ $item->product ? $item->product->name : 'Unknown Product' }}</td>
                        <td>{{ strtoupper($item->size) }}</td>
                        <td>{{ ucfirst(strtolower($item->color)) }}</td>
                        <td>${{ $item->price }}</td>
                        <td>{{ $item->quantity }}</td>
                        <td>${{ $item->price * $item->quantity }}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="row mb-3">
            <div class="col-md-12 mb-2 d-flex justify-content-end">
                <div class="col-md-3 px-4 d-flex justify-content-between">
                    <div><b>Sub-total:</b></div>
                    <div>
                        ${{ $subtotal }}
                    </div>
                </div>
            </div>
            <div class="col-md-12 mb-2 d-flex justify-content-end">
                <div class="col-md-3 px-4 d-flex justify-content-between">
                    <div><b>Shipping:</b></div>
                    <div>$2.00</div>
                </div>
            </div>
            <div class="col-md-12 d-flex justify-content-end">
                <div class="col-md-3 pt-2 border-top border-primary border-3 px-4 d-flex justify-content-between">
                    <h4>Total Paid:</h4>
                    <h4>${{ $order->total }}</h4>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection