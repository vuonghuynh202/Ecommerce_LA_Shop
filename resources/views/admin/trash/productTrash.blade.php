<div class="card mb-5">
    <div class="card-header px-5 pt-5 d-flex justify-content-between align-items-center">
        <h5 class="">Deleted Products List</h5>
    </div>
    <hr class="mt-0">
    <div class="table-responsive px-3 pb-5">
        <table class="table my-table pt-4 table-bordered" id="myTable2">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Discount</th>
                    <th>Category</th>
                    <th>Added by</th>
                    <th>Image</th>
                    <td>Deleted at</td>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody class="table-border-bottom-0">
                @foreach($products as $product)
                <tr>
                    <td class="td-left">{{ $product->name }}</td>
                    <td>{{ number_format($product->price) }}</td>
                    <td>
                        {{ $product->discount == '' ? '0%' : $product->discount . '%' }}
                    </td>
                    <td>{!! $product->category ? $product->category->name : '<i>Unknown Category</i>' !!}</td>
                    <td>{!! $product->user ? $product->user->name : '<i>Unknown User</i>' !!}</td>
                    <td>
                        <img src="{{ $product->feature_img_path }}" alt="" class="image-list">
                    </td>
                    <td>{{ $product->deleted_at }}</td>
                    <td class="td-left">
                        <a href="" data-url="{{ route('product.restore', $product->id) }}" class="btn btn-sm my-1 btn-primary action_restore">Restore</a>

                        <a href="" data-url="{{ route('product.forceDelete', $product->id) }}" class="btn btn-sm btn-danger my-1 action_force_delete">Delete forever</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>