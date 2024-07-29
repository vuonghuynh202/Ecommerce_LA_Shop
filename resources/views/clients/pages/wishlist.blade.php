@extends('clients.partials.master')


@section('title')
<title>Wishlist</title>
@endsection

@section('content')
<div class="container-fluid">
    <div class="row px-xl-5 d-flex justify-content-center">
        <div class="col-lg-8 table-responsive mb-5">
            <table class="table table-light table-borderless table-hover text-center mb-0">
                <thead class="thead-dark">
                    <tr>
                        <th>Image</th>
                        <th>Products</th>
                        <th>Price</th>
                        <th>Action</th>
                        <th>Remove</th>
                    </tr>
                </thead>
                <tbody class="align-middle">
                    @foreach ($wishlists as $item)
                    <tr>
                        <td class="align-middle"><img src="{{ asset($item->product->feature_img_path) }}" alt="" style="width: 50px;"></td>
                        <td class="align-middle">
                            <a class="text-dark" href="{{ route('product.detail', $item->product->slug) }}">
                                {{ $item->product->name }}
                            </a>
                        </td>
                        <td class="align-middle">${{ $item->product->formatPrice($item->product->price) }}</td>
                        <td class="align-middle">
                            <a class="btn btn-primary btn-square">
                                <form class="add-to-cart-form" action="{{ route('cart.add') }}" method="post">
                                    @csrf
                                    <input type="hidden" name="product_id" value="{{ $item->product->id }}">
                                    <input type="hidden" name="size" value="{{ $item->product->sizes->first()->name }}">
                                    <input type="hidden" name="color" value="{{ $item->product->colors->first()->name }}">
                                    <input type="hidden" name="quantity" value="1">
                                    <button type="submit" class="btn btn-outline-none">
                                        <i class="fas fa-cart-plus"></i>
                                    </button>
                                </form>
                            </a>
                        </td>
                        <td class="align-middle">
                            <a href="#" data-id="{{ $item->id }}" class="btn btn-sm btn-dark wishlist-delete-btn">
                                <i class="fa fa-times"></i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <div style="height: 1000px;"></div>
</dv>
@endsection