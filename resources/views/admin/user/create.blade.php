@extends('admin.partials.master')

@section('title')
<title>Admin | User</title>
@endsection

@section('content')

@include('admin.toasts')

<div class="card mb-4">
    <h4 class="card-header">Add users</h4>
    <div class="card-body">
        <form action="{{ route('user.store') }}" method="POST">
            @csrf
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <label class="form-label">Username</label>
                        <input type="text" name="username" 
                                class="form-control @error('username') is-invalid @enderror" 
                                id="name" value="{{ old('username') }}" placeholder="Enter user name">

                            @error('username')
                                <div class="text-danger validate-message">{{ $message }}</div>
                            @enderror
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" 
                                class="form-control @error('email') is-invalid @enderror" 
                                value="{{ old('email') }}" placeholder="Enter email">
                                
                            @error('email')
                                <div class="text-danger validate-message">{{ $message }}</div>
                            @enderror
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" 
                                class="form-control @error('password') is-invalid @enderror" 
                                placeholder="Enter password">
                                
                            @error('password')
                                <div class="text-danger validate-message">{{ $message }}</div>
                            @enderror
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <label class="form-label">Confirm Password</label>
                        <input type="password" name="confirmation_password" 
                                class="form-control @error('confirmation_password') is-invalid @enderror" 
                                placeholder="Confirm password">
                                
                            @error('confirmation_password')
                                <div class="text-danger validate-message">{{ $message }}</div>
                            @enderror
                    </div>
                </div>
            </div>
            <div class="col-md mb-3">
                <label for="" class="form-label">Role</label>
                <div class="form-check">
                    <input name="role" class="form-check-input" type="radio" value="0" id="defaultRadio1" checked>
                    <label class="form-check-label" for="defaultRadio1"> User </label>
                </div>
                <div class="form-check">
                    <input name="role" class="form-check-input" type="radio" value="1" id="defaultRadio2">
                    <label class="form-check-label" for="defaultRadio2"> Admin </label>
                </div>
            </div>
            <div class="col-md mb-3">
                <label for="" class="form-label">Status</label>
                <div class="form-check">
                    <input name="status" class="form-check-input" type="radio" value="1" id="status1" checked>
                    <label class="form-check-label" for="status1"> Active </label>
                </div>
                <div class="form-check">
                    <input name="status" class="form-check-input" type="radio" value="0" id="status2">
                    <label class="form-check-label" for="status2"> Inactive </label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
@endsection