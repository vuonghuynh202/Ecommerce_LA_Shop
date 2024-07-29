@extends('admin.partials.master')

@section('title')
<title>Admin | Slider</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('adminAssets/slider/create.css') }}">
@endsection

@section('content')
@include('admin.toasts')
<div class="card">
    <div class="card-header px-5 pt-5 d-flex justify-content-between align-items-center">
        <h5 class="">Slider list</h5>
        <a class="btn-sm btn-primary" href="{{ route('slider.create') }}">
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
                        <img class="list-image" src="{{ $item->image }}" alt="" height="60px" width="90px">
                    </td>
                    <td>
                        <a href="{{ route('slider.edit', $item) }}" class="btn btn-sm my-1 btn-primary">Edit</a>
                        &nbsp;
                        
                        <a href="" data-url="{{ route('slider.destroy', $item) }}" class="btn btn-sm btn-danger my-1 action_move_to_trash">Delete</a>
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
