<div class="col-12 col-lg-3">
    <!-- Danh mục sản phẩm -->
    <div class="widget">
        <a class="dropdown-toggle" data-toggle="collapse" href="#collapse-widget-1" role="button" aria-expanded="false" aria-controls="collapse-widget-1">
            Danh mục sản phẩm
        </a>
        <div class="collapse show" id="collapse-widget-1">
            <div class="card card-body">
                <div class="product-category">
                    <!-- danh muc san pham -->
                    <ul class="toggle-menu list-menu">
                        @foreach($categories_share as $index => $item)
                            @if($item -> parent == null) 
                                @if(count($item -> children))
                                    <li class="active toggle-content">
                                        <a href="{{ url('cua-hang?category_id='.$item -> id) }}" class="{{Request::get('category_id') == $item -> id ?'active-khala':''}}">{{$item->title}}<span class="caret"></span></a>
                                        <ul class="sub-menu level-{{$index + 1}}" style="display: none;">
                                            @include('frontend.shop.menu_category',['childs' => $item -> children])
                                        </ul>
                                @else
                                         
                                    <li >
                                        <a href="{{ url('cua-hang?category_id='.$item -> id) }}" class="{{Request::get('category_id') == $item -> id ?'active-khala':''}}">{{$item->title}}</a>
                                   
                                @endif    
                                   
                                    </li>    
                            @endif    
                        @endforeach
                    </ul>
                    <!-- end danh muc san pham -->                      
                </div>
            </div>
        </div> 
    </div>
    <!-- gia -->
    <div class="widget">
        <a class="dropdown-toggle" data-toggle="collapse" href="#collapse-widget-2" role="button" aria-expanded="false" aria-controls="collapse-widget-2">
            Giá sản phẩm
        </a>
        <div class="collapse show" id="collapse-widget-2">
            <div class="card card-body">
                <div class="price-select">
                    <ul class="unorder-list">
                        <li class="list-item">
                         
                            @if(Request::get('brand_filter') || Request::get('category_id') 
                            || (Request::get('brand_filter')&&Request::get('category_id')) 
                            || (Request::get('brand_filter') && Request::get('price')) 
                            || (Request::get('brand_filter') && Request::get('price') && Request::get('category_id'))
                            )
                            <a href="{{url()->current().'?price=1000-500000&brand_filter='.Request::get('brand_filter').'&category_id='.Request::get('category_id')}}" class="list-link {{Request::get('price') == '1000-500000'?'active-khala':''}}">
                                0-500.000 đ
                            </a>
                            @else
                            <a href="{{url()->current().'?price=1000-500000'}}" class="list-link {{Request::get('price') == '1000-500000'?'active-khala':''}}">
                                0-500.000 đ
                            </a>
                            @endif

                        </li>
                        <li class="list-item">
                            @if(Request::get('brand_filter') || Request::get('category_id') 
                            || (Request::get('brand_filter')&&Request::get('category_id')) 
                            || (Request::get('brand_filter') && Request::get('price')) 
                            || (Request::get('brand_filter') && Request::get('price') && Request::get('category_id'))
                            )
                            <a href="{{url()->current().'?price=500000-1000000&brand_filter='.Request::get('brand_filter').'&category_id='.Request::get('category_id')}}" class="list-link {{Request::get('price') == '500000-1000000'?'active-khala':''}}">
                                500.000 - 1.000.000 đ
                            </a>
                            @else
                            <a href="{{url()->current().'?price=500000-1000000'}}" class="list-link {{Request::get('price') == '500000-1000000'?'active-khala':''}}">
                                500.000 - 1.000.000 đ
                            </a>
                            @endif
                        </li>
                        <li class="list-item">
                            @if(Request::get('brand_filter') || Request::get('category_id') 
                            || (Request::get('brand_filter')&&Request::get('category_id')) 
                            || (Request::get('brand_filter') && Request::get('price')) 
                            || (Request::get('brand_filter') && Request::get('price') && Request::get('category_id'))
                            )
                            <a href="{{url()->current().'?price=1000000-2000000&brand_filter='.Request::get('brand_filter').'&category_id='.Request::get('category_id')}}" class="list-link {{Request::get('price') == '1000000-2000000'?'active-khala':''}}">
                                1.000.000 - 2.000.000 đ
                            </a>
                            @else
                            <a href="{{url()->current().'?price=1000000-2000000'}}" class="list-link {{Request::get('price') == '1000000-2000000'?'active-khala':''}}">
                                1.000.000 - 2.000.000 đ
                            </a>
                            @endif

                        </li>
                        <li class="list-item">
                            
                            @if(Request::get('brand_filter') || Request::get('category_id') 
                            || (Request::get('brand_filter')&&Request::get('category_id')) 
                            || (Request::get('brand_filter') && Request::get('price')) 
                            || (Request::get('brand_filter') && Request::get('price') && Request::get('category_id'))
                            )
                            <a href="{{url()->current().'?price=2000000-4000000&brand_filter='.Request::get('brand_filter').'&category_id='.Request::get('category_id')}}" class="list-link {{Request::get('price') == '2000000-4000000'?'active-khala':''}}">
                                2.000.000 - 4.000.000 đ
                            </a>
                            @else
                            <a href="{{url()->current().'?price=2000000-4000000'}}" class="list-link {{Request::get('price') == '2000000-4000000'?'active-khala':''}}">
                                2.000.000 - 4.000.000 đ
                            </a>
                            @endif
                           
                        </li>
                        <li class="list-item">
                            @if(Request::get('brand_filter') || Request::get('category_id') 
                                || (Request::get('brand_filter')&&Request::get('category_id')) 
                                || (Request::get('brand_filter') && Request::get('price')) 
                                || (Request::get('brand_filter') && Request::get('price') && Request::get('category_id'))
                                )
                                <a href="{{url()->current().'?price=4000000-40000000&brand_filter='.Request::get('brand_filter').'&category_id='.Request::get('category_id')}}" class="list-link {{Request::get('price') == '4000000-40000000'?'active-khala':''}}">
                                 Trên 4.000.000 đ
                             </a>
                             @else
                             <a href="{{url()->current().'?price=4000000-40000000'}}" class="list-link {{Request::get('price') == '4000000-40000000'?'active-khala':''}}">
                                 Trên 4.000.000 đ
                             </a>
                             @endif
                             
                         </li>
                    </ul>    
                  
                  </div>
              </div>
            </div>  
    </div>
    <!-- end gia -->
    <!-- nhan hieu -->
    <div class="widget">
        <a class="dropdown-toggle" data-toggle="collapse" href="#collapse-widget-3" role="button" aria-expanded="false" aria-controls="collapse-widget-3">
            Nhãn hiệu
        </a>
        <div class="collapse show" id="collapse-widget-3">
            <div class="card card-body">
                <div class="price-select">
                    <ul class="unorder-list" >
                        
                        @foreach($brands_count as $brand)
                        <li class="list-item">
                         
                            @if(Request::get('price') || Request::get('category_id') 
                                || (Request::get('price')&&Request::get('category_id')) 
                                || (Request::get('brand_filter') && Request::get('price')) 
                                || (Request::get('brand_filter') && Request::get('price') && Request::get('category_id'))
                                )
                                <a href="{{url()->current().'?price='.Request::get('price').'&brand_filter='.$brand -> id.'&category_id='.Request::get('category_id')}}" class="list-link {{Request::get('brand_filter') == $brand -> id?'active-khala':''}}">
                                    {{ $brand -> title}}<span>({{ $brand -> products_count}})</span> 
                                </a>
                                @else
                                <a href="{{url()->current().'?brand_filter='.$brand -> id}}" class="list-link {{Request::get('brand_filter') == $brand -> id?'active-khala':''}}">
                                    {{ $brand -> title}}<span>({{ $brand -> products_count}})</span> 
                                </a>
                                @endif   
                                
                        </li>
                        @endforeach
                            
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- end nhan hieu -->
                
</div>