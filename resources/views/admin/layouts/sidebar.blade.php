<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme" style="z-index: 1;">
    <div class="app-brand demo">
        <a href="{{ route('admin.index') }}" class="app-brand-link">
            <span class="app-brand-logo">
                <i class='bx bx-user-circle'></i>
            </span>
            <span class="app-brand-text demo menu-text fw-bolder ms-2">Admin</span>
        </a>

        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
            <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
    </div>

    <div class="menu-inner-shadow"></div>

    <ul class="menu-inner py-1">
        <li class="menu-header small text-uppercase">
            <span class="menu-header-text">Dashboard</span>
        </li>
        <!-- Dashboard -->
        <li class="menu-item {{ request()->routeIs('admin.index') ? 'active' : '' }}">
            <a href="{{ route('admin.index') }}" class="menu-link menu-link-single">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Analytics">Dashboard</div>
            </a>
        </li>

        <li class="menu-header small text-uppercase">
            <span class="menu-header-text">Shop</span>
        </li>
        <li class="menu-item {{ request()->routeIs('category.*') ? 'active' : '' }}">
            <a href="javascript:void(0)" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-category"></i>
                <div data-i18n="User interface">Categories</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{ route('category.index') }}" class="menu-link menu-link-single">
                        Category list
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{ route('category.create') }}" class="menu-link menu-link-single">
                        Add categories
                    </a>
                </li>
            </ul>
        </li>
        <li class="menu-item {{ request()->routeIs('product.*') ? 'active' : '' }}">
            <a href="javascript:void(0)" class="menu-link menu-toggle">
                <i class='menu-icon tf-icons bx bx-package'></i>
                <div data-i18n="User interface">Products</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{ route('product.index') }}" class="menu-link menu-link-single">
                        Product list
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{ route('product.create') }}" class="menu-link menu-link-single">
                        Add products
                    </a>
                </li>
            </ul>
        </li>
        <li class="menu-item {{ request()->routeIs('slider.*') ? 'active' : '' }}">
            <a href="javascript:void(0)" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="User interface">Sliders</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{ route('slider.index') }}" class="menu-link menu-link-single">
                        Slider list
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{ route('slider.create') }}" class="menu-link menu-link-single">
                        Add sliders
                    </a>
                </li>
            </ul>
        </li>
        <li class="menu-item {{ request()->routeIs('trash.*') ? 'active' : '' }}">
            <a href="{{ route('trash.index') }}" class="menu-link menu-link-single">
                <i class='menu-icon tf-icons bx bx-trash'></i>
                <div data-i18n="Account Settings">Trash</div>
            </a>
        </li>

        <li class="menu-header small text-uppercase">
            <span class="menu-header-text">User</span>
        </li>
        <li class="menu-item {{ request()->routeIs('user.*') ? 'active' : '' }}">
            <a href="javascript:void(0)" class="menu-link menu-toggle">
                <i class='menu-icon tf-icons bx bx-group'></i>
                <div data-i18n="User interface">Users</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{ route('user.index') }}" class="menu-link menu-link-single">
                        User list
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{ route('user.create') }}" class="menu-link menu-link-single">
                        Add users
                    </a>
                </li>
            </ul>
        </li>

        <li class="menu-item {{ request()->routeIs('wishlist.index') ? 'active' : '' }}">
            <a href="{{ route('wishlist.index') }}" class="menu-link menu-link-single">
                <i class='menu-icon tf-icons bx bx-bookmark-heart'></i>
                <div data-i18n="Analytics">Wishlist</div>
            </a>
        </li>

        <li class="menu-item {{ request()->routeIs('cart.index') ? 'active' : '' }}">
            <a href="{{ route('cart.index') }}" class="menu-link menu-link-single">
                <i class='menu-icon tf-icons bx bx-cart'></i>
                <div data-i18n="Analytics">Cart</div>
            </a>
        </li>

        <li class="menu-item {{ request()->routeIs('order.index') ? 'active' : '' }}">
            <a href="{{ route('order.index') }}" class="menu-link menu-link-single">
                <i class='menu-icon tf-icons bx bx-receipt'></i>
                <div data-i18n="Analytics">Orders</div>
            </a>
        </li>

        <li class="menu-item {{ request()->routeIs('review.index') ? 'active' : '' }}">
            <a href="{{ route('review.index') }}" class="menu-link menu-link-single">
                <i class='menu-icon tf-icons bx bx-comment-dots'></i>
                <div data-i18n="Analytics">Reviews</div>
            </a>
        </li>

        <li class="menu-header small text-uppercase">
            <span class="menu-header-text">Setting</span>
        </li>
        <li class="menu-item {{ request()->routeIs('setting.index') ? 'active' : '' }}">
            <a href="{{ route('setting.index') }}" class="menu-link menu-link-single">
                <i class='menu-icon tf-icons bx bx-cog'></i>
                <div data-i18n="Analytics">Settings</div>
            </a>
        </li>

        <li class="menu-header small text-uppercase">
            <span class="menu-header-text">Log Out</span>
        </li>
        <li class="menu-item">
            <form method="POST" action="/logout">
                @csrf
                <button type="submit" class="btn btn-default">
                    <i class="bx bx-power-off me-2"></i>
                    Log Out
                </button>
            </form>
        </li>
    </ul>
</aside>