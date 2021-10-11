@extends('frontend.layouts.master')
	@section('title')
		<title>Trang chủ</title>
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
	    <!-- Revolution Layer Slider -->
        @include('frontend.home.components.slider')

        <!-- END REVOLUTION SLIDER -->
        <!-- hien thi thong bao -->
        @if(Session::has('flash_message_success'))
            <div class="alert alert-success alert-dark alert-round alert-inline">
                <h4 class="alert-title">Thành công :</h4>
                {!! session('flash_message_success')!!}
                <button type="button" class="btn btn-link btn-close">
                    <i class="d-icon-times"></i>
                </button>
            </div>
        @endif
        @if(Session::has('flash_message_error'))
            <div class="alert alert-dark alert-danger alert-round alert-inline">
                
                {!! session('flash_message_error')!!}
                <button type="button" class="btn btn-link btn-close">
                    <i class="d-icon-times"></i>
                </button>
            </div>
        @endif 

        <!-- Banners -->
        @include('frontend.home.components.banner')
        
        <!-- Tabs section -->
        @include('frontend.home.components.categories')
        
      
        <!-- full width banner -->
        <div class="pro-banners-content pro-content">
          
            <div class="fullwidth-banner fullwidth-banner-khala" >
                <div class="col-12 col-lg-6 parallax-banner-text">
                  <!-- <h3 class="sub-title">Special offers</h3>-->
                  <h2>{{ $newsOne -> title }}</h2>
                  <p>

                      {{mb_substr(strip_tags($newsOne->description), 0, 150)}}...</p>

                      <a href="{{ route('new.detail',['slug' => slugify($newsOne -> title,'-'),'id' => $newsOne -> id])}}" class="btn btn-secondary">Xem chi tiết</a>

                </div>
            </div>                                                      
        
        </div> 
        <!-- top seller -->
        @include('frontend.home.components.top_seller')   

        <!-- Flash Sale -->
        @include('frontend.home.components.flash_sale')

        <!-- News -->
        @include('frontend.home.components.blog')

        <!--  brand link -->
        {{-- @include('frontend.home.components.brand') --}}

        <!--  newsletter modal -->
        @include('frontend.home.newsletter')
	
	

	@endsection


