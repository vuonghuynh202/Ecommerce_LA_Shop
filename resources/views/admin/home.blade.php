@extends('admin.partials.master')

@section('content')
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

    <!-- total revenue -->
        <div class="col-xl-12 col-md-12 mb-4">
            <div class="card  bg-primary shadow-sm h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2 text-center">
                            <h4 class="text-white mb-3"><b>Total Revenue</b></h4>
                            <h2 class="mb-0 text-white">
                                <i class='bx bx-dollar display-5 mb-1'></i>{{ number_format($total, 2, '.') }}
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Category -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-top border-primary shadow-sm h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Category</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{ count($categories) }}</div>
                        </div>
                        <div class="col-auto">
                            <i class='bx bxs-category-alt display-4'></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Products -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-top border-success shadow-sm h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Products</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{ count($products) }}</div>
                        </div>
                        <div class="col-auto">
                            <i class='bx bxs-cube display-4'></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Order -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-top border-info shadow-sm h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Order</div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">{{ count($orders) }}</div>
                                </div>

                            </div>
                        </div>
                        <div class="col-auto">
                            <i class='bx bxs-receipt display-4'></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Like-->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-top border-danger shadow-sm h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Like</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{ count($wishlist) }}</div>
                        </div>
                        <div class="col-auto">
                            <i class='bx bxs-heart-circle display-4'></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">

        <!-- line chart -->
        <div class="col-xl-12 col-lg-12">
            <div class="card shadow-sm mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Monthly revenue</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div id="lineChart"></div>
                </div>
            </div>
        </div>


        <!-- User registration chart -->
        <div class="col-lg-12 col-md-12">
            <div class="card shadow-sm mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Registered Users (Last 7 Days)</h6>
                </div>
                <div class="card-body">
                    <div id="pieChart"></div>
                </div>
            </div>
        </div>


        <!-- top categories -->
        <div class="col-lg-12 col-md-12">
            <div class="card shadow-sm mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Top Performing Categories</h6>
                </div>
                <div class="card-body">
                    <div id="donutChart"></div>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
@endsection

@section('js')
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // monthly revenue chart
        var options = {
            chart: {
                type: 'line',
                height: 320
            },
            series: [{
                name: 'Revenue',
                data: @json(array_values($monthlyEarnings)) //move the data from Blade to JavaScript
            }],
            xaxis: {
                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
            },
        };
        var chart = new ApexCharts(document.querySelector("#lineChart"), options);
        chart.render();

        // registerd users quantity chart
        var pieChartOptions = {
            chart: {
                type: 'pie',
                height: 320
            },
            series: @json($userRegistrationData['counts']),
            labels: @json($userRegistrationData['dates']),
        };
        var pieChart = new ApexCharts(document.querySelector("#pieChart"), pieChartOptions);
        pieChart.render();


        // top product category sold
        var donutChartOptions = {
            chart: {
                type: 'donut',
                height: 320
            },
            series: @json($topLevelCategories['total_sold']),
            labels: @json($topLevelCategories['categories']),
        };
        var donutChart = new ApexCharts(document.querySelector("#donutChart"), donutChartOptions);
        donutChart.render();
    });
</script>
@endsection