@extends('frontend.layouts.master')
	@section('title')
		<title>{{$product -> title}}</title>
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
	<!-- Page Header -->
    <div class="container-fuild">
        <div class="page-header-no-conent" style="background-image: url({{asset('images/page-header.png')}})">
        	
        </div>
        <nav aria-label="breadcrumb">
          <div class="container">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ url('/') }}">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="{{ url('danh-muc-san-pham/'.slugify($product -> category -> title,'-').'/'.$product -> category -> id) }}">{{$product -> category -> title}}</a></li>
                <li class="breadcrumb-item active" aria-current="page"> {{$product -> title}}</li>
              </ol>
          </div>
        </nav>
    </div>
    
    <div class="pro-content page-content product-page product-page-one">
        <div class="container"> 
          	<div class="row">
	            <div class="col-12 col-lg-6">
	                <div class="slider-wrapper">
	                    <div class="slider-for">
	                    	<!-- gallery -->
	                    	@forelse($product -> gallery as $index => $imageGallery)
		                      	<a class="slider-for__item ex1 fancybox-button" href="{{asset('uploads/'.$product->id.'/small/'.$imageGallery -> image)}}" data-fancybox-group="fancybox-button" title="{{$imageGallery -> image}}">
		                        	<img src="{{asset('uploads/'.$product->id.'/small/'.$imageGallery -> image)}}" alt="{{$imageGallery -> image}}" />
		                      	</a>
	                      	@empty
	                    		<p> Chưa có gallery </p>
	                    	@endforelse
	                    	<!-- end gallery -->
	                  
	                      
	                    </div>
	                  
	                    <div class="slider-nav">
	                      	<!-- gallery -->
	                    	@forelse($product -> gallery as $index => $imageGallery)
		                      	<div class="slider-nav__item">
		                        	<img src="{{asset('uploads/'.$product->id.'/small/'.$imageGallery -> image)}}" alt="{{$imageGallery -> image}}"/>
		                      	</div>
	                      	@empty
	                    		<p> Chưa có gallery </p>
	                    	@endforelse
	                    	<!-- end gallery -->
	                  
	                      
	                    </div>
	                 </div>
	            </div>
            
	            <div class="col-12 col-lg-6">
	                <div class="row">
	                    <div class="col-12 col-md-12">
	                    	<!-- form dung de add to cart -->
							<form name = "addToCart" method = "post" action = "{{url('/add-cart')}}">
								@csrf
								<!-- cac input field dể add đến cart -->
								<input type="hidden" name="product_id" value="{{ $product -> id }}">
								<input type="hidden" name="product_name" value="{{ $product -> title }}">
								<input type="hidden" name="product_code" value="{{ $product -> product_code }}">
								<!-- end input field -->

								<!--hien thi thong bao -->
								@if(Session::has('flash_message_error'))
									<div class="alert alert-danger alert-dark alert-round alert-inline">
	                                    
	                                    {!! session('flash_message_error')!!}
	                                    <button type="button" class="btn btn-link btn-close">
	                                        <i class="d-icon-times"></i>
	                                    </button>
	                                </div>
								@endif
								<!-- end hien thi thong bao -->

		                		<div class="badges">
				                   	@if($product -> noi_bat == 1)
		                            <div class="badge badge-info">
		                              Nổi bật
		                            </div>
		                            @endif
		                            @if($product -> new == 1)
		                              <div class="badge badge-success">
		                                Mới về
		                              </div>
		                            @endif
		                            <!-- hien thi giam gia -->
		                            @if(!empty($product -> discount))
		                            <div class="badge badge-danger">
		                              Giảm giá
		                            </div>
		                            @endif
		                            @if($product -> amount <> 0)
			                            <div class="badge badge-dark">
			                                Còn hàng
			                            </div>
			                        @else
			                        	<div class="badge badge-dark">
		                               		Hết hàng
		                            	</div>
		                            @endif
		                		</div>   
		                		<h2 >{{$product -> title}}</h2>
		                
				                <div class="pro-price">
				                	<!-- hien thi gia -->
					                @if(!empty($product -> discount))
					                	<!-- danh cho reset gia ban dau -->
								        <?php $product_price_reset = $product -> price * (100 - $product -> discount)/100; ?>
								        <!-- price xu ly cho form -->
								        <input type="hidden" id = "product_price" name="product_price" value="{{ $product -> price * (100 - $product -> discount)/100 }}">                  
					                    <ins class="new-price">{{formatMoney($product -> price * (100 - $product -> discount)/100) }}</ins>           
					                    <del>{{formatMoney($product -> price)}}</del>
				                    @else
				                    	<!-- danh cho reset gia ban dau -->
								        <?php $product_price_reset = $product -> price; ?>
								        <!-- price xu ly cho form -->
								        <input type="hidden" id = "product_price" name="product_price" value="{{ $product -> price }}">
				                    	<ins class="new-price">{{formatMoney($product -> price)}}</ins> 
				                    @endif
				                    <!-- end hien thi gia -->                        
				                </div>
				                <div class="pro-rating">
				                   <!-- hien thi rating -->
									<?php 
										$avg_rating = 0;
										if($product -> pro_total_rating){
											// tru 1 vi de mac dinh cac cot do la 1 de khong che up len heroku khi de mac dinh la 0
											$total_number = $product -> pro_total_number - 1;
											$total_rating = $product -> pro_total_rating - 1 ;
											if($total_number <> 0 && $total_rating <> 0){
												$avg_rating = round($total_number/$total_rating,2);
											}
											
										}
										
									?>
									<div class="khala-list-star">
										<span class="rating-stars selected">
											@for($i = 1; $i <= 5; $i++)
											<a class="star-{{$i}} {{$i <= $avg_rating ? 'active':''}} ">{{$i}}</a>
											@endfor
											
										</span>
									</div>
									<!-- end hien thi rating -->
				                    <a  class="btn-link"   data-toggle="collapse" data-target="#khala-reviews">{{ $reviews -> count() }} Đánh giá</a>
				                    {{-- <div id="khala-reviews" class="collapse" > tét collapse</div> --}}
				                </div>
				                <div class="pro-info">
				                    <div class="pro-single-info"><b>Mã sản phẩm :</b><span>{{$product -> product_code}}</span></div>
				                    <div class="pro-single-info"><b>Danh mục :</b><span><a href="#">{{$product -> category -> title}}</a></span></div>
				                   
				                    <div class="pro-single-info"><b>Tình trạng :</b>
				                    	@if($product -> amount <> 0)
				                    		<span class="text-secondary">Còn hàng</span>
				                    	@else
				                    		<span class="text-secondary">Hết hàng</span>
				                    	@endif	
				                    </div>
				                    
				                </div>
		               
				                <!-- mau va kich co san pham -->
				                @if($categoryFeatures)
				                    <div class="pro-options">
				                    	@if($check_color == 1)
				                    		<div class="color-option">
							                    <b>Màu sắc : </b>
							                     
						                      	<ul class="product-page">
						                      		
							                        {{-- <li class="active"><a class="green" href="javascript:void(0);"></a></li>
							                        <li ><a class="red" href="javascript:void(0);"></a></li>
							                        <li ><a class="yellow" href="javascript:void(0);"></a></li> --}}
							                    	
							                        @forelse($categoryFeatures as $categoryColorFeature)
							                       
				                                		@if($categoryColorFeature -> field_type == 2)
				                                            <li  data-value ="{{$categoryColorFeature -> field_title}}">
				                                            	<a class="{{$categoryColorFeature -> field_title}} change-color" href="javascript:void(0);" data-value ="{{$categoryColorFeature -> field_title}}"></a>
				                                            </li>
				                                            
				                                        @endif
				                                    @empty
				                                    	Chưa có màu sắc
				                                    @endforelse	 
						                        
						                      	</ul>
							                </div>
				                            
				                        @endif
				                        @if($check_size == 1)
				                        	<div class="size-option">
						                      <b>Kích cỡ : </b>
						                      <ul class="product-page1">
						                       
						                        @forelse($categoryFeatures  as  $categorySizeFeature)
																				
													<!-- kiem tra field_type =1 la ma text de hien thi text cho sp -->
													@if($categorySizeFeature -> field_type == 1)
														<li >
															<a class="size change-price" href="javascript:void(0);" data-url="{{ route('change-price',['value' => $categorySizeFeature -> id]) }}">{{$categorySizeFeature -> field_title}}</a>
														</li>
													
													@endif	
												@empty
												<p>Đang cập nhật</p>	
												@endforelse
						                      </ul>
						                     
						                  	</div>


				                            
				                        @endif
				                    </div>
				                @endif    
				                <!-- mau va kich co san pham -->
				                <!-- tro ve gia ban dau -->
				                
				                <div class="pro-single-info">
				                	<span>
				                		<a href="#" class="text-secondary product-variation-clean change-price" data-url="{{ route('change-price-reset',['value' => $product_price_reset]) }}">Giá ban đầu</a>
				                	</span>
				                </div>

				                <div class="pro-quantiy">
				               
				                  	<div class="input-group-control">

				                      <input type="text" id="quantity" name="product_quantity" class="form-control"  maxlength="2" value="10" size="2">
				                      <span class="input-group-btn">
				                        <button type="button" value="quantity" class="quantity-plus btn btn-outline-secondary" data-type="plus" data-field="">
				                          <i class="fas fa-plus"></i>
				                      </button>
				                      <button type="button" value="quantity" class="quantity-minus btn btn-outline-secondary" data-type="minus" data-field="">
				                        <i class="fas fa-minus"></i>
				                     </button>
				                      </span>
				                      
				                    
				                    
				                	</div>
				                      
				                	<button type="submit" class="btn btn-secondary btn-lg" >Thêm vào giỏ hàng</button> 
				              
				                </div>
		               
				                <div class="pro-social-share">
				                  	<!-- AddToAny BEGIN -->
				                  	<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
				                      <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
				                      <a class="a2a_button_facebook"></a>
				                      <a class="a2a_button_twitter"></a>
				                      <a class="a2a_button_email"></a>
				                    </div>
				                      <script async src="../../static.addtoany.com/menu/page.js"></script>
				                      <!-- AddToAny END -->
				                </div>
				            </form>
			            </div>
	              	</div>
	               
	    
	            </div>
	        </div>
          	<div class="row">
              <div class="col-12 col-md-12 discrption-product">
                <div class="nav nav-pills" role="tablist">
                  <a class="nav-link nav-item  active" href="#description" id="description-tab" data-toggle="pill" role="tab">Mô tả sản phẩm</a> 
                  <a class="nav-link nav-item " href="#additionalInfo" id="additional-info-tab" data-toggle="pill" role="tab" >Thông tin thêm</a> 
                  <a class="nav-link nav-item" href="#review" id="review-tab" data-toggle="pill" role="tab" >Các đánh giá ({{ $reviews -> count() }})</a> 
                </div> 
                <div class="tab-content">
                  <div role="tabpanel" class="tab-pane fade active show" id="description" aria-labelledby="description-tab">
                      {!! $product -> description !!}
                      
                       
                  
                  </div>  
                  <div role="tabpanel" class="tab-pane fade" id="additionalInfo" aria-labelledby="additional-info-tab">
                      {!! $product -> additional !!}
                  </div> 
                  <div role="tabpanel" class="tab-pane fade" id="review" aria-labelledby="review-tab">
                    <div class="reviews" >
                        <div class="review-bubbles">
                            <h2>
                                Khách hàng đánh giá
                            </h2>
                            <br />
                            @if($reviews -> count() > 0)
                        		@foreach($reviews as $review)
                        			<div class="review-bubble-single">
		                                <div class="review-bubble-bg">
		                                  
		                                    
		                                    <h4>{{$review -> user -> name}} <span style="font-size: 12px">{{$review -> created_at}}</span> </h4>
		                                    <div class="khala-list-star">
				                            	<span class="rating-stars selected">
													@for($i = 1; $i <= 5; $i++)
													<a class="star-{{$i}} {{$i <= $review -> rating ? 'active-tab-review':''}} ">{{$i}}</a>
													@endfor
													
												</span>	
				                            </div>
		                                    <p>{{$review -> comment}}</p>
		                                </div>
		                                
		                            </div>
		                            
                            	
                            	@endforeach
                            @else
								<p>Chưa có đánh giá</p>
							@endif
                            
                            
                            
                        </div>
                        <div class="write-review">
                          	
                          <!-- kiem tra dang nhap rui thi cho danh gia san pham -->
                    		@if(Auth::check())
                    			<h2>Đánh giá của bạn:</h2>
                    			<div class="write-review-box">
	                            

	                              	<div class="from-group row mb-3">
	                                  	
	                                  	<div class="pro-rating">
		                                    
	                                  		<span class="rating-stars selected">

											@for($i = 1; $i <= 5; $i++)
												<a class="star-{{$i}} start-a" href="#" data-key = "{{$i}}">{{$i}}</a>
											@endfor
											
											</span>
											<select name="rating" id="rating" required="" style="display: none;">
												<option value="">Rate…</option>
												<option value="5">Tuyệt vời quá</option>
												<option value="4">Rất tốt</option>
												<option value="3">Bình thường</option>
												<option value="2">Tạm được</option>
												<option value="1">Không thích</option>
											</select>

		                                    
	                                      
	                                  	</div>
	                                  	



										
	                              	</div>
	                              
	                              	
	                                <div class="from-group row mb-3">
	                                    <div class="col-12"> <label for="inlineFormInputGroup3">Nội dung</label></div>
	                                    <div class="input-group col-12">
	                                      <input type="hidden"  class="number_rating">
														
	                                      <textarea cols="30" rows="4" class="form-control" id="reply-message" placeholder="Đánh giá của bạn" required></textarea>
	                                    </div>
	                                </div>
	                                <div class="from-group">
	                                    {{-- <button type="button" class="btn btn-secondary swipe-to-top">Gửi đánh giá</button> --}}
	                                    <a href="{{route('post.review.product',$product -> id)}}" class="btn btn-secondary swipe-to-top" id="submit_review">Gửi đánh giá</a>
	                                </div>
	                          </div>
		                        {{-- <div class="ratting-form-wrapper pl-50">	
		                            <div class="ratting-form">
		                                <form action="#">
		                                    <div class="star-box">
		                                        <span>Đánh giá của bạn:</span>
		                                        <span class="rating-stars selected">
													@for($i = 1; $i <= 5; $i++)
													<a class="star-{{$i}} start-a" href="#" data-key = "{{$i}}">{{$i}}</a>
													@endfor
													
												</span>


												<select name="rating" id="rating" required="" style="display: none;">
													<option value="">Rate…</option>
													<option value="5">Tuyệt vời quá</option>
													<option value="4">Rất tốt</option>
													<option value="3">Bình thường</option>
													<option value="2">Tạm được</option>
													<option value="1">Không thích</option>
												</select>
		                                    </div>
		                                    <div class="row">
		                                        
		                                        <div class="col-md-12">
		                                            <div class="rating-form-style form-submit">
		                                               <input type="hidden"  class="number_rating">
														<textarea id="reply-message" cols="30" rows="4"
															class="form-control mb-4" placeholder="Đánh giá của bạn"
															required></textarea>
														
														
														<a href="{{route('post.review.product',$product -> id)}}" class="btn btn-primary btn-md btn-khala" id="submit_review">Gửi<i
																 ></i></a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </form>
		                            </div>
		                        </div> --}}
	                        @else
	                        	<h2>Đăng nhập để thêm đánh giá</h2>
	                        	@if($errors)

			                        {!! $errors->first('email', '<p class="help-block" style="color:red;">:message</p>') !!}
			                        {!! $errors->first('password', '<p class="help-block" style="color:red;">:message</p>') !!}
				                               
				                @endif
				                <form method="post" action="{{ route('front-login') }}"  accept-charset="UTF-8">
				                	@csrf
		                        	<div class="write-review-box">
			                        	<div class="from-group row mb-3">
			                                <div class="col-12">
			                                   <label for="inlineFormInputGroup01">Email</label>
			                               	</div>
			                                <div class="input-group col-12">
			                                  
			                                  <input class="form-control" id="inlineFormInputGroup01" type="email" name="email" placeholder="Email *" value = "{{old('email')}}" required autofocus>

			                                </div>
			                            </div>
		                              	<div class="from-group row mb-3">
			                                <div class="col-12"> <label for="inlineFormInputGroup1">Mật khẩu</label></div>
			                                <div class="input-group col-12">
			                                  
			                                  <input class="form-control" id="inlineFormInputGroup1" type="password"  name = "password" id="password" placeholder="Mật khẩu *" required>
			                                </div>
		                              	</div>
		                              	<div class="from-group">
		                                      <button type="submit" class="btn btn-secondary swipe-to-top">Đăng nhập</button>
		                                    
		                                </div>
		                            </div>
		                        </form>
	                        	
	                        @endif
	                        
                        </div>
                    </div>

                      
                  </div> 
              </div>
          	</div>      
      
        </div>
    </div>
    <!-- san pham lien quan -->
    @include('frontend.product.products_relate')

    <!--
    </div>  
		-->
	
	

	@endsection

	
	