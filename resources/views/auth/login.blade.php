<!doctype html>
<html lang="en">

<head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="{{ asset('loginForm/css/style.css') }}">

</head>

<body>
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-10">
                    <div class="wrap d-md-flex">
                        <div class="img" style="background-image: url({{ asset('loginForm/images/bg-1.jpg') }});">
                        </div>
                        <div class="login-wrap p-4 p-md-5">
                            <div class="d-flex">
                                <div class="w-100">
                                    <h3 class="mb-4">Login</h3>
                                </div>
                            </div>
                            <form action="{{ route('login') }}" method="post" class="signin-form">
                                @csrf
                                <div class="form-group mb-3">
                                    <label for="email" class="col-form-label">Email</label>

                                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                                <div class="form-group mb-4">
                                    <label for="password" class="col-form-label">Password</label>

                                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                    @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>

                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary rounded submit px-3">Login</button>
                                </div>
                                <div class="form-group d-flex">
                                    <div class="w-50 text-left">
                                        <label class="checkbox-wrap checkbox mb-0">Remember Me
											<input type="checkbox" {{ old('remember') ? 'checked' : '' }}>
											<span class="checkmark"></span>
										</label>
                                    </div>
                                    <div class="w-50 text-right">
                                        @if (Route::has('password.request'))
                                        <a class="" href="{{ route('password.request') }}">
                                            Forgot Password?
                                        </a>
                                        @endif
                                    </div>
                                </div>
                            </form>
                            <p class="text-center">Not a member? <a href="{{ route('register') }}">Register</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="{{ asset('loginForm/js/jquery.min.js') }}"></script>
    <script src="{{ asset('loginForm/js/popper.js') }}"></script>
    <script src="{{ asset('loginForm/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('loginForm/js/main.js') }}"></script>

</body>

</html>