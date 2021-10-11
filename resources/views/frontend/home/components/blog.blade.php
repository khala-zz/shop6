<section class="pro-blog-content pro-content">
      
          <div class="container">
            <div class="row align-items-center">
              <div class="col-12 col-md-6">
                  <div class="pro-heading-title">
                    <h2> Tin tức
                    </h2>
                    <p>Các bài viết mới nhất của chúng tôi  
                    </p>
                  </div>
              </div>
              <div class="col-12 col-md-6">
                  
              </div>
              
            </div>

                <div class="row">
                    <div class="col-12">
                        <div class="blog-carousel-js row">
                            @forelse($news as $new)
                            <div class="">
                                <div class="blog">
                                  <div class="blog-thumb">
                                    <img class="img-fluid" src="{{asset('uploads/news/'.$new -> image_name)}}" alt="{{$new -> title}}">
                                  </div>
                                  
                                  <div class="blog-info">
                                      <div class="blog-meta">
                                          <a >
                                              <i class="far fa-calendar-alt"></i>
                                              {{ $new -> created_at }}
                                            </a>
                                          
                                        </div>
                                        <h3><a href="{{ route('new.detail',['slug' => slugify($new -> title,'-'),'id' => $new -> id])}}">{{$new -> title}}</a></h3>

                                          <p>{{mb_substr(strip_tags($new->description), 0, 150)}}... </p>
                                        
                                  </div>
                                </div>
                            </div>
                            @empty
                              <p>Chưa có tin tức</p>
                            @endforelse
                            
                            
                        </div>  
                    </div>
                  </div> 
          </div>
          
        </section>