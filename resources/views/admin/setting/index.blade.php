@extends('admin.partials.master')

@section('title')
<title>Admin | Setting</title>
@endsection

@section('css')
@endsection

@section('content')
@include('admin.toasts')
<div class="card">
    <div class="card-header px-5 pt-5 d-flex justify-content-between align-items-center">
        <h5 class="">Setting list</h5>
        <div class="btn-group">
            <button type="button" class="btn btn-sm btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                Add settings
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="{{ route('setting.create', ['key' => 'social']) }}">Social media</a></li>
                <li>
                    <a class="dropdown-item" 
                    href="{{ $settingExist['about'] ? 
                            route('setting.edit', 'about') : 
                            route('setting.create', ['key' => 'about']) }}">
                        About
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" 
                    href="{{ $settingExist['helps'] ? 
                             route('setting.edit', 'helps') : 
                             route('setting.create', ['key' => 'helps']) }}">
                        Helps
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" 
                    href="{{ $settingExist['contact'] ? 
                             route('setting.edit', 'contact') : 
                             route('setting.create', ['key' => 'contact']) }}">
                        Contact
                    </a>
                </li>
            </ul>

        </div>
    </div>
    <hr class="mt-0">
    <div class="table-responsive px-5 pb-5">
        <table class="table my-table pt-4" id="myTable">
            <thead>
                <tr>
                    <th>Key</th>
                    <th>Value</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody class="table-border-bottom-0">
                @foreach($settings as $item)
                <tr>
                    <td>{{ $item->key }}</td>
                    <td>{{ Str::limit($item->value, 100, '...') }}</td>
                    <td>
                        <a href="{{ route('setting.edit', $item->key) }}" class="btn btn-sm btn-primary my-1">Edit</a>
                        <a href="" data-url="{{ route('setting.destroy', $item->id) }}" class="btn btn-sm btn-danger action_delete">Delete</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection