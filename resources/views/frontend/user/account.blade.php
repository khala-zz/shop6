@extends('frontend.layouts.master')
@section('title')
<title>Tài khoản</title>
@endsection

@section('content')

<!-- Breadcrumb Area start -->
    
    <div class="container-fuild">
          <div class="page-header" style="background-image: url({{asset('images/page-header.png')}})">
            <div class="container">
              <h1 class="page-title">Tài khoản<span>Quản lý thông tin của bạn</span></h1>
            </div><!-- End .container -->
          </div>
          <nav aria-label="breadcrumb">
            <div class="container">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Tài khoản</li>
                </ol>
            </div>
          </nav>
  
  
      </div> 
    <!-- Breadcrumb Area End -->
    <!-- account area start -->
    <div class="pro-content checkout-area">
             
        <div class="container"> 
            <div class="row">
                <div class="col-12 col-xl-12">
                    <div class="row">
                        <div class="col-12 col-lg-3 ">
                            <div class="checkoutd-nav">
                                <ul class="nav flex-column nav-pills mb-3" id="pills-tab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link  active" id="pills-shipping-tab" data-toggle="pill" 
                                        href="#pills-shipping" role="tab" aria-controls="pills-shipping" 
                                        aria-selected="true">Tài khoản</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " id="pills-billing-tab" data-toggle="pill" 
                                        href="#pills-billing" role="tab" aria-controls="pills-billing" 
                                        aria-selected="false">Đơn hàng</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " id="pills-method-tab" data-toggle="pill" 
                                        href="#pills-method" role="tab" aria-controls="pills-method" 
                                        aria-selected="false">Thông tin địa chỉ</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link " 
                                        href="{{ url('/front-logout') }}" role="tab" aria-controls="pills-order" 
                                        >Đăng xuất</a>
                                    </li>
                                </ul>
                            </div>
                 
                    </div>
                    <div class="col-12 col-lg-9">
                        <div class="checkout-module">
                            <!--hien thi thong bao -->
                            @if(Session::has('flash_message_error'))
                                <div class="alert alert-danger alert-dark alert-round alert-inline">
                                    
                                    {!! session('flash_message_error')!!}
                                    <button type="button" class="btn btn-link btn-close">
                                        <i class="d-icon-times"></i>
                                    </button>
                                </div>
                            @endif

                            @if(Session::has('flash_message_success'))
                                <div class="alert alert-success alert-dark alert-round alert-inline">
                                    <h4 class="alert-title">Thành công :</h4>
                                    {!! session('flash_message_success')!!}
                                    <button type="button" class="btn btn-link btn-close">
                                        <i class="d-icon-times"></i>
                                    </button>
                                </div>
                            @endif
                            <!-- end hien thi thong bao -->           
                        
                            <div class="tab-content" >
                                <div class="tab-pane fade show active" id="pills-shipping" role="tabpanel" aria-labelledby="pills-shipping-tab">
                                   
                                    <!-- Profile Content -->
                                    <section class="profile-content">
                                        <div class="heading-title">
                                            <h2> Thông tin tài khoản
                                            </h2>
                                            <p>Nhập thông tin cần chỉnh sửa,Mật khẩu(Để trống nếu bạn không muốn thay đổi)
                                            </p>
                                        </div>
                                        <form method = "post" action="{{url('change-password')}}" id="form-account" enctype="multipart/form-data">
                                            @csrf
                                            <div class="form-row">
                                                <div class="from-group col-md-12 mb-3">
                                                    <div class="input-group ">
                                                      
                                                      <input type="text" class="form-control" id="inlineFormInputGroup00" placeholder="Tên *" name="name" required value="{{$userDetails -> name}}">
                                                    </div>
                                                    <input type="hidden" name="old_pass" value="{{$userDetails -> password}}">
                                                                        
                                                </div>
                                                <div class="from-group col-md-12 mb-3">
                                                    <div class="input-group ">
                                                      
                                                      <input type="email" class="form-control" id="inlineFormInputGroup1" placeholder="Email*" name="email" required value="{{$userDetails -> email}}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="from-group col-md-12 mb-3">
                                                    <div class="input-group"  >
                                                      
                                                        <input type="password" class="form-control" name="current_password" placeholder="Mật khẩu hiện tại">
                                                        
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div class="form-row">
                                                <div class="from-group col-md-12 mb-3">
                                                    <div class="input-group">
                                                      
                                                       <input type="password" class="form-control" name="new_password" placeholder="Mật khẩu mới">
                                                    </div>
                                                  </div>
                                            </div>
                                        
                                            <div class="form-row">
                                                <div class="from-group col-md-12 mb-3">
                                                    <div class="input-group"  >
                                                        @if(!empty($userDetails->image))
                                                            <img src="{{ url('uploads/users/' . $userDetails->image) }}" width="200" height="180"/>
                                                        @endif
                                                                  
                                                        

                                                    </div>
                                                    <br />
                                                    <input class="form-control" name="image" type="file" id="image" >
                                                </div>
                                              
                                            </div>
                                    
            
                                            <div class="col-12 col-sm-12 justify-content-end btn-cont">
                                                <div class="row">
                                                  
                                                  <a data-toggle="pill" href="#" class="btn btn-secondary" onclick="document.getElementById('form-account').submit();">Cập nhật </a>
                                                </div>
                                            </div>
                                        </form>
                                    </section>
                                </div>
                                <div class="tab-pane fade" id="pills-billing" role="tabpanel" aria-labelledby="pills-billing-tab">
                                  <section class="order-content">
                                        <div class="heading-title">
                                            <h2> Đơn hàng
                                            </h2>
                                            <p>Các đơn hàng bạn đã đặt 
                                            </p>
                                        </div>
                                        @forelse($orders as $index => $order)
                                            
                                            <div class="accordian">
                                                <table class="table top-table order-table">
                                                    <tbody>
                                                      <tr class="d-flex">
                                                        <td class="col-12 col-md-3 first-item">  
                                                            {{$order -> created_at}}
                                                        </td>
                                                        <td class="col-12 col-md-2">{{$order -> ma_order}}</td>
                                                        <td class="col-12 col-md-3">
                                                            <div class="text-secondary">{{$order -> status}}</div>
                                                          </td>
                                                        <td class="col-12 col-md-2">
                                                          {{formatMoney($order -> total_price)}}
                                                        </td>
                                                        <td class="col-12 col-md-2">
                                                            <a class="btn btn-link" data-toggle="collapse" href="#orderDetail-{{$index}}" role="button" aria-expanded="false">
                                                                Chi tiết
                                                              </a>
                                                          </td>
                                                 
                                                      </tr>
                                                      </tbody>
                                                </table>
                                                <div class="collapse" id="orderDetail-{{$index}}">
                                                    <div class="card card-body">
                                                        <section class="orderdetail-content">
                                          
                                                            <div class="row">
                                                                <div class="col-12 col-md-5">
                                                                    <h3>Mã đơn hàng {{$order -> ma_order}}</h3>
                                                                    <table class="table order-id">
                                                                      <tbody>
                                                                          <tr class="d-flex">
                                                                            <td class="col-6 col-md-6"> <strong>Tình trạng đơn hàng</strong> </td>
                                                                            <td class="pending col-6 col-md-6" ><p>{{$order -> status}}</p></td>
                                                                          </tr>
                                                                          <tr class="d-flex">
                                                                              <td class="col-6 col-md-6"><strong>Ngày đặt hàng</strong></td>
                                                                              <td  class="underline col-6 col-md-6" >{{$order -> created_at}}</td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                            
                                                                </div> 
                                                                <div class="col-12 col-md-7"> 
                                                                    <h3>Phương thức thanh toán</h3>
                                                                    <table class="table order-id">
                                                                      <tbody>
                                                                          
                                                                          <tr class="d-flex">
                                                                              <td  class="address col-12 col-md-12">{{$order -> payment_method}}</td>
                                                                              
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                            
                                                                </div>   
                                                            </div>
                                            
                                                            <div class="row">
                                                            
                                                                <div class="col-12 col-md-5">
                                                                    <h3>
                                                                        Địa chỉ giao hàng
                                                                    </h3>
                                                                  
                                                                    <table class="table order-id">
                                                                      <tbody>
                                                                          
                                                                          <tr  class="d-flex">
                                                                            @php $state = $order -> state?' Quận '.$order -> state:' ' @endphp
                                                                              <td class="address col-12">{{$order -> address.' '.$state.' '.$order -> city}}</td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                              
                                                                </div>   
                                                                <div class="col-12 col-md-7">
                                                                        <h3>
                                                                            Địa chỉ thanh toán
                                                                        </h3>
                                                                    
                                                                        <table class="table order-id">
                                                                            <tbody>
                                                                                 @php $state_bill = $order -> user -> state?' Quận '.$order -> user -> state:' ' @endphp
                                                                                <tr  class="d-flex">
                                                                                    <td class="address col-12">{{$order -> user -> address.' '.$state_bill.' '.$order -> user -> city}}</td>
                                                                                  </tr>
                                                                              </tbody>
                                                                        </table>
                                              
                                                                </div> 
                                                            </div>
                                                            @foreach($order -> orders as $pro)                       
                                                                
                                                                
                                                                <table class="table orderdetail-content top-table">
                                                                  <tbody>
                                                                      <tr class="d-flex">
                                                                          <!--<td class="col-12 col-md-2">

                                                                                <img class="img-fluid" src="images/product_images/product_image_1.jpg" alt="Image">
                                                                          </td>-->
                                                                          <td class="col-12 col-md-4">
                                                                              <div class="item-detail">
                                                                                  
                                                                                  <h3>{{$pro -> product_name}}
                                                                                  </h3>
                                                                                  <div class="item-attributes"></div>
                                                                                  
                                                                              </div>
                                                                          </td>
                                                                          <td class="col-12 col-md-1 item-price">{{formatMoney($pro -> product_price)}}</td>
                                                                          <td class="col-12 col-md-3" >
                                                                              <div class="input-group-control">
                                                                                  <input type="text" id="quantity12" name="quantity" class="form-control" value="{{$pro -> product_qty}}" readonly>
                                                                            </div>
                                                                          </td>
                                                                          <td class="col-12 col-md-2 item-total">{{formatMoney($pro -> product_price * $pro -> product_qty)}}</td>
                                                                       
                                                                        
                                                                      </tr>
                                                                      
                                                                  </tbody>
                                                                </table>
                                            
                                                                
                                                            @endforeach      
                                                              
                                                        </section>
                                                    </div>
                                                </div>
                                            </div>
                                        @empty
                                            
                                            <p class=" b-2">Chưa có đơn hàng nào</p>
                                            
                                            <a href="{{url('cua-hang')}}" >Mua sắm</a>
                                                   
                                        @endforelse
                                       
                                       
                                        
                                    </section>
                                </div>
                                <div class="tab-pane fade" id="pills-method" role="tabpanel" aria-labelledby="pills-method-tab">
                                    
                                    <h3 class="">Địa chỉ giao hàng </h3>
                                    
                                    <form method = "post" action="{{url('change-address-ship')}}" id="form-address-ship">
                                        @csrf
                                        <div class="form-row">
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group ">        
                                                    <input type="text" class="form-control" id="inlineFormInputGroup02" placeholder="Tên *" name="name" required value="{{isset($address_ship -> name)?$address_ship -> name:''}}">
                                                </div>
                                            </div>
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group ">
                                                
                                                    <input type="email" class="form-control" id="inlineFormInputGroup15" placeholder="Email *" name="email" required value="{{isset($address_ship -> user_email)?$address_ship -> user_email:''}}">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group"  >
                                                   
                                                                     
                                                    <input type="text" class="form-control" id="inlineFormInputGroup8" placeholder="Điện thoại *" name="mobile" required value="{{isset($address_ship -> mobile)?$address_ship -> mobile:''}}"> 
                                                </div>
                                            </div>
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group ">
                                                      
                                                    <input type="text" class="form-control" id="inlineFormInputGroup3" placeholder="Địa chỉ" name="address" required value="{{isset($address_ship -> address)?$address_ship -> address:''}}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group ">
                                                    
                                                   
                                                    <input type="text" class="form-control" name="state" required value="{{isset($address_ship -> state)?$address_ship -> state:''}}" placeholder="Quận/huyện">
                                                </div>
                                            </div>
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group select-control">
                                                      
                                                    <select class="form-control" name="city">
                                                        <option value="0">Chọn thành phố/tỉnh</option>
                                                        @foreach($citys as $city)
                                                            @if(isset($address_ship -> city))
                                                                <option 
                                                                value="{{ $city -> name }}" 
                                                                {{ $city->name  == $address_ship -> city ?"selected":""}}>
                                                                {{ $city -> name }}
                                                                </option>
                                                            @else
                                                                 <option 
                                                                value="{{ $city -> name }}" 
                                                                >
                                                                {{ $city -> name }}
                                                                </option>
                                                            @endif
                                                        @endforeach       
                                                    </select>

                                                </div>
                                            </div>
                                            
                                        </div>
                                          
                                          
                                      
              
                                        <div class="col-12 col-sm-12 justify-content-end btn-cont">
                                            <div class="row">
                                            
                                                <a data-toggle="pill" href="#pills-billing" class="btn btn-secondary" onclick="document.getElementById('form-address-ship').submit()">Cập nhật</a>
                                            </div>
                                        </div>
                                        <input type="hidden" name="address_id" value="{{isset($address_ship -> id)?$address_ship -> id:''}}">
                                    </form>

                                     <h3 class="">Địa chỉ thanh toán </h3>
                                    
                                    <form method = "post" action="{{url('change-address')}}" id="form-address-bill">
                                        @csrf
                                        <div class="form-row">
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group ">        
                                                    <input type="text" class="form-control" id="inlineFormInputGroup02" placeholder="Tên *" name="name" required value="{{$userDetails -> name}}">
                                                </div>
                                            </div>
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group ">
                                                
                                                    <input type="email" class="form-control" id="inlineFormInputGroup15" placeholder="Email *" name="email" required value="{{$userDetails -> email}}">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group"  >
                                                   
                                                                     
                                                    <input type="text" class="form-control" id="inlineFormInputGroup8" placeholder="Điện thoại *" name="mobile" required value="{{$userDetails -> mobile}}"> 
                                                </div>
                                            </div>
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group ">
                                                      
                                                    <input type="text" class="form-control" id="inlineFormInputGroup3" placeholder="Địa chỉ" name="address" required value="{{$userDetails -> address}}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group ">
                                                    
                                                   
                                                    <input type="text" class="form-control" name="state" required value="{{$userDetails -> state}}" placeholder="Quận/huyện">
                                                </div>
                                            </div>
                                            <div class="from-group col-md-6 mb-3">
                                                <div class="input-group select-control">
                                                      
                                                    <select class="form-control" name="city">
                                                        <option value="0">Chọn thành phố/tỉnh</option>
                                                        @foreach($citys as $city)
                                                            @if(isset($address_ship -> city))
                                                                <option 
                                                                value="{{ $city -> name }}" 
                                                                {{ $city->name  == $userDetails -> city ?"selected":""}}>
                                                                {{ $city -> name }}
                                                                </option>
                                                            @else
                                                                 <option 
                                                                value="{{ $city -> name }}" 
                                                                >
                                                                {{ $city -> name }}
                                                                </option>
                                                            @endif
                                                        @endforeach       
                                                    </select>

                                                </div>
                                            </div>
                                            
                                        </div>
                                          
                                          
                                      
              
                                        <div class="col-12 col-sm-12 justify-content-end btn-cont">
                                            <div class="row">
                                            
                                                <a data-toggle="pill" href="#pills-billing" class="btn btn-secondary" onclick="document.getElementById('form-address-bill').submit()">Cập nhật</a>
                                            </div>
                                        </div>
                                        
                                    </form>

                                </div>
                                <div class="tab-pane fade" id="pills-order" role="tabpanel" aria-labelledby="pills-order-tab">
                           
                                </div>
                            </div>
                        </div>
                    </div>

                  </div>
              </div>
       
          </div>
        </div>
       </div>
            
           
    <!-- account area end -->
@endsection

