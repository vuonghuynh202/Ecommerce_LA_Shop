<div class="container-fluid">
    <div class="row bg-secondary py-1 px-xl-5">
        <div class="col-lg-6 d-none d-lg-block">
            <div class="d-inline-flex align-items-center h-100 social-icon">
                @foreach($socials as $item)
                @if($item->key == 'instagram')
                    @php
                        $url = (strpos($item->value, 'http') === 0) ? $item->value : 'https://' . $item->value;
                    @endphp
                    <a class="text-body mr-4" target="_blank" href="{{ $url }}">
                        <i class="fab fa-instagram"></i>
                    </a>
                @endif
                @if($item->key == 'facebook')
                    @php
                        $url = (strpos($item->value, 'http') === 0) ? $item->value : 'https://' . $item->value;
                    @endphp
                    <a class="text-body mr-4" target="_blank" href="{{ $url }}">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                @endif
                @if($item->key == 'twitter')
                    @php
                        $url = (strpos($item->value, 'http') === 0) ? $item->value : 'https://' . $item->value;
                    @endphp
                    <a class="text-body mr-4" target="_blank" href="{{ $url }}">
                        <i class="fab fa-twitter"></i>
                    </a>
                @endif
                @if($item->key == 'youtube')
                    @php
                        $url = (strpos($item->value, 'http') === 0) ? $item->value : 'https://' . $item->value;
                    @endphp
                    <a class="text-body mr-4" target="_blank" href="{{ $url }}">
                        <i class="fab fa-youtube"></i>
                    </a>
                @endif
                @if($item->key == 'tiktok')
                    @php
                        $url = (strpos($item->value, 'http') === 0) ? $item->value : 'https://' . $item->value;
                    @endphp
                    <a class="text-body mr-4" target="_blank" href="{{ $url }}">
                        <i class="fab fa-tiktok"></i>
                    </a>
                @endif
                @if($item->key == 'whatsapp')
                    @php
                        $url = (strpos($item->value, 'http') === 0) ? $item->value : 'https://' . $item->value;
                    @endphp
                    <a class="text-body mr-4" target="_blank" href="{{ $url }}">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                @endif
                @endforeach
            </div>
        </div>
        <div class="col-lg-6 text-center text-lg-right">
            <div class="d-inline-flex align-items-center">
                @guest
                <a href="{{ route('login') }}" class="btn btn-default">
                    <i class="far fa-user"></i> &nbsp;
                    Login
                </a>|
                <a href="{{ route('register') }}" class="btn btn-default">Register</a>
                @endguest

                @auth
                <div class="btn-group my-2">
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">
                        <i class="far fa-user"></i> &nbsp;
                        {{ auth()->user()->name }}
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <button class="dropdown-item" type="button">
                            <a href="{{ route('profile.index') }}" class="btn btn-default">Profile</a>
                        </button>

                        <a href="" class="dropdown-item" type="button">
                            <form method="POST" action="/logout">
                                @csrf
                                <button type="submit" class="btn btn-default">
                                    Log Out &nbsp;
                                    <i class="fas fa-sign-out-alt"></i>
                                </button>
                            </form>
                        </a>
                    </div>
                </div>
                @endauth
            </div>
            <div class="d-inline-flex align-items-center d-block d-lg-none">
                <a href="{{ route('wishlist.list') }}" class="btn px-0 ml-2">
                    <i class="fas fa-heart text-dark"></i>
                    <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">{{ $wishlistCount }}</span>
                </a>
                <a href="{{ route('cart.list') }}" class="btn px-0 ml-2">
                    <i class="fas fa-shopping-cart text-dark"></i>
                    <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">{{ $cartCount }}</span>
                </a>
            </div>
        </div>
    </div>
    <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
        <div class="col-lg-4">
            <a href="{{ route('home') }}" class="text-decoration-none">
                <span class="h1 text-uppercase text-primary bg-dark px-2">LA</span>
                <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Shop</span>
            </a>
        </div>
        <div class="@auth @if(auth()->user()->role == 1) col-lg-4 @else col-lg-6 @endif @endauth col-6 text-left">
            <form id="search-form" action="{{ route('search') }}" method="get">
                <div class="input-group">
                    <input type="text" id="search-query" name="query" class="form-control" placeholder="Search for products" autocomplete="off">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-outline-none input-group-text bg-transparent text-primary">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <ul id="search-results" class="list-group"></ul>
            </form>
        </div>
        @auth
        @if(auth()->user()->role == 1)
        <div class="col-lg-4 col-6 text-right">
            <a href="{{ route('admin.index') }}" class="btn btn-primary">
                <i class="fas fa-chart-bar"></i> &nbsp;
                Dashboard
            </a>
        </div>
        @endif
        @endauth
    </div>
</div>