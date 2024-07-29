@extends('admin.partials.master')

@section('title')
<title>Admin | Slider</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('adminAssets/slider/create.css') }}">
@endsection

@section('content')
@include('admin.toasts')
<div class="card mb-4">
    <h4 class="card-header">Edit sliders</h4>
    <div class="card-body">
        <form action="{{ route('slider.update', $slider) }}" method="POST" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <input type="hidden" name="id" value="{{ $slider->id }}">
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="form-label">Title</label>
                                <input type="text" name="title" class="form-control @error('title') is-invalid @enderror" id="name" value="{{ old('title') ? old('title') : $slider->title }}" placeholder="Enter user name">

                                @error('title')
                                <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-md-12">
                                <label class="form-label">Content</label>
                                <textarea name="content" class="form-control @error('content') is-invalid @enderror">{{ old('content') ? old('content') : $slider->content }}</textarea>

                                @error('content')
                                <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-md-12">
                                <label for="imageUpload" class="form-label">Image</label>
                                <input class="form-control @error('image') is-invalid @enderror" type="file" id="imageUpload" name="image">

                                @error('image')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div id="preview_container" class="preview-image">
                        <img src="{{ $slider->image }}" alt="">
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
@endsection