@extends('frontend.layouts.master')
	@section('title')
		<title>Cửa hàng</title>
	@endsection

	@section('js')
		<script type="text/javascript">
			//dung cho ajax review
		$.ajaxSetup({
		    headers: {
		        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		    }
		});
	</script>
    
	@endsection

	@section('content')
	    <!-- Breadcrumb Area start -->
            
        <div class="container-fuild">
            <div class="page-header" style="background-image: url({{asset('images/page-header.png')}})">
              <div class="container">
                <h1 class="page-title">Khala<span>Cửa hàng</span></h1>
              </div><!-- End .container -->
            </div>
            <nav aria-label="breadcrumb">
              <div class="container">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Cửa hàng</li>
                  </ol>
              </div>
            </nav>
        </div> 
        <!-- Breadcrumb Area End -->
        <!-- Shop Category Area End -->
        <div class="pro-content page-content shop-page shop-page-two">
            <div class="container">
                <div class="row">
                    <!-- filter shop top -->
                    @include('frontend.shop.filter_shop')

                    <!-- cot phai list product -->
                    @include('frontend.shop.right_products_shop')
                  
                    
                </div>
            </div>
        </div>
        <!-- Shop Category Area End -->
		
	
	

	@endsection

	
	