@extends('admin.partials.master')

@section('title')
<title>Admin | Product</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('vendors/select2/select2.min.css') }}">
<link rel="stylesheet" href="{{ asset('adminAssets/product/create.css') }}">
@endsection

@section('content')
@include('admin.toasts')

<div class="card mb-4">
    <h4 class="card-header">Add products</h4>
    <div class="card-body">
        <form action="{{ route('product.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" name="name" 
                                class="form-control @error('name') is-invalid @enderror" 
                                id="name" placeholder="Enter product name" 
                                value="{{ old('name') }}"
                                onkeyup="ChangeToSlug('name', 'slug')">
                            @error('name')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                    </div>
                    <div class="col-md-6">
                        <label for="name" class="form-label">Slug</label>
                        <input type="text" name="slug" 
                                class="form-control" id="slug" 
                                value="{{ old('slug') }}" readonly>
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <label for="name" class="form-label">Price</label>
                        <input type="number" step="0.01" name="price" 
                                class="form-control @error('price') is-invalid @enderror" 
                                value="{{ old('price') }}"
                                id="name">
                            @error('price')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                    </div>
                    <div class="col-md-6">
                        <label for="name" class="form-label">Discount (%)</label>
                        <input type="number" name="discount" 
                                class="form-control @error('discount') is-invalid @enderror" 
                                id="slug" value="{{ old('discount') }}" placeholder="0"> 
                            @error('discount')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <label for="defaultSelect" class="form-label">Category</label>
                        <select id="defaultSelect" 
                                class="form-select @error('category_id') is-invalid @enderror" 
                                name="category_id">
                            <option value="">Select a category</option>
                            {!! $categories !!}
                        </select>
                            @error('category_id')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <label for="" class="form-label">Color</label>
                        <select id="" class="form-control select2 @error('colors') is-invalid @enderror" 
                                name="colors[]" multiple>
                        </select>

                        @error('colors')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-6">
                        <label for="" class="form-label">Size</label>
                        <select id="" class="form-control select2 @error('sizes') is-invalid @enderror" 
                                name="sizes[]" multiple>
                        </select>
                        @error('sizes')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <label for="imageUpload" class="form-label">Feature image</label>
                        <input class="form-control @error('feature_img_path') is-invalid @enderror" 
                                type="file" id="imageUpload" name="feature_img_path">
                        @error('feature_img_path')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                        <br>
                        <div id="preview_container" class="preview-image"></div>
                    </div>
                    <div class="col-md-6">
                        <label for="fileInput" class="form-label">Detail images</label>
                        <input class="form-control @error('image_paths') is-invalid @enderror" 
                        type="file" id="fileInput" accept="image/*" multiple="" name="image_paths[]">
                        @error('image_paths')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                        <br>
                        <div id="previewContainer" class="preview-container"></div>
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea class="form-control @error('description') is-invalid @enderror" 
                            name="description" id="description" value="{{ old('description') }}"></textarea>
                        @error('description')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
            </div>
            <div class="form-check my-4">
                <input class="form-check-input" type="checkbox" name="is_feature" value="1" id="is_feature">
                <label class="form-check-label" for="is_feature"> IS FEATURE </label>
            </div>
            <div class="col-md">
                <label for="" class="form-label">Status</label>
                <div class="form-check">
                    <input name="status" class="form-check-input" type="radio" value="1" id="defaultRadio1" checked>
                    <label class="form-check-label" for="defaultRadio1"> Active </label>
                </div>
                <div class="form-check">
                    <input name="status" class="form-check-input" type="radio" value="0" id="defaultRadio2">
                    <label class="form-check-label" for="defaultRadio2"> Inactive </label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('adminAssets/product/create.js') }}"></script>
<script src="{{ asset('vendors/select2/select2.min.js') }}"></script>
<script src="{{ asset('vendors/ckeditor/ckeditor.js') }}"></script>
<script>
    CKEDITOR.replace('description');
</script>

@endsection