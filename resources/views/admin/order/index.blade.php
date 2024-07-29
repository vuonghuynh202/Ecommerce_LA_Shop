@extends('admin.partials.master')

@section('title')
<title>Admin | Orders</title>
@endsection


@section('content')
@include('admin.toasts')
<div class="card">
    <div class="card-header px-5 pt-5 d-flex justify-content-between align-items-center">
        <h5 class="">Orders</h5>
    </div>
    <div class="table-responsive px-5 pb-5">
        <table class="table my-table pt-4" id="myTable">
            <thead>
                <tr>
                    <th>Code</th>
                    <th>User</th>
                    <th>Phone</th>
                    <th>Total</th>
                    <th>Address</th>
                    <th>Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody class="table-border-bottom-0">
                @foreach($orders as $order)
                <tr>
                    <td>{{ $order->code }}</td>
                    <td>{{ $order->user ? $order->user->name : 'Unknown User' }}</td>
                    <td>{{ $order->phone }}</td>
                    <td>${{ $order->total }}</td>
                    <td>{{ $order->address }}</td>
                    <td>{{ $order->created_at }}</td>
                    <td>
                        <a href="{{ route('order.editStatus', $order->id) }}" class="btn btn-sm btn-primary">{{ $order->status }}</a>
                    </td>
                    <td>
                        <a href="{{ route('order.detail', $order->id) }}" class="btn btn-sm btn-primary my-1">Details</a>
                        <a href="" data-url="{{ route('order.destroy', $order->id) }}" class="action_delete btn btn-sm btn-danger my-1">Delete</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection