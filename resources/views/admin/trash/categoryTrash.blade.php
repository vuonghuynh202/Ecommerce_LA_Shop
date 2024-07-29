<div class="card mb-5">
    <div class="card-header px-5 pt-5">
        <h5 class="">Deleted Categories List</h5>
    </div>
    <hr class="mt-0">
    <div class="table-responsive text-nowrap px-5 pb-5">
        <table class="table my-table pt-4" id="myTable2">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Parent</th>
                    <th>Deleted at</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody class="table-border-bottom-0">
                @foreach($categories as $item)
                    <tr>
                        <td>{{ $item->name }}</td>
                        <td>{!! $item->parent ? $item->parent->name : '<i>none</i>' !!}</td>
                        <td>{{ $item->deleted_at }}</td>
                        <td>
                            <a href="" data-url="{{ route('category.restore', $item->id) }}" class="btn btn-sm btn-primary action_restore">Restore</a>
                            &nbsp;
                            <a href="" data-url="{{ route('category.forceDelete', $item->id) }}" class="btn btn-sm btn-danger action_force_delete">Delete forever</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

