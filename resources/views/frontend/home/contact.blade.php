@extends('frontend.layouts.master')
	@section('title')
		<title>Liên hệ</title>
	@endsection

	@section('content')

        <!-- Breadcrumb Area start -->
           
        <div class="container-fuild">
            <div class="page-header" style="background-image: url({{asset('images/page-header.png')}})">
                <div class="container">
                    <h1 class="page-title">Liên hệ<span>chúng tôi tại đây</span></h1>
                </div><!-- End .container -->
            </div>
            <nav aria-label="breadcrumb">
                <div class="container">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Liên hệ</li>
                  </ol>
                </div>
            </nav>


        </div>      
        <!-- Breadcrumb Area End -->

        <section class="pro-content contact-content">
            <div class="container"> 
                <div class="row">
                  <div class="col-12 col-sm-12">
                    <div class="row">
                        <div class="col-12 col-lg-6">
                            <h2 class="title mb-1">Thông tin liên hệ</h2>
                            <p class="mb-3">Nếu bạn có thắc mắc gì vui lòng liên hệ theo thông tin dưới đây.</p>
                              <div class="row">
                                  <div class="col-sm-6">
                                    <div class="contact-info">
                                      <h3>Văn phòng công ty</h3>
          
                                      <ul class="contact-list">
                                        <li>
                                            <i class="fas fa-map-marker"></i>
                                          346 Mã Lò Phường BTĐ A
                                        </li>
                                        <li>
                                            <i class="fa fa-phone" aria-hidden="true"></i>
                                          <a href="tel:#">+92 423 567</a>
                                        </li>
                                        <li>
                                            <i class="fas fa-envelope"></i>
                                          <a href="mailto:#">dokhaclam@gmail.com</a>
                                        </li>
                                      </ul><!-- End .contact-list -->
                                    </div><!-- End .contact-info -->
                                  </div><!-- End .col-sm-7 -->
          
                                  <div class="col-sm-6">
                                      <div class="contact-info">
                                          <h3>Thời gian</h3>
              
                                          <ul class="contact-list">
                                            <li>
                                                <i class="fas fa-clock"></i>
                                                Thứ 2-Thứ 7<br>
                                                11h sáng-7h tối
                                            </li>
                                            <li>
                                                <i class="fas fa-calendar-week"></i>
                                                Chủ nhật <br>
                                                Nghỉ
                                      
                                          </ul><!-- End .contact-list -->
                                        </div><!-- End .contact-info -->
                                  </div><!-- End .col-sm-5 -->
                                </div>
                            
                        </div> 
                        <div class="col-12 col-lg-6">
                            <div class="form-start">
                                <!-- hien thi thong bao -->
                                @if(Session::has('flash_message_success'))
                                    <div class="alert alert-success alert-dark alert-round alert-inline">
                                        <h4 class="alert-title">Thành công :</h4>
                                        {!! session('flash_message_success')!!}
                                        
                                    </div>
                                @endif
                                <!-- end hien thi thong bao -->
                                <form action="{{route('contact.store')}}" method="post">
                                    @csrf
                                    <label class="first-label">Tên *</label>
                                    <div class="input-group">

                                        <input class="form-control {{ $errors->has('name') ? 'error' : '' }}" id="validationCustomUsername0" name="name" placeholder="Tên*" type="text" required/>
                                        <!-- Error -->
                                        @if ($errors->has('name'))
                                            <div class="invalid-feedback error">
                                                {{ $errors->first('name') }}
                                            </div>
                                        @endif
                                    </div>
                                    <label >Email *</label>
                                    <div class="input-group">
                                  
                                        <input id="validationCustomUsername1" class="form-control {{ $errors->has('email') ? 'error' : '' }}" name="email" placeholder="Email*" type="email" required />
                                        <!-- error -->
                                        @if ($errors->has('email'))
                                            <div class="invalid-feedback error">
                                                {{ $errors->first('email') }}
                                            </div>
                                        @endif
                                    </div>  
                                    <label >Điện thoại *</label>
                                    <div class="input-group">
                                      
                                        <input id="validationCustomUsername2" class="form-control {{ $errors->has('mobile') ? 'error' : '' }}" name="mobile" type="text" placeholder="Điện thoại *" required />
                                        <!-- Error -->
                                        @if ($errors->has('mobile'))
                                            <div class="invalid-feedback error">
                                                {{ $errors->first('mobile') }}
                                            </div>
                                        @endif
                                    </div>  
                                    <label >Nội dung * </label>
                                  
                              
                                    <textarea class="{{ $errors->has('message') ? 'error' : '' }}" required
                                                placeholder="Nội dung *" name="message" rows="5" cols="56"></textarea>
                                                <!-- error -->
                                    @if ($errors->has('message'))
                                        <div class="invalid-feedback error">
                                            {{ $errors->first('message') }}
                                        </div>
                                    @endif
                                  <button type="submit" class="btn btn-secondary swipe-to-top">Gửi yêu cầu <i class="fas fa-location-arrow"></i></button>
                                </form>
                            </div>
                      </div>     
                    </div>
                  </div>
                </div>
            
            </div>      
        </section>
            
	
    @endsection


	