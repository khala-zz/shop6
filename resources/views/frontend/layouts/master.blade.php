<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="UTF-8">
    @yield('title')
    <meta name="description" content="khala chuyen shop online">
    <meta name="keywords" content="HTML,CSS,XML,JavaScript">
    <meta name="author" content="">
      
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <!-- dung cho ajax token -->
    <meta name="csrf-token" content="{{ csrf_token() }}" /> 
    <link rel="icon" type="image/png" href="images/miscellaneous/fav.png">
  
    <!-- Fontawesome CSS Files -->
    <link rel="stylesheet" href="{{ asset('css/fontawesome/all.css')}}" >
  
    <!-- Core CSS Files -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
      
    <!-- Slider Revolution CSS Files -->
    <link rel="stylesheet" type="text/css" href="{{ asset('css/revolution/css/settings.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/revolution/css/layers.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/revolution/css/navigation.css')}}">

    <link href="{{ asset('css/khala.css') }}" rel="stylesheet">

    @yield('css')
</head>
<body>
    <!-- Paste this code after body tag -->
    <div class="se-pre-con">
        <div class="pre-loader">
            <div class="">
                <header class="header-area header-one header-desktop "> 
                    <div class="container">          
                        <div class="row align-items-center">
                            <div class="col-12 col-lg-2">
                                <div class="logo">
                                    <a href="#" >
                                      <img class="img-fluid" src="images/logo/logo2.png" alt="logo here">                                           
                                    </a>
                                </div>
                            </div>
                            <div class="col-12 col-lg-5">
                                <nav class="navbar navbar-expand-lg">
                                    <div class="navbar-collapse" >
                                        <ul class="navbar-nav">
                                            <li class="nav-item dropdown">
                                              <a class="nav-link dropdown-toggle" href="{{ url('/') }}">
                                                Trang chủ
                                              </a>
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
                                              <a class="nav-link dropdown-toggle" href="{{ url('tin-tuc') }}" >
                                                Giới thiệu
                                              </a>
                                            </li>
                                            <li class="nav-item dropdown">
                                              <a class="nav-link dropdown-toggle" href="{{ url('lien-he') }}" >
                                                Liên hệ
                                              </a>
                                            </li>
                                      </ul>
                                    </div>
                                </nav>
                            </div>
                            <div class="col-12 col-lg-5 d-flex justify-content-end">
                                
                                <ul class="pro-header-right-options">
                                 
                                    <li class="dropdown search-field">
                                          <button class="btn btn-light dropdown-toggle" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                              <i class="fas fa-search"></i>
                                          </button>
                                    </li>
                                    <li class="dropdown profile-tags">
                                      <button class="btn btn-light dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fas fa-user"></i>
                                      </button>
                                    </li>
                                    
                                    <li class="dropdown">
                                      <button class="btn btn-light dropdown-toggle" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
                                        <i class="fas fa-shopping-bag"></i>
                                        <span class="badge badge-secondary">2</span>
                                      </button> 
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </header>
                <header class="header-area header-mobile">

                    <div class="header-maxi bg-header-bar ">
                        <div class="container">
                          
                            <div class="row align-items-center">
                                <div class="col-6 pr-0 flex-col">
                                    <div class="navigation-mobile-container">
                                        <a href="#" class="navigation-mobile-">
                                          <span class="fas fa-bars"></span>
                                        </a>

                                    </div>
                                    <a href="#" class="logo">
                                      <img class="img-fluid" src="images/logo/logo2.png" alt="logo here">                                            
                                    </a>
                                </div>
            
                                <div class="col-6 pl-0">
                                    <ul class="pro-header-right-options">
                      
                                        <li>
                                          <a href="#" class="btn  btn-light" >
                                              <i class="far fa-heart"></i>
                                              <span class="badge badge-secondary">0</span>
                                          </a>
                                        </li>
                        
                                        <li class="dropdown">
                                          <button class="btn btn-light dropdown-toggle"> 
                                            <i class="fas fa-shopping-bag"></i>
                                            <span class="badge badge-secondary">2</span>
                                          </button> 
                                    
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="header-navbar bg-menu-bar">
                        <div class="container">
                            <form class="form-inline">
                                <div class="search-field-module">                           
                                  
                                    <div class="search-field-wrap">
                                        <input  type="search" placeholder="Search Products..."  readonly>
                                        <button class="btn btn-secondary swipe-to-top" >
                                        <i class="fa fa-search"></i></button>
                                    </div>
                                  </div>
                            </form>
                        </div>
                    </div>
                </header>  
                <div class="home-slider">
                    <div class="home  skeleton-box"></div>
                </div>
                <section class="banners-content pro-content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12 col-lg-4">
                                <figure class="banner-image">
                                  <div class="pro-thumb skeleton-box"></div>
              
                                  <div class="banner-caption right-caption">
                                    <p class="skeleton-box"></p>
                                    <h3 class="skeleton-box"> </h3>
                                    <a href="#" class="btn skeleton-box"> </a>
                                  </div>
                                  
                                </figure>
                            </div>
                            <div class="col-12 col-lg-4">
                                <figure class="banner-image right">
                              
              
                                  <div class="banner-caption left-caption">
                                    <p class="skeleton-box"></p>
                                    <h3 class="skeleton-box"> </h3>
                                    <a href="#" class="btn skeleton-box"> </a>
                                  </div>
                                  <div class="pro-thumb skeleton-box"></div>
                                  
                                </figure>
                            </div>
                            <div class="col-12 col-lg-4">
                                <figure class="banner-image">
                                  <div class="pro-thumb skeleton-box"></div>
              
                                  <div class="banner-caption right-caption">
                                    <p class="skeleton-box"></p>
                                    <h3 class="skeleton-box"> </h3>
                                    <a href="#" class="btn skeleton-box"> </a>
                                  </div>
                                  
                                </figure>
                            </div>
                        </div>
               
                    </div>
                </section>
                <section class="tabs-content pro-content">
                    <div class="container">
                        <div class="row ">
                            <div class="col-12 col-md-6">
                              <div class="pro-heading-title">
                                 <h2 class="mb-2 skeleton-box">
                                 </h2>
                                 <p class="skeleton-box"> 
                                 </p>
                               </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="nav" role="tablist">
                                  <a class="nav-link btn skeleton-box" > </a> 
                
                                  <a class="nav-link btn skeleton-box" ></a> 
                                
                                  
                                  <a class="nav-link btn skeleton-box" ></a> 
                          
                                </div> 
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-sm-6 col-md-4  col-lg-3">
                                <div class="product skeleton-box">
                                    <article>
                                        <div class="" s="pro-thumb">
                                        </div>
                                        <div class="pro-info ">
                                            <div class="pro-category">
                                                                          
                                            </div>
                                            <h3></h3>
                                
                                            <div class="pro-price bg-no">                     
                                              
                                              <ins>
                                                  <del>
                                                           
                                                    </del> 
                                              </ins>  
                                             
                                              <button class="btn-light icon " onclick="notificationWishlist();" tabindex="0">
                                             
                                                </button>            
                                            </div>
                          
                                        </div>
                                    </article>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-4 col-lg-3 d-sm-block d-none">
                                <div class="product skeleton-box">
                                    <article>
                                        <div class="pro-thumb">
                                        </div>
                                        <div class="pro-info ">
                                            <div class="pro-category">
                                                                      
                                            </div>
                                            <h3></h3>
                                            
                                            <div class="pro-price bg-no">                     
                                          
                                              <ins>
                                                  <del>
                                                           
                                                    </del> 
                                              </ins>  
                                             
                                              <button class="btn-light icon " onclick="notificationWishlist();" tabindex="0">
                                             
                                                </button>            
                                            </div>
                                  

                                        </div>
                                    </article>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-4 col-lg-3 d-md-block d-none">
                                <div class="product skeleton-box">
                                    <article>
                                        <div class="pro-thumb">
                                        </div>
                                        <div class="pro-info ">
                                            <div class="pro-category">
                                                                  
                                            </div>
                                            <h3></h3>
                                    
                                                <div class="pro-price bg-no">                     
                                              
                                                  <ins>
                                                      <del>
                                                               
                                                        </del> 
                                                  </ins>  
                                                 
                                                  <button class="btn-light icon " onclick="notificationWishlist();" tabindex="0">
                                                 
                                                    </button>            
                                                </div>
                                      
                                        </div>
                                    </article>
                                </div>
                            </div>
                            <div class="col-12 col-lg-3  d-lg-block d-none">
                                <div class="product skeleton-box">
                                    <article>
                                        <div class="pro-thumb">
                                        </div>
                                        <div class="pro-info ">
                                            <div class="pro-category">
                                                              
                                            </div>
                                            <h3></h3>
                                
                                            <div class="pro-price bg-no">                     
                                              
                                              <ins>
                                                  <del>
                                                           
                                                    </del> 
                                              </ins>  
                                             
                                              <button class="btn-light icon " onclick="notificationWishlist();" tabindex="0">
                                             
                                                </button>            
                                            </div>
                          
                                        </div>
                                    </article>
                                </div>
                            </div>
                  
                        </div>      
                    </div>  
                </section>
                <div class="pro-banners-content pre-slick  pro-content ">
                    <div class="tabs-content2 bg-paralex pro-content  d-flex align-items-center"> 
                        <div class=" container">
                          <div class="bannerbg">
                            <div class="parallax-banner-text d-flex flex-column align-items-center">
                              <h2 class="skeleton-box"></h2>
                              <p class="skeleton-box"> </p>
                              <p class="skeleton-box"> </p>
                              <button class="btn skeleton-box">  </button>
              
                            </div>
                          </div>
                        </div>
                   
                    </div>
                </div>
                <div class="pro-top-sellers pro-content">
                    <div class="container">
                        <div class="row ">
                            <div class="col-12 col-md-6">
                                <div class="pro-heading-title">
                                    <h2 class="mb-2 skeleton-box">
                                    </h2>
                                   <p class="skeleton-box"> 
                                   </p>
                                </div>
                            </div>
                    
                        </div>
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <div class="product product-2x">
                                    <article>
                                        <div class="pro-thumb ">
                                        </div>
                          
                                        <div class="pro-info">
                                            <div class="pro-over">
                                                <h3 class="skeleton-box"></h3>
                                                <div class="pro-price"> 
                                                    <ins class="skeleton-box"> </ins>                               
                                                    <del class="skeleton-box">
                                                          
                                                    </del>
                                                </div>
                                                <a href="#" class="btn skeleton-box" tabindex="0"> </a>
                                            </div>
                                        </div>                   
                          
                                    </article>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 d-md-block d-none">
                                <div class="product product-2x">
                                    <article>
                                        <div class="pro-thumb">
                                        </div>
                                  
                                        <div class="pro-info">
                                            <div class="pro-over">
                                                <h3 class="skeleton-box"></h3>
                                                <div class="pro-price"> 
                                                    <ins cite="skeleton-box"> </ins>                               
                                                    <del class="skeleton-box">
                                                          
                                                    </del>
                                                </div>
                                                <a href="#" class="btn skeleton-box" tabindex="0"> </a>
                                            </div>
                                        </div>                   
                                  

                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <section class="pro-fs-content pro-content">
          
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-lg-6">
                                <div class="pro-thumb skeleton-box"></div>
                            </div>
                            <div class="col-12 col-lg-6">
                                <div class="pro-info">
                                    <h2 class="skeleton-box"> </h2>
                                    <h3 class="skeleton-box"></h3>
                                    <p class="skeleton-box"> 
                                    </p>
                                    <div class="pro-price">
                                        <ins class="skeleton-box">
                                          
                                        </ins>
                                        <del class="skeleton-box">
                                          
                                        </del>
                                    </div>
                                    <div class=" pro-timer">
                                      <span class="days skeleton-box p-0"><small></small></span>
                                      <span class="hours skeleton-box p-0"><small></small></span>
                                      <span class="mintues skeleton-box p-0"><small></small></span>
                                      <span class="seconds skeleton-box p-0"><small></small></span>
                                    </div>
                                    <button type="button" class="btn  skeleton-box" onclick="notificationCart();" tabindex="0"></button>
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </section>  
                <section class="pro-blog-content pro-content">
                    <div class="container">
                        <div class="row ">
                            <div class="col-12 col-md-6">
                                <div class="pro-heading-title">
                                   <h2 class="mb-2 skeleton-box">
                                   </h2>
                                   <p class="skeleton-box"> 
                                   </p>
                                </div>
                            </div>
                        
                        </div>
                        <div class="row">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="blog">
                                    <div class="blog-thumb skeleton-box">
                                    </div>
                                    <div class="blog-info">
                                        <div class="blog-meta">
                                          <a tabindex="0">
                                             
                                            
                                            </a>
                                          <a tabindex="0">
                                           
                                          </a>
                                        </div>
                                        <h3 class=" skeleton-box"></h3>

                                        <p class=" skeleton-box"></p>
                                    
                                    </div>
                                </div>
                            </div>
                            <div class="col-12  col-md-6 col-lg-4 d-md-block d-none">
                                <div class="blog">
                                    <div class="blog-thumb skeleton-box">
                                    </div>
                                    <div class="blog-info">
                                        <div class="blog-meta">
                                          <a tabindex="0">
                                             
                                            
                                            </a>
                                          <a tabindex="0">
                                           
                                          </a>
                                        </div>
                                        <h3 class=" skeleton-box"></h3>

                                        <p class=" skeleton-box"></p>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-12  col-md-6 col-lg-4 d-lg-block d-none">
                                <div class="blog">
                                    <div class="blog-thumb skeleton-box">
                                    </div>
                                    <div class="blog-info">
                                        <div class="blog-meta">
                                          <a tabindex="0">
                                             
                                            
                                            </a>
                                          <a tabindex="0">
                                           
                                          </a>
                                        </div>
                                        <h3 class=" skeleton-box"></h3>

                                        <p class=" skeleton-box"></p>
                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>  
                </section>
                <div class="brands-content pro-content">
                    <div class="container">
                        <div class="row">
                          <div class="col-6 col-lg-2 col-md-3 col-sm-4 ">
                            <div class="brands-skul skeleton-box"></div>
                          </div>
                          <div class="col-6 col-lg-2 col-md-3  col-sm-4">
                            <div class="brands-skul skeleton-box"></div>
                          </div>
                          <div class="col-12 col-lg-2 col-md-3 col-sm-4  d-sm-block d-none">
                            <div class="brands-skul skeleton-box"></div>
                          </div>
                          <div class="col-12 col-lg-2 col-md-3 d-md-block d-none">
                            <div class="brands-skul skeleton-box"></div>
                          </div>
                          <div class="col-12 col-lg-2 col-md-3 d-lg-block d-none">
                            <div class="brands-skul skeleton-box"></div>
                          </div>
                          <div class="col-12 col-lg-2 col-md-3 d-lg-block d-none">
                            <div class="brands-skul skeleton-box"></div>
                          </div>
                        </div>
                    </div>
                </div>   
                <footer class="pro-content footer-area footer-one footer-desktop">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-12 col-lg-6 newsletter">
                                <h5 class=" skeleton-box">
                                  
                                </h5>
                                <h3 class=" skeleton-box"></h3>
                                <p class=" skeleton-box"></p>
                                <div class="input-group">
                                    <input type="email" class="form-control" placeholder="Enter Your Email..." aria-label="Enter Your Email..."  readonly>
                                    <div class="input-group-append">
                                        <button class="btn  skeleton-box" type="button" ></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid p-0">
                        <div class="copyright-content">
                            <div class="container">
                              <div class="row align-items-center">
                                  <div class="col-12 col-md-6">
                                    <div class="footer-info">
                                       <h5 class=" skeleton-box"></h5>
                                    </div>
                                      
                                  </div>
                                  <div class="col-12 col-md-6">
                                      <ul class="socials">
                                          <li class="iconbg skeleton-box"></li>
                                          <li class="iconbg skeleton-box"></li>
                                          <li class="iconbg skeleton-box"></li>
                                          <li class="iconbg skeleton-box"></li>
                                          <li class="iconbg skeleton-box"></li>
                                      </ul>
                                  </div>
                              </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
           
    </div>
    <div class="wrapper" style="display: none;"> 
        <!-- header -->  
        @include('frontend.components.header')
        
        @yield('content')

        <!-- //footer style One -->
        
        @include('frontend.components.footer')

    </div>
    <div class="mobile-overlay"></div>
    <a href="#" class="btn-secondary " id="back-to-top" title="Back to top">&uarr;</a>

    
    <div class="notifications" id="notificationCart">Sản phẩm thêm vào giỏ hàng thành công</div>
    

    <!-- Product Modal -->
    <div class="modal fade" id="quickViewModal" tabindex="-1" role="dialog" aria-hidden="true">
      
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
              <div class="modal-body">
                  
                  <div class="container">
                    <div class="row ">
                      <div class="col-12 col-md-6">
                          <div class="row ">
                              <div id="quickViewCarousel" class="carousel slide" data-ride="carousel">
                                  <!-- The slideshow -->
                                  <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        
                                      <img class="img-fluid" src="images/gallery/preview/Product_image_01.jpg" alt="image">
                                    </div>
                                    <div class="carousel-item">
                                        
                                      <img class="img-fluid" src="images/gallery/preview/Product_image_02.jpg" alt="image">
                                    </div>
                                    <div class="carousel-item">
                                        
                                      <img class="img-fluid" src="images/gallery/preview/Product_image_03.jpg" alt="image">
                                    </div>
                                    <div class="carousel-item">
                                        
                                      <img class="img-fluid" src="images/gallery/preview/Product_image_04.jpg" alt="image">
                                    </div>
                                  </div>

                                  <a class="carousel-control-prev" href="#quickViewCarousel" data-slide="prev">
                                    <span class="fas fa-angle-left "></span>
                                  </a>
                                  <a class="carousel-control-next" href="#quickViewCarousel" data-slide="next">
                                    <span class="fas fa-angle-right "></span>
                                  </a>
                                
                              </div>
                          </div>
                      </div>
                      <div class="col-12 col-md-6 pro-description">
                        <div class="row">
                            <div class="col-12 col-md-12">
                                <div class="badges">
                                  <div class="badge badge-success">New</div>
                                    <div class="badge badge-info">
                                      Featured
                                    </div>
                                    <div class="badge badge-danger">
                                      Sale
                                    </div>
                                    <div class="badge badge-dark">
                                      Out Of Stock
                                    </div>
                                </div>   
                                <h3 >Luxerious  Bed </h3>
                                
                                <div class="pro-price">                     
                                    <ins>$358</ins>           
                                    <del>$192</del>                        
                                </div>
                                <div class="pro-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                    <a href="#review" class="btn-link">2 reviews</a>
                                </div>
                                <div class="pro-info">
                                    <div class="pro-single-info"><b>Product ID :</b><span>1004</span></div>
                                    <div class="pro-single-info"><b>Categroy :</b><span><a href="#">Furniture</a></span></div>
                                    <div class="pro-single-info">
                                      <b>Tags :</b>
                                      <ul>
                                          <li><a href="#">Beds</a></li>
                                          <li><a href="#">Chair</a></li>
                                          <li><a href="#">Sofa</a></li>
                                          
                                      </ul>
                                    </div>
                                    <div class="pro-single-info"><b>Available :</b><span class="text-secondary">InStock</span></div>
                                    <div class="pro-single-info"><b>Min Order Limit :</b><span><a href="#">5</a></span></div>
                                </div>
                                
                                <div class="pro-options">
                                  <div class="color-option">
                                      <b>Color : </b>
                                      
                                      <ul class="product-model">
                                        <li class="active"><a class="green" href="javascript:void(0);"></a></li>
                                        <li ><a class="red" href="javascript:void(0);"></a></li>
                                        
                                      </ul>
                                  </div>
                                  <div class="size-option">
                                    <b>Size : </b>
                                    <ul class="product-model1">
                                      <li class="active"><a class="size-select" href="javascript:void(0);">
                                        XS
                                      </a></li>
                                      <li><a class="size-select" href="javascript:void(0);">
                                        S
                                      </a></li>
                                      <li><a class="size-select" href="javascript:void(0);">M</a></li>
                                      
                                    </ul>
                                  
                                </div>
                                </div>
                
                                <div class="pro-quantiy">
                    
                                  <div class="input-group-control">
                
                                    
                                      <input type="text" id="quantity1" name="quantity" class="form-control" maxlength="2" value="10" size="2">
                                      <span class="input-group-btn">
                                        <button type="button" value="quantity1" class="quantity-plus1 btn btn-outline-secondary" data-type="plus" data-field="">
                                          <i class="fas fa-plus"></i>
                                      </button>
                                      <button type="button" value="quantity1" class="quantity-minus1 btn btn-outline-secondary" data-type="minus" data-field="">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                      </span>
                                      
                                    
                                    
                                </div>
                                      
                                <button type="button" class="btn btn-secondary btn-lg" onclick="notificationCart();">Add to Cart</button> 
                              
                                </div>
                          
                                </div>
                        </div>
                        
                      </div>
                    </div>
                  </div>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                </div>
          </div>
        </div>
    </div>

    

    


    <!-- All custom scripts here -->
    

    <script src="{{asset('js/scripts.js')}}"></script>


    <!-- Slider Revolution core JavaScript files -->
    <script src="{{asset('js/jquery.themepunch.tools.min.js')}}"></script>
    <script src="{{asset('js/jquery.themepunch.revolution.min.js')}}"></script>
    <script src="{{asset('js/jquery.countdown.min.js')}}"></script>
    <script src="{{asset('js/khala.js')}}"></script>

    <!-- Slider Revolution extension scripts. ONLY NEEDED FOR LOCAL TESTING -->
     
    <script src="{{asset('js/extensions/revolution.extension.actions.min.js')}}"></script>
    <script src="{{asset('js/extensions/revolution.extension.carousel.min.js')}}"></script>
    <script src="{{asset('js/extensions/revolution.extension.kenburn.min.js')}}"></script>
    <script src="{{asset('js/extensions/revolution.extension.layeranimation.min.js')}}"></script>
    <script src="{{asset('js/extensions/revolution.extension.migration.min.js')}}"></script>
    <script src="{{asset('js/extensions/revolution.extension.navigation.min.js')}}"></script>
    <script src="{{asset('js/extensions/revolution.extension.parallax.min.js')}}"></script>
    <script src="{{asset('js/extensions/revolution.extension.slideanims.min.js')}}"></script>
    <script src="{{asset('js/extensions/revolution.extension.video.min.js')}}"></script>
    
<!--   Loading Icon add to cart -->
    <div class="ss-loading" style="display: none;"></div>
    </div> 
    {{-- <script type="text/javascript">
        jQuery(document).ready(function() {
            //xy ly hover cho menu cap 3
            jQuery(".khala-menu-3").on('mouseover', function (e) {
                
                  alert('menu3');
                  console.log('menu3');
                  //set value li shipping fee from get value radio button shipping
                 //jQuery(".khala-menu-show-3").show();
                 
                 

            });
        });

    </script> --}}
</body>
</html>