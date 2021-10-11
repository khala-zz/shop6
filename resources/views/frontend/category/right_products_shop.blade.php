<div class="col-12 col-lg-9">

    <div class="toolbar">
        <div class="toolbox">
            <div class="toolbox-left">
                            
                <div class="toolbox-info">
                    Hiển thị {{ $products->firstItem() }} đến {{ $products->lastItem() }}
                    của tổng {{$products->total()}} sản phẩm
                    
                </div>
            </div><!-- End .toolbox-left -->
    
            <div class="toolbox-right">
                <div class="toolbox-sort">
                    <label for="sortby">Sắp xếp:</label>
                    <div class="select-control">
                      <form method ="get" action="{{ url() -> current() }}">
                        <select name="orderby" id="sortby" class="form-control" onchange="this.form.submit()">
                          <option  value="title_tang" {{Request::get('orderby') == 'title_tang'?'selected':''}}>A đến Z</option>
                          <option  value="title_giam" {{Request::get('orderby') == 'title_giam'?'selected':''}}> Z đến A</option>
                          <option  value="price_tang" {{Request::get('orderby') == 'price_tang'?'selected':''}}>Giá thấp đến cao</option>
                          <option  value="price_giam" {{Request::get('orderby') == 'price_giam'?'selected':''}}> Giá cao đến thấp</option>
                          <option value="created_at_latest" {{Request::get('orderby') == 'created_at_latest'?'selected':''}}>Mới nhất</option>
                          <option value="created_at_oldest" {{Request::get('orderby') == 'created_at_oldest'?'selected':''}}>Cũ nhất</option>        
                        </select>
                        <!-- gan filter theo nhan hieu và tổng sản phẩm hiện theo trang -->
                        <input type="hidden" name="count" value="{{Request::get('count')?Request::get('count') : 12}}">
                        <input type="hidden" name="brand_filter" value="{{Request::get('brand_filter')?Request::get('brand_filter') : 0}}">
                        <input type="hidden" name="price" value="{{Request::get('price')?Request::get('price') : 0}}">
                        <input type="hidden" name="category_id" value="{{Request::get('category_id')?Request::get('category_id') : 0}}">
                        <!-- end gan filter theo nhan hieu và tổng sản phẩm hiện theo trang -->
                      </form>
                    </div>
                </div><!-- End .toolbox-sort -->
                <div class="toolbox-layout">
                    
                        <a href="{{ url() -> current() }}" style="color:#ef1e1e;">Bỏ lọc</a>

                </div>
            </div><!-- End .toolbox-right -->
        </div>
                    
    </div>
    <div id="swap" class="productbar">
              
        <div class="row"> 
            @forelse($products as $product)
            <!-- kiem tra xem product co giam gia hay khong? -->
            @if(!empty($product -> discount))
            @php $product_price = $product -> price * (100 - $product -> discount)/100; @endphp        
            @else
            @php $product_price = $product -> price; @endphp
            @endif
            <!-- end kiem tra xem product co giam gia hay khong? -->                       
            <div class="col-12 col-md-4">
                <div class="product">
                    <article>
                        <div class="pro-thumb">
                          
                            <img class="img-fluid" src="{{asset('uploads/products-daidien/'.$product -> image)}}" alt="{{$product -> title}}">

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
                            </div>

                            <div class="pro-hover-icons">
                                <div class="icons">
                                 
                                    <button class="btn-light icon btn-add-cart" value = "{{$product -> id.'khala'.$product -> product_code . 'khala'.$product -> title.'khala'.$product_price}}" url="{{url('add-cart')}}">
                                        <i class="fas fa-shopping-bag"></i>
                                    </button>
                                    
                                    
                                </div>
                            </div>
                        </div>
                        
                        <div class="pro-info">
                            <div class="pro-category">
                               <a href="{{url('/danh-muc-san-pham/'.slugify($product -> category -> title,'-').'/'.$product -> category -> id)}}"><span>{{$product -> category -> title}}</span></a>                             
                            </div>
                            <h3 ><a href="{{url('/san-pham/'.slugify($product  -> title,'-').'/'.$product ->  id)}}">{{$product -> title}}</a></h3>
                            
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
                             
                                     
                            </div>
                            {{-- <div class="pro-options">
                                <div class="color-option">
   
                                    <ul class="product1">
                                      <li class="active"><a class="green" href="javascript:void(0);"></a></li>
                                      <li ><a class="red" href="javascript:void(0);"></a></li>
                                      <li ><a class="yellow" href="javascript:void(0);"></a></li>
                                      
                                    </ul>
                                </div>
                                <div class="size-option">
                            
                                    <ul class="product2">
                                      <li class="active"><a class="size-select" href="javascript:void(0);">
                                        XS
                                      </a></li>
                                      <li ><a class="size-select" href="javascript:void(0);">
                                        S
                                      </a></li>
                                      <li ><a class="size-select" href="javascript:void(0);">M</a></li>
                                      
                                    </ul>
                               
                                </div>
                        
                            </div> --}}
                        </div>                   
                        
  
                    </article>
                </div>
            </div>
            @empty
            <p>Chưa có sản phẩm</p>
            @endforelse
                      
        </div>
    </div>

    <nav aria-label="navigation">
          {!! $products -> links() !!}
    </nav>
</div>
            <!--</div>-->