@extends('frontend.layouts.master')
	@section('title')
		<title>Shop | Checkout</title>
	@endsection
	

	@section('content')
	<!-- Breadcrumb Area start -->
    <div class="container-fuild">
        <div class="page-header" style="background-image: url({{asset('images/page-header.png')}})">
            <div class="container">
              <h1 class="page-title">Trang thanh toán</h1>
            </div><!-- End .container -->
        </div>
        <nav aria-label="breadcrumb">
            <div class="container">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{ url('/') }}">Trang chủ</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Thanh toán</li>
                </ol>
            </div>
        </nav>
  
    </div> 
    <!-- Breadcrumb Area End -->
    <section class="pro-content checkout-area">             
        <div class="container"> 
            <div class="row">
                <div class="col-12 col-xl-12">
                    <div class="row">
                        <div class="col-12 col-lg-3">
                            <div class="checkoutd-nav">
                                <ul class="nav flex-column nav-pills mb-3" id="pills-tab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link  active" id="pills-shipping-tab" data-toggle="pill" href="#pills-shipping" role="tab" aria-controls="pills-shipping" aria-selected="true">Thông tin thanh toán</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " id="pills-billing-tab" data-toggle="pill" href="#pills-billing" role="tab" aria-controls="pills-billing" aria-selected="false">Giao hàng đến địa chỉ khác</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " id="pills-method-tab" data-toggle="pill" href="#pills-method" role="tab" aria-controls="pills-method" aria-selected="false">Phương thức vận chuyển</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " id="pills-order-tab" data-toggle="pill" href="#pills-order" role="tab" aria-controls="pills-order" aria-selected="false">Đơn hàng</a>
                                    </li>
                                </ul>
                            </div>             
                        </div>
                        <div class="col-12 col-lg-9">
                            <form method = "post" action="{{url('/checkout')}}" class="form" id="form-checkout">
                                @csrf
                                <div class="checkout-module">
                                    <div class="tab-content" >
                                        <div class="tab-pane fade show active" id="pills-shipping" role="tabpanel" aria-labelledby="pills-shipping-tab">
                                            <h3>Thông tin thanh toán</h3>
                                            
                                            <div class="form-row">
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group ">
                                                        <input type="text" class="form-control" id="billing_name" placeholder="Tên *" required value="{{$userDetails -> name}}" name="billing_name">
                                                    </div>
                                                </div>
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group ">
                                                        <input type="email" class="form-control" id="billing_email" placeholder="Email *" name="billing_email" required value="{{$userDetails -> email}}">                                                        
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-row">
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group"  >
                                                        <input type="text" class="form-control" name="billing_mobile" required value="{{$userDetails -> mobile}}" id="billing_mobile" placeholder="Điện thoại *"/>
                                                        
                                                    </div>
                                                </div>
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group select-control">
                                            
                                                        <select class="form-control" name="billing_city" id="billing_city">
                                                            <option value="0">Chọn thành phố/tỉnh</option>
                                                            @foreach($citys as $city)
                                                            <option 
                                                            value="{{ $city -> name }}" 
                                                            {{ $city->name  == $userDetails -> city ?"selected":""}}>
                                                            {{ $city -> name }}</option>
                                                            @endforeach       
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                                                              
                                            <div class="form-row">
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group"  >
                                                        <input type="text" class="form-control" id="billing_state" name="billing_state" required value="{{$userDetails -> state}}" id="inlineFormInputGroup79" placeholder="Quận">
                                                        
                                                    </div>
                                                </div>
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group"  >
                                                        <input type="text" class="form-control mb-0" name="billing_address" required value="{{$userDetails -> address}}" id="billing_address" placeholder="Địa chỉ">
                                                         
                                                    </div>
                                                </div>
                                            
                                            </div>
                                            <div class="col-12 col-sm-12 justify-content-end btn-cont">
                                                <div class="row">
                                                
                                                    <a data-toggle="pill" href="#pills-billing" class="btn btn-secondary">Tiếp tục</a>
                                                </div>
                                            </div>
                                            
                                        </div>
                                        <div class="tab-pane fade" id="pills-billing" role="tabpanel" aria-labelledby="pills-billing-tab">
                                            <h3>Địa chỉ giao hàng khác </h3> 
                                       
                                            <div class="form-row">
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group ">
                                                        <input  placeholder="Tên" type="text" class="form-control" id="shipping_name" name="shipping_name"  value="{{empty($shipping_details -> name) ?'':$shipping_details -> name}}"  />
                                                        
                                                    </div>
                                                </div>
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group ">
                                                        <input type="email" class="form-control"  name="shipping_email"  value="{{empty($shipping_details -> user_email)?'':$shipping_details -> user_email}}" id="shipping_email" placeholder="Email"/>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group"  >
                                                        <input type="text" class="form-control" name="shipping_mobile" value="{{empty($shipping_details -> mobile)?'':$shipping_details -> mobile}}" id="shipping_mobile" placeholder="Điện thoại"/>
                                                       
                                                    </div>
                                                </div>
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group select-control">
                                                    
                                                        <select class="form-control" name="shipping_city" id="shipping_city">
                                                            <option value="0">Chọn thành phố/tỉnh</option>
                                                            @foreach($citys as $city)
                                                            <option value="{{ $city -> name }}" 
                                                                {{!empty($shipping_details -> city) && ($shipping_details -> city == $city -> name)?'selected':' '}}>
                                                            {{ $city -> name }}
                                                            </option>
                                                            @endforeach       
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                          
                                            <div class="form-row">
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group"  >
                                                        <input type="text" class="form-control" id="shipping_state" name="shipping_state" value="{{!empty($shipping_details -> state) ?$shipping_details -> state:''}}" id="inlineFormInputGroup70" placeholder="Quận">
                                                        
                                                    </div>
                                                </div>
                                                <div class="from-group col-md-6 mb-3">
                                                    <div class="input-group"  >
                                                        <input type="text" class="form-control mb-0" id="shipping_address" name="shipping_address" value="{{!empty($shipping_details -> address) ?$shipping_details -> address:''}}" id="inlineFormInputGroup78" placeholder="Địa chỉ">
                                                        
                                                    </div>
                                                </div>
                                            
                                            </div>
                                            
                                            <div class="row">
                                                <div class="col-12 col-sm-12  justify-content-between btn-cont">
                                                    <div class="form-group">
                                                        <div class="form-check">
                                                          
                                                            <input class="form-check-input" type="checkbox" value="" id="checkme">
                                                            <label class="form-check-label" for="defaultCheck0">
                                                              Giống địa chỉ thanh toán.
                                                            </label>
                                                            <br />
                                                            <input class="form-check-input" type="checkbox" name="different_address">
                                                            <label class="form-check-label" >
                                                              Sử dụng địa chỉ thanh toán này.
                                                            </label>
                                                            
                                                        </div>
                                                    </div>
                                                    <div >
                                                         <a data-toggle="pill" href="#pills-shipping" class="btn btn-light">Quay lại</a>
                                                        <a data-toggle="pill" href="#pills-method" class="btn btn-secondary">Tiếp tục</a>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        
                                        </div>
                                        <div class="tab-pane fade" id="pills-method" role="tabpanel" aria-labelledby="pills-method-tab">
                                            <h3>Phương thức vận chuyển</h3>
                                            <p>Vui lòng chọn phương thức vận chuyển cho đơn hàng của bạn</p>
                                            <div class="row">
                                    
                                                <div class="col-12 col-sm-6 mb-4">
                                                    <h4>Các hình thức giao hàng </h4>
                                                  
                                                    <div class="radio">
                                                    <label><input class="shipping-khala" type="radio" name="shipping_method" value="0" checked > Miễn phí </label>
                                                     </div>

                                                     <div class="radio">
                                                    <label><input class="shipping-khala" type="radio" name="shipping_method" value="50000"> Viettel --- 50.000 đ</label>
                                                     </div>

                                                     <div class="radio">
                                                    <label><input class="shipping-khala" type="radio" name="shipping_method" value="90000"> Giao hàng nhanh --- 90.000 đ</label>
                                                     </div>
                                                  
                                                </div>
                                                
                                            </div>
                                            <div class="row ">
                                                <div class="col-12 col-lg-12 justify-content-end btn-cont">
                                                    <a data-toggle="pill" href="#pills-billing" class="btn btn-light  cta">Quay lại</a>

                                                    <a  data-toggle="pill" href="#pills-order" class="btn btn-secondary  cta">Tiếp tục</a>
                                                </div>
                                              
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="pills-order" role="tabpanel" aria-labelledby="pills-order-tab">
                                            <table class="table top-table">
                                                <tbody>
                                                    <?php $total_amount = 0; ?>
                                                    <!-- product cart -->
                                                    @foreach($userCart as $item)
                                                        <tr class="d-flex">
                                                            <td class="col-12 col-md-2">
                                                                <img class="img-fluid" src="{{ asset('uploads/products-daidien/'.$item -> image) }}" alt="{{$item -> product_name}}">
                                                            </td>
                                                            <td class="col-12 col-md-4">
                                                                <div class="item-detail">
                                                                  
                                                                  <h3>{{$item -> product_name}}
                                                                  </h3>
                                                                  <div class="item-attributes"></div>
                                                                  
                                                                </div>
                                                            </td>
                                                            <td class="col-12 col-md-1 item-price">{{formatMoney($item -> price)}}</td>
                                                            <td class="col-12 col-md-3 justify-content-center" >
                                                                <div class="input-group-control">
                                                                    <input type="text" id="quantity1" name="quantity" class="form-control" value="{{$item -> quantity}}" readonly>                  
                                                                </div>
                                                            </td>
                                                            <td class="col-12 col-md-2 item-total">{{formatMoney($item -> price * $item -> quantity)}}</td>
                                                        </tr>
                                                        <?php $total_amount = $total_amount + ($item -> price * $item -> quantity);?>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                            <div class="row justify-content-end"> 
                                                <div class="col-12">
                                                    <div class="bill-total"> 
                                                        <ul>
                                                            <li>Tổng</li>
                                                            <li>Vận chuyển</li>

                                                            <li>Giảm giá</li>
                                                            <li class="text-danger">Tổng tiền thanh toán</li>
                                                          </ul>
                                                          <ul>
                                                             <li>{{formatMoney($total_amount)}}</li>
                                                           
                                                             <li id="shipping-fee">0 đ</li>
                                                             <li>
                                                                 @if(!empty(Session::get('CouponAmount')))
                                                                    {{formatMoney(Session::get('CouponAmount'))}} 
                                                                @else
                                                                    0 đ
                                                                @endif
                                                             </li>
                                                             <li class="text-danger" id="total-temp" data-value="{{$total_amount - Session::get('CouponAmount')}}">
                                                                
                                                                 {{formatMoney($total_amount - Session::get('CouponAmount'))}}
                                                             </li>
                                                           </ul>
                                                    </div>

                                                </div>

                                            </div>
                                         
                                            <div class="col-12 col-sm-12">
                                                <div class="row">
                                                    <div class="heading">
                                                        <h4>Chú thích đơn hàng</h4>
                                                        
                                                    </div>
                                                  
                                                    <div class="form-group" style="width:100%; padding:0;">
                                                        <label for="exampleFormControlTextarea1">Bạn có chú thích gì vui lòng điền thông tin vào đây</label>
                                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="note"></textarea>
                                                    </div>
                                                </div>
                                                  
                                            </div>
                                           
                                            <div class="col-12 col-sm-12 justify-content-end btn-cont">
                                                <div class="row">
                                                
                                                    <a href="#" class="btn btn-secondary" onclick="document.getElementById('form-checkout').submit(); return false;">Đặt hàng</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                
                                </div>
                                <input type="hidden" name="grand_total" id ="grand_total" value="{{$total_amount - Session::get('CouponAmount')}}">
                                <input type="hidden" name="paymentMethod" value="Sau khi nhận hàng" id="paymentMethod">
                            </form>
                        </div>

                    </div>
                </div>
           
            </div>
        </div>
    </section>
            
            
    <!-- checkout area end -->
	

	@endsection

	
	