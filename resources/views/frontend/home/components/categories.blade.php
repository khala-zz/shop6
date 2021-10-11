
<section class="tabs-content pro-content" >
    <div class="container">
        <div class="row ">
            <div class="col-12 col-md-6">
                <div class="pro-heading-title">
                  <h2> Danh mục sản phẩm mới
                  </h2>
                  <p>Các sản phẩm mới theo danh mục 
                  </p>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="nav" role="tablist" id="tabCarousel">
                  @foreach(getParentCategories() as $index => $item)
                  <a class="nav-link btn btn-secondary {{$index == 0 ? 'active show':''}}" data-toggle="tab" href="#{{$item -> title}}" role="tab" {{$index = 0 ? 'aria-selected="true" aria-controls="'.$item -> title.'"':''}}> {{$item -> title}}</a> 
                  @endforeach
                  
          
                </div> 
            </div>
        
        </div>

        <div class="row">
            <div class="col-12 ">
            
                <!-- Tab panes -->
                <div class="tab-content">
                    @foreach(getParentCategories() as $index => $item)
                    <div role="tabpanel" class="tab-pane fade {{$index == 0 ? 'active show':''}}" id="{{$item -> title}}">
                        <div class="tab-carousel-js row">
                            @php $products = getProductsByCat($item -> id) @endphp
                            @if($products -> isNotEmpty())
                              @foreach($products as $product)
                                  <!-- kiem tra xem product co giam gia hay khong? -->
                                  @if(!empty($product -> discount))
                                  @php $product_price = $product -> price  * (100 - $product -> discount)/100; @endphp        
                                  @else
                                  @php $product_price = $product -> price; @endphp
                                  @endif
                                  <div class=" ">
                                    <div class="product">
                                      <article>
                                        <div class="pro-thumb">
                                      
                                          <img class="img-fluid" src="{{asset('uploads/products-daidien/'.$product -> image)}}" alt="{{$product -> title}}">

                                          <div class="badges">
                                            
                                            @if($product -> amount <> 0)
                                                <div class="badge badge-dark">
                                                    Còn hàng
                                                </div>
                                            @else
                                                <div class="badge badge-dark">
                                                    Hết hàng
                                                </div>
                                            @endif
                                            @if(!empty($product -> discount))
                                              <div class="badge badge-danger">
                                                Giảm giá
                                              </div>
                                            @endif
                                            @if($product -> new == 1)
                                              <div class="badge badge-success">
                                                Mới về
                                              </div>
                                            @endif
                                          </div>

                                      <div class="pro-hover-icons">
                                          <div class="icons">
                                            
                                            <button class="btn-light icon btn-add-cart"  value = "{{$product -> id.'khala'.$product -> product_code . 'khala'.$product -> title.'khala'.$product_price}}" url="{{url('add-cart')}}">
                                                <i class="fas fa-shopping-bag"></i>
                                            </button>
                                            <!-- modal quickview
                                            <button class="btn-light icon" data-toggle="modal" data-target="#quickViewModal" >
                                              <i class="fas fa-eye"></i>
                                            </button>
                                            -->
                                          </div>
                                      </div>
                                    </div>
                                    
                                    <div class="pro-info">
                                        <div class="pro-category">
                                            <a href="{{ url('danh-muc-san-pham/'.slugify($item  -> title,'-').'/'.$item -> id) }}">{{$item -> title}} </a>                             
                                        </div>
                                        <h3 ><a href="{{url('/san-pham/'.slugify($product -> title,'-').'/'.$product -> id)}}">{{$product -> title}}</a></h3>
                                        
                                        <div class="pro-price">                     
                                          <!-- hien thi gia -->
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
                                    </div>                   
                                    
              
                                  </article>
                              </div>
                            </div> 
                              @endforeach
                            @endif 
                           
                        

                        </div>
                      <!-- 1st tab --> 
                    </div>
                    @endforeach
                   
                </div>
            </div>
        </div>
    </div>
    
</section>