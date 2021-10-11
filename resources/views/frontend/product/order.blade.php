@extends('frontend.layouts.master')
@section('title')
<title>Shop | Order</title>
@endsection

@section('content')
<section class="pro-content empty-content">
        <div class="container">
            
            <div class="row">
              <div class="col-12">
                  <div class="pro-empty-page">
                    <h2 style="font-size: 150px;"><i class="far fa-check-circle"></i></h2>
                    <h1 >Cám ơn</h1>
                    <p>
                      Đơn hàng của bạn đã được tiếp nhận. Mã đơn hàng là <b>{{Session::get('order_id')}}</b>.
                      Đến trang
                      <a href="{{ url('account') }}" class="btn-link"><b>Tài khoản để xem đơn hàng</b></a>.
                    </p>
                  </div>
              
              </div>
            </div>
          
        </div>  
        
        
    </section>


{{Session::forget('grand_total')}}
{{Session::forget('order_id')}}
<?php 
	//DB::table('cart') -> where('user_email',Auth::user() -> email) ->delete();
DB::table('cart') -> where('session_id',Session::get('session_cart_id')) ->delete();
?>

@endsection


