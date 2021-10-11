@extends('frontend.layouts.master')
@section('title')
<title>Thành viên</title>
@endsection

@section('content')
<!-- Breadcrumb Area  -->
<div class="container-fuild">
    <div class="page-header" style="background-image: url('images/miscellaneous/page-header.png')">
        <div class="container">
          <h1 class="page-title">Đăng nhập</h1>
        </div><!-- End .container -->
    </div>
    <nav aria-label="breadcrumb">
        <div class="container">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
              <li class="breadcrumb-item active" aria-current="page">Đăng nhập</li>
            </ol>
        </div>
    </nav>


</div> 
<!-- Breadcrumb Area End -->
 <!-- Blog Content -->
<section class="pro-content account-content">
    <div class="container"> 
              
        <div class="row">
            <div class="col-12 col-sm-12 col-lg-6">
                @if($errors)
                    <div class="col-md-12 mb-4">
                       
                        {!! $errors->first('email', '<p class="help-block" style="color:red;">:message</p>') !!}
                        {!! $errors->first('password', '<p class="help-block" style="color:red;">:message</p>') !!}
                    </div>
                @endif
                <h3 class="heading login-heading">Đăng nhập</h3>
                <div class="registration-process">
                        
                    <form method="POST" action="{{ route('front-login') }}">
                        @csrf
                        <div class="from-group mb-3">
                  
                            <div class="input-group col-12">
                          
                              <input type="email" class="form-control"  placeholder="Email*" name ="email" value = "{{old('email')}}" required>
                            </div>
                        </div>
                        <div class="from-group mb-3">
                            
                            <div class="input-group col-12">
                             
                                <input type="password" class="form-control" name = "password"  placeholder="Mật khẩu *" required >
                            </div>
                        </div>
                        <div class="col-12 col-sm-12">
                            <button class="btn btn-secondary">Đăng nhập</button>
                          <a href="change-password.html" class="btn btn-link">Quên mật khẩu</a>
                        </div>
                    </form>
                </div>
                
            </div>
            <!-- dang kí -->      
            <div class="col-12 col-sm-12 col-lg-6">
                <h3 class="heading login-heading"> Khách hàng mới !</h3>
                    <div class="registration-process">
                        <form method="POST" action="{{ route('front-register') }}">
                            @csrf
                            <div class="from-group row mb-3">
                             
                                <div class="input-group col-12">
                                
                                    <input type="text" name="name" class="form-control"  placeholder="Tên *" value = "{{old('name')}}"required >
                                    {!! $errors->first('name', '<p class="help-block" style="color:red;">:message</p>') !!}
                                </div>
                            </div>
                            <div class="from-group row mb-3">
                             
                                <div class="input-group col-12">
                                  
                                  <input type="email" name="email" class="form-control" placeholder="Email *" value = "{{old('email')}}" required >
                                  {!! $errors->first('email', '<p class="help-block" style="color:red;">:message</p>') !!}
                                </div>
                            </div>
                            <div class="from-group row mb-3">
                                
                                <div class="input-group col-12">
                                    
                                    <input type="password" name="password" class="form-control" placeholder="Mật khẩu *" required  >
                                    {!! $errors->first('password', '<p class="help-block" style="color:red;">:message</p>') !!}
                                </div>
                            </div>
                            <div class="from-group row mb-3">
                               
                                <div class="input-group col-12">
                                      
                                      <input type="password" class="form-control" name = "password_confirmation"  placeholder="Nhập lại mật khẩu *" required >
                                      {!! $errors->first('password_confirmation', '<p class="help-block" style="color:red;">:message</p>') !!}
                                </div>
                            </div>
                        <div class="from-group">
                            <button class="btn btn-primary swipe-to-top">Đăng kí </button>
                          
                        </div>
                    </form>
                </div>
                   
            </div>
             
        </div>
    
    </div>
</section>

@endsection

