@extends('admin.partials.master')

@section('title')
<title>Admin | Setting</title>
@endsection

@section('content')

<div class="card mb-4">
    <h4 class="card-header">Add Setting</h4>
    <div class="card-body">
        <form action="{{ route('setting.store') }}" method="POST">
            @csrf

            @if($key == 'social')
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="name" class="form-label">Social media name</label>
                        <input type="text" name="key" class="form-control @error('key') is-invalid @enderror" placeholder="Enter social media name" value="{{ old('name') }}">
                        @error('key')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="link" class="form-label">Social media link</label>
                        <input type="text" name="value" class="form-control @error('value') is-invalid @enderror" placeholder="Enter your link" value="{{ old('link') }}">
                        @error('value')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                </div>
            </div>
            @else
            <div class="mb-3">
                <input type="hidden" name="key" value="{{ $key }}">
                <label for="description" class="form-label">Content</label>
                <textarea class="form-control @error('key') is-invalid @enderror" name="value" id="description">{{ old('description') }}</textarea>
                @error('key')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
                @enderror
            </div>
            @endif
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
@endsection


@section('js')
<script src="{{ asset('vendors/ckeditor/ckeditor.js') }}"></script>
<script>
    CKEDITOR.replace('description');
</script>
@endsection