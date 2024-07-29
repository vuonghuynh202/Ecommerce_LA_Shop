<div class="card">
    <div class="card-header px-5 pt-5 d-flex justify-content-between align-items-center">
        <h5 class="">Deleted Sliders list</h5>
        <a class="btn-sm btn-primary" href="{{ route('category.create') }}">
            <i class='bx bx-plus'></i>
            &nbsp;Add sliders
        </a>
    </div>
    <hr class="mt-0">
    <div class="table-responsive px-5 pb-5">
        <table class="table my-table pt-4" id="myTable">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Content</th>
                    <th>Image</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody class="table-border-bottom-0">
                @foreach($sliders as $item)
                <tr>
                    <td>{{ $item->title }}</td>
                    <td>{{ $item->content }}</td>
                    <td>
                        <img class="list-image" src="{{ $item->image }}" alt="" style="object-fit: cover;" height="60px" width="100px">
                    </td>
                    <td>
                        <a href="" data-url="{{ route('slider.restore', $item->id) }}" class="btn btn-sm my-1 btn-primary action_restore">Restore</a>
                        <a href="" data-url="{{ route('slider.forceDelete', $item->id) }}" class="btn btn-sm btn-danger my-1 action_force_delete">Delete forever</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>