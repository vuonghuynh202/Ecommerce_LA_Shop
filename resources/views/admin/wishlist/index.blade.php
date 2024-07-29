@extends('admin.partials.master')

@section('title')
<title>Admin | Wishlist</title>
@endsection

@section('content')
@include('admin.toasts')
<div class="card">
    <div class="card-header px-5 pt-5 d-flex justify-content-between align-items-center">
        <h5 class="">Wishlist</h5>
    </div>
    <hr class="mt-0">
    <div class="table-responsive text-nowrap px-5 pb-5">
        <table class="table my-table pt-4" id="myTable">
            <thead>
                <tr>
                    <th>User</th>
                    <th>Product</th>
                    <th>Image</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody class="table-border-bottom-0">
                @foreach($wishlist as $item)
                <tr>
                    <td>{{ $item->user ? $item->user->name : 'Unknown User' }}</td> 
                    <td>{{ $item->product ? $item->product->name : 'Unknown Product' }}</td> 
                    <td>
                        <img src="{{ asset($item->product ? $item->product->feature_img_path : '') }}" class="image-list" alt="Image">
                    </td>
                    <td>
                        <a href="" data-url="{{ route('wishlist.destroy', $item->id) }}" class="btn btn-sm btn-danger action_delete">Delete</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection


@section('js')
<script src="{{ asset('adminAssets/wishlist/wishlist.js') }}"></script>
@endsection
