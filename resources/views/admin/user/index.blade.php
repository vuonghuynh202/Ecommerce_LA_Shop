@extends('admin.partials.master')

@section('title')
<title>Admin | User</title>
@endsection

@section('content')
@include('admin.toasts')
<div class="card">
    <div class="card-header px-5 pt-5 d-flex justify-content-between align-items-center">
        <h5 class="">User list</h5>
        <a class="btn-sm btn-primary" href="{{ route('user.create') }}">
            <i class='bx bx-plus'></i>
            &nbsp;Add user
        </a>
    </div>
    <hr class="mt-0">
    <div class="table-responsive text-nowrap px-5 pb-5">
        <table class="table my-table pt-4" id="myTable">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody class="table-border-bottom-0">
                @foreach($users as $user)
                <tr>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td> 
                    <td>{{ $user->role == 1 ? 'Admin' : 'User' }}</td> 
                    <td>
                        {!! $user->status == 1 ?
                        '<span class="btn-xs btn-success">active</span>' :
                        '<span class="btn-xs btn-danger">inactive</span>'
                        !!}
                    </td>
                    <td>
                        <a href="{{ route('user.edit', $user) }}" class="btn btn-sm btn-primary">Edit</a>
                        &nbsp;
                        
                        <a href="" data-url="{{ route('user.destroy', $user) }}" class="btn btn-sm btn-danger action_delete">Delete</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection