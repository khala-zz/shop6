@extends('frontend.layouts.master')
	@section('title')
		<title>{{$category -> title}}</title>
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
                <h1 class="page-title">{{$category -> title}}</h1>
              </div><!-- End .container -->
            </div>
            <nav aria-label="breadcrumb">
              <div class="container">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{$category -> title}}</li>
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
                    @include('frontend.category.filter_shop')

                    <!-- cot phai list product -->
                    @include('frontend.category.right_products_shop')
                  
                    
                </div>
            </div>
        </div>
        <!-- Shop Category Area End -->
	
	

	@endsection

	
	