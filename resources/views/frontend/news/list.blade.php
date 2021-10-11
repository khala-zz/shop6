@extends('frontend.layouts.master')
    @php 
        if(Request::segment(2))
            $title_cat = str_replace('-',' ', Request::segment(2));
        else
            $title_cat = 'Tin tức';
    @endphp
	@section('title')
		<title>{{$title_cat}}</title>
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
                        
                        @if($title_cat <> 'Tin tức')
                            <li class="breadcrumb-item active" aria-current="page">{{ $title_cat }}</li>
                        @else
                            <li class="breadcrumb-item active" aria-current="page">Tin tức</li>
                        @endif
                    </ol>
                </div>
            </nav>
  
  
        </div> 
        <!-- Breadcrumb Area End -->
         <!-- Shop Category Area End -->
        <section class="pro-content blog-content">
        <div class="container"> 
            <div class="row">
              <div class="col-12 col-lg-8 pro-blog-content">
                  <div class="row">
                        @forelse( $news as $item)
                            <div class="col-12 col-md-6">
                          <div class="blog">
                            <div class="blog-thumb">
                              <img class="img-fluid" src="{{ asset('uploads/news/'.$item -> image_name) }}" alt="{{$item -> title}}">
                            </div>
                            
                            <div class="blog-info">
                                <div class="blog-meta">
                                    <a >
                                        <i class="far fa-calendar-alt"></i>
                                        {{ $item -> created_at }}
                                      </a>
                                    
                                  </div>
                                    <h3><a href="{{ route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}">{{ $item -> title}}</a></h3>

                                    <p>{!! mb_substr(strip_tags($item->description), 0, 270) !!} </p>
                                      
                            </div>
                          </div>
                            </div>
                        @empty
                            <p>Tin tức đang cập nhật!!!</p>
                        @endforelse
                     
                  </div>
                  <nav aria-label="navigation">
                      {!! $news -> links() !!}
                  </nav>
              </div>
              <div class="col-12 col-lg-4  d-lg-block d-xl-block blog-menu"> 
                  @include('frontend.news.right_news')


               
              </div>
            </div>
        </div>
      </section> 

        <!-- Shop Category Area End -->
        
	@endsection

	
	