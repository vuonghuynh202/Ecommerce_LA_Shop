@extends('admin.partials.master')

@section('title')
<title>Admin | Product</title>
@endsection


@section('content')
@include('admin.toasts')
<div class="card">
    <div class="card-header px-5 pt-5 d-flex justify-content-between align-items-center">
        <h5 class="">Product list</h5>
        <a class="btn-sm btn-primary" href="{{ route('product.create') }}">
            <i class='bx bx-plus'></i>
            &nbsp;Add products
        </a>
    </div>
    <hr class="mt-0">
    <div class="table-responsive px-3 pb-5">
        <table class="table my-table pt-4 table-bordered" id="myTable">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Discount</th>
                    <th>Category</th>
                    <th>Added by</th>
                    <th>Image</th>
                    <th>Is feature</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody class="table-border-bottom-0">
                @foreach($products as $product)
                <tr>
                    <td class="td-left">{{ $product->name }}</td>
                    <td>${{ number_format($product->price, 2, '.') }}</td>
                    <td>
                        {{ $product->discount == '' ? '0%' : $product->discount . '%' }}
                    </td> 
                    <td>{!! $product->category ? $product->category->name : '<i>Unknown Category</i>' !!}</td>
                    <td>{!! $product->user ? $product->user->name : '<i>Unknown User</i>' !!}</td>
                    <td>
                        <img src="{{ $product->feature_img_path }}" alt="" class="image-list">
                    </td>
                    <td>
                        {!! $product->is_feature == 1 ? 
                            '<span class="btn-xs btn-success">yes</span>' :
                            '<span class="btn-xs btn-secondary">no</span>'
                        !!}
                    </td>
                    <td>
                        {!! $product->status == 1 ? 
                            '<span class="btn-xs btn-success">active</span>' :
                            '<span class="btn-xs btn-danger">inactive</span>'
                        !!}
                    </td>
                    <td class="td-left">
                        <a href="{{ route('product.edit', $product) }}" class="btn btn-sm btn-primary my-1">Edit</a>
                        <a href="" data-url="{{ route('product.destroy', $product) }}" class="btn btn-sm btn-danger my-1 action_move_to_trash">Delete</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('adminAssets/trash/trash.js') }}"></script>
@endsection
