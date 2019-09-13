@extends('layouts.app')

@section('content')

<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
              <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="p-5">
                            
                            <div class="row text-center">
                                <div class="col align-self-center">
                                    <img src="{{ asset('img/logo.jpg') }}" class="img-fluid" style="width: 200px;">
                                </div>
                            </div>

                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4 mt-5">Welcome Back!</h1>
                                <hr>
                            </div>
                            <form class="user" method="POST" action="{{ route('login') }}">
                                
                                @csrf

                                <div class="form-group">
                                    <input id="email" type="email" class="form-control form-control-user {{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="Email Address" autofocus>

                                    @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                    @endif

                                </div>
                                
                                <div class="form-group">
                                    <input id="password" type="password" class="form-control form-control-user {{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" placeholder="Password">

                                    @if ($errors->has('password'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            
                                <button type="submit" class="btn btn-primary btn-user btn-block">
                                  Login
                                </button>
                            
                            </form>
                        </div>
                    </div>
                </div>
              </div>
            </div>

        </div>

    </div>

  </div>

@endsection
