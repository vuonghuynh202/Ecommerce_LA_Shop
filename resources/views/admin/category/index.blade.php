@extends('admin.partials.master')

@section('title')
<title>Admin | Category</title>
@endsection


@section('content')
@include('admin.toasts')
<div class="card">
    <div class="card-header px-5 pt-5 d-flex justify-content-between align-items-center">
        <h5 class="">Category list</h5>
        <a class="btn-sm btn-primary" href="{{ route('category.create') }}">
            <i class='bx bx-plus'></i>
            &nbsp;Add categories
        </a>
    </div>
    <hr class="mt-0">
    <div class="table-responsive text-nowrap px-5 pb-5">
        <table class="table my-table pt-4" id="myTable">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Parent</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody class="table-border-bottom-0">
                @foreach($categories as $item)
                <tr>
                    <td>{{ $item->name }}</td>
                    <td>{!! $item->parent ? $item->parent->name : '<i>None</i>' !!}</td> 
                    <td>
                        {!! $item->status == 1 ?
                        '<span class="btn-xs btn-success">active</span>' :
                        '<span class="btn-xs btn-danger">inactive</span>'
                        !!}
                    </td>
                    <td>
                        <a href="{{ route('category.edit', $item) }}" class="btn btn-sm btn-primary">Edit</a>
                        &nbsp;
                        
                        <a href="" data-url="{{ route('category.destroy', $item) }}" class="btn btn-sm btn-danger action_move_to_trash">Delete</a>
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