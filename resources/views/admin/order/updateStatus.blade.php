@extends('admin.partials.master')

@section('title')
<title>Admin | Orders</title>
@endsection


@section('content')
@include('admin.toasts')
<div class="card mb-4">
    <h4 class="card-header">Update order status</h4>
    <div class="card-body">
        <form action="{{ route('order.updateStatus', $order->id) }}" method="post">
            @csrf
            <div class="col-md-6 mb-3">
                <label for="defaultSelect" class="form-label">Order Status</label>
                <select name="status" class="form-select">
                    <option value="pending" {{ $order->status == 'pending' ? 'selected' : '' }}>Pending</option>
                    <option value="confirmed" {{ $order->status == 'confirmed' ? 'selected' : '' }}>Confirmed</option>
                    <option value="processing" {{ $order->status == 'processing' ? 'selected' : '' }}>Processing</option>
                    <option value="shipped" {{ $order->status == 'shipped' ? 'selected' : '' }}>Shipped</option>
                    <option value="delivered" {{ $order->status == 'delivered' ? 'selected' : '' }}>Delivered</option>
                    <option value="cancelled" {{ $order->status == 'cancelled' ? 'selected' : '' }}>Cancelled</option>
                    <option value="refunded" {{ $order->status == 'refunded' ? 'selected' : '' }}>Refunded</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
@endsection 