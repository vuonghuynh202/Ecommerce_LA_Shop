<nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar" style="z-index: 1;">
    <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
        <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
            <i class="bx bx-menu bx-sm"></i>
        </a>
    </div>

    <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
        <!-- Search -->
        <div class="navbar-nav align-items-center">
            <div class="nav-item d-flex align-items-center search-container">
                <i class="bx bx-search fs-4 lh-0"></i>
                <input type="text" id="search-input" class="form-control border-0 shadow-none" placeholder="Search..." aria-label="Search..." />
                <ul id="search-results"></ul>
            </div>
        </div>
        <!-- /Search -->

        <ul class="navbar-nav flex-row align-items-center ms-auto">
            <li class="nav-item navbar-dropdown dropdown-user dropdown">
                <a class="nav-link dropdown-toggle hide-arrow noti-icon mx-3 px-3" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <i class='bx bx-bell'></i>
                    {!! $notiCount > 0 ? '<span class="badge">' . $notiCount . '</span>' : '' !!}
                </a>
                <ul class="dropdown-menu dropdown-menu-end noti-container">
                    {!! $notiCount == 0 ? '<li class="px-3 py-2">You have no notifications</li>' : '' !!}
                    @foreach($validNotifies as $item)
                    @php
                        $noti = $item['noti'];
                        $created_at = $item['created_at'];
                        $user = $item['user'];
                    @endphp
                    <li class="overflow-hidden">
                        @if($noti->data['type'] == 'review')
                        <a class="dropdown-item noti-item overflow-hidden p-2 px-4" target="_blank" href="{{ route('notification.read', $noti->id) }}#review-tab">
                            <div class="noti-img">
                                <img src="{{ asset($user->image) }}" alt="">
                            </div>
                            <div class="noti-content">
                                <div>{{ $noti->data['message'] }}</div>
                                <span>{{ $created_at }}</span>
                            </div>
                        </a>
                        @elseif($noti->data['type'] == 'order')
                        <a class="dropdown-item noti-item py-2 px-4" href="{{ route('notification.read', $noti->id) }}">
                            <div class="noti-img">
                                <img src="{{ asset($user->image) }}" alt="">
                            </div>
                            <div class="noti-content">
                                <div>{{ $noti->data['message'] }}</div>
                                <span>{{ $created_at }}</span>
                            </div>
                        </a>
                        @endif
                    </li>
                    @endforeach
                </ul>
            </li>

            <!-- User -->
            <li class="nav-item navbar-dropdown dropdown-user dropdown">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                        <img src="{{ asset(auth()->user()->image) }}" alt class="w-px-40 h-auto border rounded-circle" />
                    </div>
                </a>
                <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                        <a class="dropdown-item" href="#">
                            <div class="d-flex">
                                <div class="flex-shrink-0 me-3">
                                    <div class="avatar avatar-online">
                                        <img src="{{ asset(auth()->user()->image) }}" alt class="w-px-40 h-auto rounded-circle" />
                                    </div>
                                </div>
                                <div class="flex-grow-1">
                                    @auth
                                    <span class="fw-semibold d-block">
                                        {{ auth()->user()->name }}
                                    </span>
                                    <small class="text-muted">Admin</small>
                                    @endauth
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <div class="dropdown-divider"></div>
                    </li>
                    <li>
                        <a class="dropdown-item text-center" href="{{ route('home') }}">
                            <i class='bx bxs-shopping-bags'></i>
                            <span class="align-middle">Shopping</span>
                        </a>
                    </li>
                    <li>
                        <div class="dropdown-divider"></div>
                    </li>
                    <li>
                        <a class="dropdown-item" href="">
                            <form method="POST" action="/logout">
                                @csrf
                                <button type="submit" class="btn btn-default">
                                    <i class="bx bx-power-off me-2"></i>
                                    Log Out
                                </button>
                            </form>
                        </a>
                    </li>
                </ul>
            </li>
            <!--/ User -->
        </ul>
    </div>
</nav>