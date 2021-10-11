<section class="pro-fs-content pro-content">
        
  <div class="container">
      <div class="flashsale-carousel-js row">
        @forelse($products_flash_sale as $index => $product)
          <div class="">
            <div class="row align-items-center">
                    <div class="col-12 col-lg-6">
                      <div class="pro-thumb "> 
                      
                          <a href="product-page1.html">
                              <img class="img-fluid" src="{{asset('uploads/products-daidien/'.$product -> image)}}" alt="{{$product -> title}}">
                          </a>
                        
                        </div>
                  </div>
                  <div class="col-12 col-lg-6">
                      <div class="pro-info">
                          <h2><a href="{{ url('danh-muc-san-pham/'.slugify($product -> category -> title,'-').'/'.$product -> category_id) }}">{{$product -> category -> title}}</a></h2>
                          <h3><a href="{{url('/san-pham/'.slugify($product -> title,'-').'/'.$product -> id)}}">{{$product -> title}}</a></h3>
                          <p>{{$product -> description_short}}
                          </p>
                          <div class="pro-price">
                            <ins>
                              {{formatMoney($product -> price * (100 - $product -> discount)/100) }}
                            </ins>
                            <del>
                              {{formatMoney($product -> price)}}
                            </del>
                          </div>
                          <div class="countdown pro-timer" data-countdown="{{date('Y/m/d',strtotime($product -> discount_end_date))}}">
                              <span class="days" ></span>
                              <span class="hours" ></span>
                              <span class="mintues" ></span>
                              <span class="seconds" ></span>
                          </div>
                          <button type="button" class="btn btn-secondary " onclick="notificationCart();">Add to Cart</button>
                                
                        </div>
                  </div>
            </div>
          </div>
        @empty
          <p>Chưa có sản phẩm giảm giá trong thời gian này</p>
        @endforelse
        
      </div>
  </div>
</section>