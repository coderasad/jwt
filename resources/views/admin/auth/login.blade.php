@extends('admin.admin_layouts')
@section('login_contant')

        <div class="wrapper-page">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center mt-0">                        
                    {{-- @foreach ($db as $data)
                        <a href="" class="logo logo-admin"><img src="../public/frontend/images/logo/{{$data->logo}}" height="20" alt="logo"></a>
                    @endforeach --}}
                    </h3>
                    <h6 class="text-center">Sign In</h6>
                    <div class="p-3">
                        <form method="POST" action="{{ route('login') }}">
                            @csrf
                            <div class="form-group row">
                                <div class="col-12">
                                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="Email">

                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-12">
                                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">

                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-12">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input"  name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                        <label class="custom-control-label" for="remember">
                                            {{ __('Remember Me') }}
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group text-center row m-t-20">
                                <div class="col-12">
                                    <button type="submit" class=" m-b-10 btn btn-primary btn-block waves-effect waves-light">
                                        {{ __('Login') }}
                                    </button>

                                    @if (Route::has('password.request'))
                                        <a class="btn btn-link" href="{{ route('password.request') }}"><i class="mdi mdi-lock"></i>
                                            {{ __('Forgot Your Password?') }}
                                        </a>
                                    @endif
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>    
@endsection
