@extends('admin.partials.master')

@section('title')
<title>Admin | Category</title>
@endsection

@section('content')

@include('admin.toasts')

<div class="card mb-4">
    <h4 class="card-header">Edit categories</h4>
    <div class="card-body">
        <form action="{{ route('category.update', $category) }}" method="POST">
            @method('PUT')
            @csrf
            <input type="hidden" name='id' value="{{ $category->id }}">
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" name="name" class="form-control
                                @error('name') is-invalid @enderror" 
                                id="name" placeholder="Enter category name" 
                                onkeyup="ChangeToSlug('name', 'slug')"
                                value="{{ old('name', $category->name) }}">
                        @error('name')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-6">
                        <label for="name" class="form-label">Slug</label>
                        <input type="text" name="slug" class="form-control" 
                                id="slug" readonly
                                value="{{ old('slug', $category->slug) }}">
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <label for="defaultSelect" class="form-label">Parent category</label>
                <select id="defaultSelect" class="form-select @error('parent_id') is-invalid @enderror" name="parent_id">
                    <option value="0">None</option>

                    {!! $categories !!}
                    
                </select>
                @error('parent_id')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
            <div class="col-md mb-3">
                <label for="" class="form-label">Status</label>
                <div class="form-check">
                    <input name="status" class="form-check-input" 
                            type="radio" value="1" id="defaultRadio1"
                            {{ old('status', $category->status) == 1 ? 'checked' : '' }}>
                    <label class="form-check-label" for="defaultRadio1"> Active </label>
                </div>
                <div class="form-check">
                    <input name="status" class="form-check-input" 
                            type="radio" value="0" id="defaultRadio2"
                            {{ old('status', $category->status) == 0 ? 'checked' : '' }}>
                    <label class="form-check-label" for="defaultRadio2"> Inactive </label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
@endsection
