@extends('admin.partials.master')

@section('title')
<title>Admin | Trash</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('adminAssets/trash/trash.css') }}">
@endsection


@section('content')
    @if(!count($categories) && !count($products) && !count($sliders))
        <h4 class="text-center">Empty trash</h4>
    @else
        @if(count($categories))
            @include('admin.trash.categoryTrash')
        @endif

        @if(count($products))
            @include('admin.trash.productTrash')
        @endif

        @if(count($sliders))
            @include('admin.trash.sliderTrash')
        @endif
    @endif
    
@endsection

@section('js')
<script src="{{ asset('adminAssets/trash/trash.js') }}"></script>
@endsection