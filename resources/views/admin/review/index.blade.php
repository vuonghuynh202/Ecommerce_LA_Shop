@extends('admin.partials.master')

@section('title')
<title>Admin | Reviews</title>
@endsection

@section('content')
<div class="card">
    <div class="card-header px-5 pt-5 d-flex justify-content-between align-items-center">
        <h5 class="">Reviews</h5>
    </div>
    <hr class="mt-0">
    <div class="table-responsive px-5 pb-5">
        <table class="table my-table pt-4" id="myTable">
            <thead>
                <tr>
                    <th>User</th>
                    <th>Product</th>
                    <th>Rating</th>
                    <th>Review</th>
                    <th>Time</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody class="table-border-bottom-0">
                @foreach($reviews as $item)
                <tr>
                    <td>{!! $item->user ? $item->user->name : '<i>Unknown User</i>' !!}</td>
                    <td>{!! $item->product ? $item->product->name : '<i>Unknown Product</i>' !!}</td>
                    <td>
                        <div class="d-flex align-item-center">
                            <span>{{ $item->rating }}</span> &nbsp;
                            <i class='bx bxs-star'></i>
                        </div>
                    </td>
                    <td>{{ $item->review }}</td>
                    <td>{{ $item->created_at }}</td>
                    <td>
                        <a href="" data-url="{{ route('review.destroy', $item->id) }}" class="btn btn-sm btn-danger action_delete">Delete</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('adminAssets/cart/cart.js') }}"></script>
@endsection
