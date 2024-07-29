<!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="{{ asset('adminTemplate/assets/vendor/libs/jquery/jquery.js') }}"></script>
    <script src="{{ asset('adminTemplate/assets/vendor/libs/popper/popper.js') }}"></script>
    <script src="{{ asset('adminTemplate/assets/vendor/js/bootstrap.js') }}"></script>
    <script src="{{ asset('adminTemplate/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js') }}"></script>

    <script src="{{ asset('adminTemplate/assets/vendor/js/menu.js') }}"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="{{ asset('adminTemplate/assets/vendor/libs/apex-charts/apexcharts.js') }}"></script>

    <!-- Main JS -->
    <script src="{{ asset('adminTemplate/assets/js/main.js') }}"></script>

    <!-- Page JS -->
    <script src="{{ asset('adminTemplate/assets/js/dashboards-analytics.js') }}"></script>

    <script async defer src="https://buttons.github.io/buttons.js"></script>

    <!-- Datatables -->
    <script src="{{ asset('vendors/dataTables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('vendors/dataTables/dataTables.bootstrap5.min.js') }}"></script>

    <!-- sweetalert -->
    <script src="{{ asset('vendors/sweetAlert2/sweetalert2.js') }}"></script>

    <!-- toast -->
    <script src="{{ asset('clientAssets/notifications/notifications.js') }}"></script>
    
    <script src="{{ asset('adminAssets/list/list.js') }}"></script>
    <script src="{{ asset('adminAssets/main.js') }}"></script>
    <script src="{{ asset('adminAssets/layouts/search.js') }}"></script>

    @yield('js')
