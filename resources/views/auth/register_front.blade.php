@extends('frontend.layouts.master')
@section('title')
<title>Đăng kí</title>
@endsection

@section('content')
<!-- Breadcrumb Area  -->
<div class="container-fuild">
    <div class="page-header" style="background-image: url('images/miscellaneous/page-header.png')">
        <div class="container">
          <h1 class="page-title">Đăng kí</h1>
        </div><!-- End .container -->
    </div>
    <nav aria-label="breadcrumb">
        <div class="container">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
              <li class="breadcrumb-item active" aria-current="page">Đăng kí</li>
            </ol>
        </div>
    </nav>


</div> 
<!-- Breadcrumb Area End -->
<!-- register Content -->
<section class="pro-content account-content">
    <div class="container"> 
        <div class="row">
                
            <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                <h2 >Khách hàng mới</h2>
                <div class="registration-process">
                   
                    <form method="POST" action="{{ route('front-register') }}">
                        @csrf
                        <div class="from-group row mb-3">
                            <div class="input-group col-12">
                              
                                <input type="text" name="name" class="form-control"  placeholder="Tên *" value = "{{old('name')}}" required>
                                {!! $errors->first('name', '<p class="help-block" style="color:red;">:message</p>') !!}
                            </div>
                        </div>
                        <div class="from-group row mb-3">
                            <div class="input-group col-12">
                            
                                <input type="text" name="email" class="form-control" placeholder="Email *" value = "{{old('email')}}" required>
                                {!! $errors->first('email', '<p class="help-block" style="color:red;">:message</p>') !!}
                            
                            </div>
                        </div>
                        <div class="from-group row mb-3">
                            <div class="input-group col-12">
                              
                              <input type="password" name="password" class="form-control" placeholder="Mật khẩu *" required>
                              {!! $errors->first('password', '<p class="help-block" style="color:red;">:message</p>') !!}
                            </div>
                        </div>
                        <div class="from-group row mb-3">
                            <div class="input-group col-12">
                                
                                <input  type="password" name = "password_confirmation" class="form-control"  placeholder="Nhập lại mật khẩu *" required>
                                {!! $errors->first('password_confirmation', '<p class="help-block" style="color:red;">:message</p>') !!}
                            </div>
                        </div>
                        <div class="from-group">
                              <button type = "submit" class="btn btn-primary swipe-to-top">Đăng kí</button>
                            
                        </div>
                    </form>
                  </div>
              </div>
              <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                  <h2>Bạn đã có tài khoản?</h2>
                  
                  <div class="registration-process">
                    <p>Nhấn vào nút sau để tới trang đăng nhập </p>
                    <form>
                        
                          <div class="from-group">
                              <a href="{{ url('front-login') }}" class="btn btn-secondary swipe-to-top">Đăng nhập</a>
                            
                          </div>
                    </form>
                  </div>
              </div>
              
            </div>

        </div>
      </section>




@endsection

