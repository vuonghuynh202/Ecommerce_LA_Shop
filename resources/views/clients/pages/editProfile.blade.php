@extends('clients.partials.master')


@section('title')
<title>{{ Auth::user()->name }}</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('clientAssets/profile/profile.css') }}">
@endsection

@section('content')
<!-- Breadcrumb Start -->
<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-12">
            {{ Breadcrumbs::render('edit-profile') }}
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-lg-6 col-md-6">
            <div class="bg-light p-5">
                <h3 class="mb-4">Edit Profile</h3>
                <form action="{{ route('profile.update') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group mb-3">
                        <label for="name">Name:</label>
                        <input type="text" name="name" class="form-control" id="name" value="{{ Auth::user()->name }}" required>
                    </div>
                    <div class="custom-file mt-3">
                        <input type="file" name="image" class="custom-file-input" id="feature-image">
                        <label class="custom-file-label" for="feature-image">Choose file...</label>
                        <div class="feature-image mt-2">
                            <img id="image-preview" src="{{ asset(Auth::user()->image) }}" alt="">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary mt-3">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <div style="height: 1000px"></div>
</div>
@endsection

@section('js')
<script src="{{ asset('clientAssets/profile/Editprofile.js') }}"></script>
@endsection