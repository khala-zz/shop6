<div class="pro-top-sellers pro-content">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-12 col-md-6">
        <div class="pro-heading-title">
          <h2> Sản phẩm bán chạy
          </h2>
          <p>Top sản phẩm bán chạy của cửa hàng 
          </p>
        </div>
      </div>
      <div class="col-12 col-md-6">

      </div>

    </div>
    <div class="row">
      <div class="col-12">
        <div class="top-seller-carousel-js row">
          
          @foreach($products_selling as $product)
            <div class=" ">
              <div class="product product-2x">
                <article>
                  <div class="pro-thumb">
                    <img class="img-fluid" src="{{asset('uploads/products-daidien/top-selling/'.$product -> image)}}" alt="{{$product -> title}}">
                  </div>
                  <div class="pro-info">
                    <div class="pro-over">
                      <h3 >{{$product -> title}}</h3>
                      <div class="pro-price"> 
                        @if(!empty($product -> discount))
                          <ins>{{formatMoney($product -> price * (100 - $product -> discount)/100) }}
                              <del>
                                  {{formatMoney($product -> price) }}     
                                </del> 
                          </ins>
                        @else
                          <ins>{{formatMoney($product -> price) }}
                          </ins>
                        @endif
                      </div>
                      <a href="{{url('/san-pham/'.slugify($product -> title,'-').'/'.$product -> id)}}" class="btn btn-secondary">Chi tiết</a>
                    </div>
                  </div>                   
                </article>
              </div>
            </div>
          @endforeach   
            
         
        </div>
      </div>
    </div>
  </div>
</div>