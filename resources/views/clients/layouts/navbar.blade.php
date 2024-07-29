<div class="container-fluid bg-dark mb-30">
    <div class="row px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>Categories</h6>
                <i class="fa fa-angle-down text-dark"></i>
            </a>
            <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                <div class="navbar-nav w-100">
                    <div id="accordion">
                        @foreach ($parentCategories as $category)
                        <div class="card">
                            <div class="card-header" id="heading{{ $category->id }}">
                                <h5 class="mb-0">
                                    <button class="btn btn-link cate-parent" data-toggle="collapse" data-target="#collapse{{ $category->id }}" aria-expanded="true" aria-controls="collapse{{ $category->id }}">
                                        <a href="{{ route('product.category', $category->slug) }}">{{ $category->name }}</a> &nbsp;
                                        <i class="fas fa-chevron-down"></i>
                                    </button>
                                </h5>
                            </div>

                            <div id="collapse{{ $category->id }}" class="collapse" aria-labelledby="heading{{ $category->id }}" data-parent="#accordion">
                                <div class="card-body">
                                    @if ($category->children->isNotEmpty())
                                        @include('clients.partials.subCategory', ['children' => $category->children, 'parent_id' => $category->id])
                                    @endif
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </nav>
        </div>
        <div class="col-lg-9">
            <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none">
                    <span class="h1 text-uppercase text-dark bg-light px-2">Multi</span>
                    <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href="{{ route('home') }}" class="nav-item nav-link {{ request()->is('/') || request()->routeIs('home') ? 'active' : '' }}">Home</a>
                        <a href="{{ route('product.all') }}" class="nav-item nav-link {{ request()->is('products*') || request()->is('category*') ? 'active' : '' }}">Shop</a>
                        <a href="{{ route('about') }}" class="nav-item nav-link {{ request()->routeIs('about') ? 'active' : '' }}">About</a>
                        <a href="{{ route('helps') }}" class="nav-item nav-link {{ request()->routeIs('helps') ? 'active' : '' }}">Helps</a>
                        <a href="{{ route('contact') }}" class="nav-item nav-link {{ request()->routeIs('contact') ? 'active' : '' }}">Contact</a>
                    </div>
                    <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                        <a href="{{ route('wishlist.list') }}" class="btn px-0">
                            <i class="fas fa-heart text-primary"></i>
                            <span id="wishlist-count" class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">{{ $wishlistCount }}</span>
                        </a>
                        <a href="{{ route('cart.list') }}" class="btn px-0 ml-3">
                            <i class="fas fa-shopping-cart text-primary"></i>
                            <span id="cart-count" class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">{{ $cartCount }}</span>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>