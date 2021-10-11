<!-- //header style One-->
<header id="headerOne" class="header-area header-one header-desktop">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-12 col-lg-2">
                <div class="logo">
                    <a href="index.html" >
                      <img class="img-fluid" src="{{ asset('images/logo.png') }}" alt="logo here">                                           
                    </a>
                </div>
            </div>
            <div class="col-12 col-lg-8">
                <nav class="navbar navbar-expand-lg">
                    <div class="navbar-collapse" >
                      <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="{{ url('/') }}">
                                    Trang chủ
                                </a>
                                
                            </li>
                            <li class="nav-item dropdown">

                              <a class="nav-link dropdown-toggle dropdown-toggle-khala" href="#" >
                                Danh mục sản phẩm
                              </a>
                              
                              <div class="dropdown-menu">
                                <!-- danh muc san pham -->
                                @foreach($categories_share as $index => $item)
                                    @if($item -> parent == null) 
                                        @if(count($item -> children))
                                            <div class="dropdown-submenu">
                                                <a href="{{ url('danh-muc-san-pham/'.slugify($item -> title,'-').'/'.$item -> id) }}" class="dropdown-item">{{$item->title}}</a>
                                                <div class="dropdown-menu khala-menu-3">
                                                    @include('frontend.home.menu_category',['childs' => $item -> children])
                                                </div>
                                        @else
                                                 
                                             <div class="dropdown-submenu">
                                                <a href="{{ url('danh-muc-san-pham/'.slugify($item -> title,'-').'/'.$item -> id) }}" class="dropdown-item">{{$item->title}}</a>
                                           
                                        @endif    
                                           
                                            </div>    
                                    @endif    
                                @endforeach

                              </div>
                            </li>                          
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="{{ url('cua-hang') }}">
                                Cửa hàng
                                </a>
                                
                            </li>
                            
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="{{ url('tin-tuc') }}" >
                                    Tin tức
                                </a>
                                
                            </li>
                            
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="{{ url('tin-tuc/giới-thiệu/5') }}">
                                    Giới-thiệu
                                </a>

                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="{{ url('lien-he') }}">
                                    Liên hệ
                                </a>

                            </li>

                      </ul>
                    </div>
                </nav>
            </div>
            <div class="col-12 col-lg-2 d-flex justify-content-end">
               
                <ul class="pro-header-right-options">
                
                    <li class="dropdown search-field">
                      <button class="btn btn-light dropdown-toggle" type="button" id="dropdownAccountButton31" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-search"></i>
                      </button>
                      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownAccountButton31">
                          <form action="{{route('search.product')}}" method="post">
                            @csrf
                            <div class="search-field-module">
                                <input type="text" class="form-control" name="search_product" id="inlineFormInputGroup01" placeholder="Từ khóa... ">
                                <button class="btn" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                          </form>
                        
                      </div>
                    </li>
                    <li class="dropdown profile-tags">
                      <button class="btn btn-light dropdown-toggle" type="button" id="dropdownAccountButton42" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-user"></i>
                      </button>
                      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownAccountButton42">
                          <!-- link dang nhap,dang ki -->
                            @if(empty(Auth::check()))
                              
                                  <a class="dropdown-item" href="{{ url('/front-login?login=1') }}">Đăng nhập</a>
                              
                                  <a class="dropdown-item" href="{{ url('/front-login?login=0') }}">Đăng kí</a>
                            @else
                              
                                  <a class="dropdown-item" href="{{ url('/my-account') }}">Tài khoản</a>
                              
                                  <a  class="dropdown-item" href="{{ url('/front-logout') }}">Đăng xuất</a>
                            @endif
                          
                      </div>
                    </li>
                    
  
                    <li class="dropdown">
                      <button class="btn btn-light dropdown-toggle" type="button" id="dropdownCartButton16" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
                        <i class="fas fa-shopping-bag"></i>
                        <span class="badge badge-secondary">{{count(getProductCart())}}</span>
                      </button>
                      <!-- hien thi san pham trong gio hang -->
                      @if(count(getProductCart()) > 0) 
                      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownCartButton16">
                          <ul class="shopping-cart-items">
                            <!-- liet ke san pham trong gio hang -->
                            @foreach(getProductCart() as $item)
                            <li>
                              <div class="item-thumb">
                                
                                <div class="image">
                                  <img class="img-fluid" src="{{ asset('uploads/products-daidien/'.$item -> image) }}" alt="{{$item -> product_name}}">
                                </div>
                              </div>
                              <div class="item-detail">
                                  <h3>{{$item -> product_name}}</h3>
                                  <div class="item-s">
                                    {{$item -> quantity}} x {{formatMoney($item -> price)}} 
                                    <a href="{{url('/cart/delete-product/'.$item -> id)}}"><i class="fas fa-trash"></i></a>
                                  </div>
                              </div>
                            </li>
                            @endforeach
                            <li>
                                <span class="item-summary">Tổng&nbsp;:&nbsp;<span>{{formatMoney(getTotalCart())}}</span>
                                </span>
                            </li>
                            <li>
                                <a class="btn btn-link btn-block" href="{{ url('cart') }}">Xem giỏ hàng</a>
                                <a class="btn btn-secondary btn-block" href="{{ url('checkout') }}">Thanh toán</a>
                            </li>
                          </ul>
                          
                        
                      </div>
                      @endif
                    </li>
                    
                </ul>
            </div>
        </div>
    </div>
</header>

<!-- //Sticky Header -->
<header id="stickyHeader" class="header-area header-sticky d-none  bg-sticky-bar" >
    <div class="container">

        <div class="row align-items-center">
          <div class="col-12 col-lg-2">
              <div class="logo">
                  <a href="index.html" >
                    <img class="img-fluid" src="{{ asset('images/logo.png') }}" alt="logo here">                                           
                  </a>
                </div>
          </div>
          <div class="col-12 col-lg-8">
              <nav class="navbar navbar-expand-lg">
                  <div class="navbar-collapse" >
                    <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="{{ url('/') }}">
                                    Trang chủ
                                </a>
                                
                            </li>
                            <li class="nav-item dropdown">

                              <a class="nav-link dropdown-toggle dropdown-toggle-khala" href="#" >
                                Danh mục sản phẩm
                              </a>
                              
                              <div class="dropdown-menu">
                                <!-- danh muc san pham -->
                                @foreach($categories_share as $index => $item)
                                    @if($item -> parent == null) 
                                        @if(count($item -> children))
                                            <div class="dropdown-submenu">
                                                <a href="{{ url('danh-muc-san-pham/'.slugify($item -> title,'-').'/'.$item -> id) }}" class="dropdown-item">{{$item->title}}</a>
                                                <div class="dropdown-menu khala-menu-3">
                                                    @include('frontend.home.menu_category',['childs' => $item -> children])
                                                </div>
                                        @else
                                                 
                                             <div class="dropdown-submenu">
                                                <a href="{{ url('danh-muc-san-pham/'.slugify($item -> title,'-').'/'.$item -> id) }}" class="dropdown-item">{{$item->title}}</a>
                                           
                                        @endif    
                                           
                                            </div>    
                                    @endif    
                                @endforeach
                               

                              </div>
                            </li>                          
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="{{ url('cua-hang') }}">
                                Cửa hàng
                                </a>
                                
                            </li>
                            
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="{{ url('tin-tuc') }}" >
                                    Tin tức
                                </a>
                                
                            </li>
                            
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="{{ url('tin-tuc/giới-thiệu/5') }}">
                                    Giới-thiệu
                                </a>
          
                                
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="{{ url('lien-he') }}">
                                    Liên hệ
                                </a>
          
                                
                            </li>

                            
                      </ul>
                  </div>
                </nav>
          </div>
          <div class="col-12 col-lg-2 d-flex justify-content-end">
            
              <ul class="pro-header-right-options">
              
                <li class="dropdown search-field">
                    <button class="btn btn-light dropdown-toggle" type="button" id="dropdownAccountButton34" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-search"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownAccountButton34">
                       
                        <form action="{{route('search.product')}}" method="post">
                            @csrf
                            <div class="search-field-module">
                                <input type="text" class="form-control" name="search_product" id="inlineFormInputGroup01" placeholder="Từ khóa... ">
                                <button class="btn" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                          </form>
                      
                    </div>
                  </li>
                  <li class="dropdown profile-tags">
                    <button class="btn btn-light dropdown-toggle" type="button" id="dropdownAccountButton45" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownAccountButton45">
                        <!-- link dang nhap,dang ki -->
                            @if(empty(Auth::check()))
                              
                                  <a class="dropdown-item" href="{{ url('/front-login?login=1') }}">Đăng nhập</a>
                              
                                  <a class="dropdown-item" href="{{ url('/front-login?login=0') }}">Đăng kí</a>
                            @else
                              
                                  <a class="dropdown-item" href="{{ url('/my-account') }}">Tài khoản</a>
                              
                                  <a  class="dropdown-item" href="{{ url('/front-logout') }}">Đăng xuất</a>
                            @endif
                      
                    </div>
                  </li>
                  

                  <li class="dropdown">
                    <button class="btn btn-light dropdown-toggle" type="button" id="dropdownCartButton18" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
                      <i class="fas fa-shopping-bag"></i>
                      <span class="badge badge-secondary">{{count(getProductCart())}}</span>
                    </button>
                    <!-- hien thi san pham trong gio hang -->
                    @if(count(getProductCart()) > 0) 
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownCartButton18">
                        <ul class="shopping-cart-items">
                          <!-- liet ke san pham trong gio hang -->
                            @foreach(getProductCart() as $item)
                            <li>
                              <div class="item-thumb">
                                
                                <div class="image">
                                  <img class="img-fluid" src="{{ asset('uploads/products-daidien/'.$item -> image) }}" alt="{{$item -> product_name}}">
                                </div>
                              </div>
                              <div class="item-detail">
                                  <h3>{{$item -> product_name}}</h3>
                                  <div class="item-s">
                                    {{$item -> quantity}} x {{formatMoney($item -> price)}} 
                                    <a href="{{url('/cart/delete-product/'.$item -> id)}}"><i class="fas fa-trash"></i></a>
                                  </div>
                              </div>
                            </li>
                            @endforeach
                            <li>
                                <span class="item-summary">Tổng&nbsp;:&nbsp;<span>{{formatMoney(getTotalCart())}}</span>
                                </span>
                            </li>
                            <li>
                                <a class="btn btn-link btn-block" href="{{ url('cart') }}">Xem giỏ hàng</a>
                                <a class="btn btn-secondary btn-block" href="{{ url('checkout') }}">Thanh toán</a>
                            </li>
                          </ul>
                        
                      
                    </div>
                    @endif
                  </li>
              </ul>
          </div>
      </div>
    </div>
</header>
<!-- //Mobile Header -->
<header id="headerMobile" class="header-area header-mobile">

    <div class="header-maxi bg-header-bar ">
        <div class="container">
        
      <div class="row align-items-center">
        <div class="col-6 pr-0 flex-col">
          <div class="navigation-mobile-container">
            <a href="javascript:void(0)" class="navigation-mobile-toggler">
                <span class="fas fa-bars"></span>
            </a>
            <nav id="navigation-mobile">
                <div class="logout-main">
                    <div class="welcome">
                      @if(empty(Auth::check()))
                        <span>Chào mừng&nbsp;khách !</span>
                        
                      @else
                        <span>Chào mừng&nbsp; {{Auth::user()->name}}</span>
                      @endif  
                    </div>
                </div> 

                <a class="main-manu btn"  href="{{ url('/') }}" role="button" 
                >
                    Trang chủ
                  
                </a>
                <!-- danh mục sản phẩm -->
                <a class=" main-manu btn" data-toggle="collapse" href="#staticpages" role="button" aria-expanded="false" aria-controls="staticpages">
                    Danh mục sản phẩm
                  
                </a>
                <div class="sub-manu collapse multi-collapse" id="staticpages">
                  
                  <ul class="unorder-list">
                      <li class="">

                        @foreach($categories_share as $index => $item)
                            @if($item -> parent == null) 
                                @if(count($item -> children))
                                     <a class="main-manu btn " data-toggle="collapse" href="#khala-mobile-menu-{{$index}}" role="button" aria-expanded="false" aria-controls="khala-mobile-menu-{{$index}}">
                                          {{$item->title}}
                                      </a>
                                      <div class="sub-manu1 collapse multi-collapse" id="khala-mobile-menu-{{$index}}">
                                        <ul class="unorder-list">
                                            <li class="">
                                              
                                              @include('frontend.home.mobile_menu_category',['childs' => $item -> children])
                                            </li>
                                        </ul>    
                                      </div> 
                                    
                                       
                                @else
                                         
                                    <a class="main-manu btn "  role="button" href="{{ url('danh-muc-san-pham/'.slugify($item -> title,'-').'/'.$item -> id) }}">
                                        {{$item->title}} 
                                    </a>
                                        
                                   
                                @endif    
                                   
                                        
                            @endif    
                        @endforeach

                      </li>
                  </ul>    
                </div> 
                <!-- end danh mục sản phẩm -->   

                <a class="main-manu btn"  href="{{ url('cua-hang') }}" role="button" >
                    Cửa hàng
              
                </a>
                 

                <a class=" main-manu btn"  href="{{ url('tin-tuc') }}" role="button" >
                  Tin tức
                
                </a>
                <a class=" main-manu btn"  href="{{ url('tin-tuc/giới-thiệu/5') }}" role="button" >
                  Giới thiệu
                
                </a>
                <a class=" main-manu btn"  href="{{ url('lien-he') }}" role="button" >
                  Liên hệ
                
                </a>

                <!-- link dang nhap,dang ki -->
                @if(empty(Auth::check()))
                  
                      <a class="dropdown-item" href="{{ url('/front-login?login=1') }}">Đăng nhập</a>
                  
                      <a class="dropdown-item" href="{{ url('/front-login?login=0') }}">Đăng kí</a>
                @else
                  
                      <a class="dropdown-item" href="{{ url('/my-account') }}">Tài khoản</a>
                  
                      <a  class="dropdown-item" href="{{ url('/front-logout') }}">Đăng xuất</a>
                @endif
            </nav>
        </div>
        <a href="index.html" class="logo">
            <img class="img-fluid" src="{{ asset('images/logo.png') }}" alt="logo here">                                            
          </a>
        </div>
        <div class="col-6 pl-0">
          <ul class="pro-header-right-options">
          <li class="dropdown">
            <button class="btn btn-light dropdown-toggle" type="button" id="dropdownCartButton2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
              <i class="fas fa-shopping-bag"></i>
              <span class="badge badge-secondary">{{count(getProductCart())}}</span>
            </button>
            <!-- hien thi san pham trong gio hang -->
            @if(count(getProductCart()) > 0)  
            <div class="dropdown-menu" aria-labelledby="dropdownCartButton2">
                <ul class="shopping-cart-items">
                  <!-- liet ke san pham trong gio hang -->
                  @foreach(getProductCart() as $item)
                  <li>
                    <div class="item-thumb">
                      
                      <div class="image">
                        <img class="img-fluid" src="{{ asset('uploads/products-daidien/'.$item -> image) }}" alt="{{$item -> product_name}}">
                      </div>
                    </div>
                    <div class="item-detail">
                        <h3>{{$item -> product_name}}</h3>
                        <div class="item-s">
                          {{$item -> quantity}} x {{formatMoney($item -> price)}} 
                          <a href="{{url('/cart/delete-product/'.$item -> id)}}"><i class="fas fa-trash"></i></a>
                        </div>
                    </div>
                  </li>
                  @endforeach
                  <li>
                      <span class="item-summary">Tổng&nbsp;:&nbsp;<span>{{formatMoney(getTotalCart())}}</span>
                      </span>
                  </li>
                  <li>
                      <a class="btn btn-link btn-block" href="{{ url('cart') }}">Xem giỏ hàng</a>
                      <a class="btn btn-secondary btn-block" href="{{ url('checkout') }}">Thanh toán</a>
                  </li>
                </ul>

            </div>
            @endif
          </li>
        </ul>
      </div>
      </div>
    </div>
  </div> 
  <div class="header-navbar bg-menu-bar">
    <div class="container">
      
      <form class="form-inline" action="{{route('search.product')}}" method="post">
        @csrf
          <div class="search-field-module">                           
            
              <div class="search-field-wrap">
                  <input  type="search" name="search_product" placeholder="Từ khóa..." data-toggle="tooltip" data-placement="bottom" title="search item">
                  <button class="btn btn-secondary swipe-to-top" data-toggle="tooltip" data-placement="bottom" title="Tìm kiếm" type="submit">
                  <i class="fa fa-search"></i></button>
              </div>
            </div>
      </form>
    </div>
  </div>
</header>  