<!DOCTYPE html>
<html lang="en">

@include('clients.partials.head')

<body>
    <!-- header Start -->
    @include('clients.layouts.header')
    <!-- header End -->


    <!-- Navbar Start -->
    @include('clients.layouts.navbar')
    <!-- Navbar End -->


    @yield('content')


    <!-- Footer Start -->
    @include('clients.layouts.footer')
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    @include('clients.partials.scripts')
</body>

</html>