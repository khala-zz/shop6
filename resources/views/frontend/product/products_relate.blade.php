<div class="pro-content">
    <div class="container">
        <div class="row ">
            <div class="col-12 col-md-6">
                <div class="pro-heading-title">
                   <h2> Sản phẩm liên quan
                   </h2>
                   <p>Các sản phẩm cùng danh mục
                   </p>
                </div>
            </div>
        </div>
        <div class="tab-carousel-js row">
            @forelse($products_related as $product)
                <!-- kiem tra xem product co giam gia hay khong? -->
                @if(!empty($product -> discount))
                    @php $product_price = $product -> price * (100 - $product -> discount)/100; @endphp        
                @else
                    @php $product_price = $product -> price; @endphp
                @endif
                <!-- end kiem tra xem product co giam gia hay khong? -->
                <div class="">
                    <div class="product">
                        <article>
                            <div class="pro-thumb">
                              
                              <img class="img-fluid" id="myImage" src="{{asset('uploads/products-daidien/'.$product -> image)}}" alt="{{$product -> title}}">

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

                              <div class="pro-hover-icons">
                                  <div class="icons">
                                     
                                    <button class="btn-light icon btn-add-cart" value = "{{$product -> id.'khala'.$product -> product_code . 'khala'.$product -> title.'khala'.$product_price}}" url="{{url('add-cart')}}">
                                        <i class="fas fa-shopping-bag"></i>
                                    </button>
                                    {{-- <button class="btn-light icon" data-toggle="modal" data-target="#quickViewModal" >
                                      <i class="fas fa-eye"></i>
                                    </button> --}}
                                    
                                  </div>
                              </div>
                            </div>
                  

                            <div class="pro-info">
                                <div class="pro-category">
                                    {{$product -> category -> title}}                             
                                </div>
                                <h3 ><a href="{{url('san-pham/'.slugify($product -> title,'-').'/'.$product -> id)}}">{{$product -> title}}</a></h3>
                                
                                <div class="pro-price">

                                    <!-- hien thi gia -->
                                    @if(!empty($product -> discount))                     
                                  
                                        <ins>{{formatMoney($product -> price * (100 - $product -> discount)/100) }}
                                            <del>
                                              {{formatMoney($product -> price)}}     
                                            </del> 
                                        </ins>
                                    @else
                                        <ins>
                                            {{formatMoney($product -> price)}}     
                                        </ins>
                                    @endif  
                                    <!-- end hien thi gia -->
                                              
                                </div>
                          

                            </div>                   
                

                        </article>
                    </div>
                </div>   
            @empty
                Chưa có sản phẩm liên quan
            @endforelse
            
            
  

        </div>
    </div>  
</div>