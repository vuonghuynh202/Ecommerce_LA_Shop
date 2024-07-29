@extends('clients.partials.master')

@section('title')
<title>Contact us</title>
@endsection

@section('content')
<div class="container-fluid pb-5">
    <div class="row px-xl-5">
        <div class="col">
            <div class="bg-light p-30">
                {!! $setting->value !!}

                <b>Mạng Xã Hội:</b>
                <p>
                    Bạn cũng có thể theo dõi chúng tôi trên các mạng xã hội để cập nhật thông tin mới nhất và các chương trình khuyến mãi:
                </p>

                @foreach($socials as $item)
                    @php
                        $url = (strpos($item->value, 'http') === 0) ? $item->value : 'https://' . $item->value;
                    @endphp
                    <div class="mb-2">
                        <span><b>{{ strtoupper($item->key) }}:</b></span>
                        <a href="{{ $url }}" target="_blank">{{ $item->value }}</a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection