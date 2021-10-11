@extends('frontend.layouts.master')
	@section('title')
		<title>{{$news -> title}}</title>
	@endsection

	@section('content')
	 <!-- Breadcrumb Area start -->
        <div class="container-fuild">
            <div class="page-header" style="background-image: url({{asset('images/page-header.png')}})">
                <div class="container">
                  <h1 class="page-title">Tin tức<span>Các tin mới nhất</span></h1>
                </div><!-- End .container -->
            </div>
            <nav aria-label="breadcrumb">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ url('/') }}">Trang chủ</a></li>
                        
                        
                        <li class="breadcrumb-item" aria-current="page"><a href="{{ url('tin-tuc') }}">Tin tức</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{$news -> title}}</li>
                    </ol>
                </div>
            </nav>


        </div> 
        <!-- Breadcrumb Area End -->
        <section class="pro-content blog-content">
            <div class="container"> 
                <div class="row">
                    <div class="col-12 col-lg-12 pro-blog-content">
                        <div class="row">
                            <div class="col-12 col-md-12">
                                <div class="blog">
                                    <div class="blog-thumb">
                                        <img class="img-fluid" src="{{ asset('uploads/news/'.$news -> image_name) }}" style="width: 100%;" alt="{{$news -> title}}">
                                    </div>
                          
                                    <div class="blog-info">
                                        <div class="blog-meta">
                                            <a >
                                                <i class="far fa-calendar-alt"></i>
                                              {{ $news -> created_at }}
                                            </a>
                                            
                                        </div>
                                        <h3>{{$news -> title}}</h3>
                                        <p>{!! $news -> description !!}
                                  </p> 
                                  <p>{!! $news -> content !!}
                                  </p>
                                                    
                                </div>
                            </div>
                        </div>
                    </div>
                
                </div>
          
            </div>
        </div>
    </section>
            
	
	

	@endsection

	
	