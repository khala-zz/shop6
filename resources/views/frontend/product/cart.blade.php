@extends('frontend.layouts.master')
	@section('title')
		<title>Shop | Giỏ hàng</title>
	@endsection
	
	@section('content')
	    <!-- Breadcrumb Area start -->
       
        <div class="container-fuild">
            <div class="page-header" style="background-image: url({{asset('images/page-header.png')}})">
                <div class="container">
                  <h1 class="page-title">Giỏ hàng</h1>
                </div><!-- End .container -->
            </div>
            <nav aria-label="breadcrumb">
                <div class="container">
                    <ol class="breadcrumb">
                      <li class="breadcrumb-item"><a href="{{ url('/') }}">Trang chủ</a></li>
                      <li class="breadcrumb-item active" aria-current="page">Giỏ hàng</li>
                    </ol>
                </div>
            </nav>
  
        </div> 
        <!-- Breadcrumb Area End -->
        <!-- cart area start -->
        <section class="pro-content cart-content">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12 cart-page-two cart-area">
                        <!--hien thi thong bao -->
                        @if(Session::has('flash_message_error'))
                            <div class="alert alert-dark alert-danger alert-round alert-inline">
                                
                                {!! session('flash_message_error')!!}
                                <button type="button" class="btn btn-link btn-close">
                                    <i class="d-icon-times"></i>
                                </button>
                            </div>
                        @endif

                        @if(Session::has('flash_message_success'))
                            <div class="alert alert-dark alert-success alert-round alert-inline">
                                
                                {!! session('flash_message_success')!!}
                                <button type="button" class="btn btn-link btn-close">
                                    <i class="d-icon-times"></i>
                                </button>
                            </div>
                        @endif
                        <!-- end hien thi thong bao -->
                        <div class="row">
                            <div class="col-12 col-lg-12">
                                <table class="table top-table">
                                    <tbody>
                                        <!-- show du lieu cart -->
                                        <?php 
                                            //khai báo biến tổng để tính tổng
                                            $total_amount = 0;
                                            $cart_id = [];
                                        ?>
                                        @foreach($userCart as $item)
                                            @php $cart_id[] = $item -> id ;@endphp
                                            <tr class="d-flex">
                                                <td class="col-12 col-md-2">
                                                    <img class="img-fluid" src="{{ asset('uploads/products-daidien/'.$item -> image) }}" alt="{{$item -> product_name}}">
                                                </td>
                                                <td class="col-12 col-md-3">
                                                  <div class="item-detail">
                                                      <a href="{{url('/danh-muc-san-pham/'.slugify($item -> cat_title,'-').'/'.$item -> cat_id)}}"><span class="pro-category">{{$item -> cat_title}}</span></a>
                                                      <h3>{{$item -> product_name}}
                                                      </h3>
                                                      <div class="item-attributes"></div>
                                                      
                                                  </div>
                                                </td>
                                                <td class="col-12 col-md-1 item-price">{{formatMoney($item -> price)}}</td>
                                                <td class="col-12 col-md-3 justify-content-center" >
                                                    <div class="input-group-control">
                                  
                                                      
                                                        <input type="text"  name="qtybutton" class="form-control"  value="{{$item -> quantity}}" >
                                                     
                                                        <span class="input-group-btn">
                                                             
                                                            <button type="button" value="quantity" class="quantity-plus btn btn-outline-secondary" data-type="plus" data-field=""  onclick="location.href='{{url('/cart/update-quantity/'.$item -> id.'/1')}}';">
                                                              <i class="fas fa-plus"></i>
                                                            </button>

                                                            <button type="button" value="quantity" class="quantity-minus btn btn-outline-secondary" data-type="minus" data-field="" onclick="location.href='{{url('/cart/update-quantity/'.$item -> id.'/-1')}}';">
                                                            <i class="fas fa-minus"></i>
                                                            </button>
                                                        </span>
                                                      
                                                    
                                                    
                                                    </div>
                                                </td>
                                                <td class="col-12 col-md-1 item-total">{{formatMoney($item -> price * $item -> quantity)}}</td>
                                                <td class="col-12 col-md-2 align-middle">
                                                  <div class="item-control">
                                                      <button type="button"  onclick="location.href='{{url('/cart/delete-product/'.$item -> id)}}';" class="btn btn-outline-secondary" data-type="minus" data-field="">
                                                          <span class="fas fa-times"></span>
                                                      </button>
                                               
                                                  </div>
                                                </td>
                            
                                            </tr>
                                            <!-- tinh tong -->
                                            <?php $total_amount = $total_amount + ($item -> price * $item -> quantity);?>
                                        @endforeach
                                    </tbody>
                                </table>

                  
                            </div>
                            <div class="col-12 col-xl-9 ">
                              
                                <div class=" bottom-table">
                             
                                    <div class="col-12 col-lg-5">
                                    
                                        <div class="input-group ">
                                            <form action="{{ url('/cart/apply-coupon') }}" method="post">
                                                @csrf
                                                <input type="text" class="form-control" placeholder="Nhập mã giảm giá" aria-label="Coupon Code" aria-describedby="coupon-code" name="coupon_code" required>
                                                <div class="input-group-append">
                                                    <button class="btn  btn-secondary form-control"  type="submit" id="coupon-code">Gửi</button>
                                                </div>
                                                
                                                
                                            </form>

                                      
                                        </div>
                                    
                                    </div>
                                    
                                </div>
                                
                              </div>
                            <div class="col-12 col-xl-3">
                                <div class="summery">
                                    <h3>Giỏ hàng</h3>
                                    <table class="table right-table">
                                 
                                        <tbody> 
                                            <tr>
                                                <th >Tổng tiền</th>
                                                <td  class="justify-content-end d-flex"><?php echo formatMoney($total_amount); ?></td>
                                            
                                            </tr>
                                               <!-- kiem tra neu có coupon thi hiện ra -->
                                            @if(!empty(Session::get('CouponAmount')))
                                                <tr>
                                                    <th >Giảm giá</th>
                                                    <td class="justify-content-end d-flex"><?php echo formatMoney(Session::get('CouponAmount')); ?></td>
                                                
                                                </tr>
                                                <tr class="item-price">
                                                    <th>Tổng tiền thanh toán</th>
                                                    <td class="justify-content-end d-flex" ><?php echo formatMoney($total_amount - Session::get('CouponAmount')); ?></td>
                                                
                                                </tr>
                                                
                                            @else
                                                <tr class="item-price">
                                                    <th>Tổng tiền thanh toán</th>
                                                    <td class="justify-content-end d-flex" ><?php echo formatMoney($total_amount); ?></td>
                                                    
                                                </tr>
                                                
                                            @endif
                                          
                                        </tbody>
                                    </table>
                                    <a href="{{ url('/checkout') }}" class="btn btn-secondary col-12 " style="margin-top: 0.625rem;">Thanh toán</a>

                                    <a href="{{ url('cua-hang') }}" class="btn btn-link btn-block">Tiếp tục mua sắm</a>
                                </div>
                             
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
           
        <!-- cart area end -->
	
	

	@endsection

	
	