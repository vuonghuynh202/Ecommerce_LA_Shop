@extends('clients.partials.master')

@section('title')
<title>About LA Shop</title>
@endsection

@section('content')
<div class="container-fluid pb-5">
    <div class="row px-xl-5">
        <div class="col">
            <div class="bg-light p-30">
                {!! $setting->value !!}
            </div>
        </div>
    </div>
</div>
@endsection