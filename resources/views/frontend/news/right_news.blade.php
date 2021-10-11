<div class="widget widget-cats">
    <h3 class="widget-title">Danh mục tin tức</h3>

    <ul>
   
        @foreach($cat_news as $item)

            @if( $item -> parent == null)
             <li>
                <a href="{{ route('cat_news.news',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}"  {{Request::segment(3) == $item-> id ? 'style=color:#ef1e1e' : " "}}>{{$item->title}}</a>
                @if(count($item->children))

                @include('frontend.news.menusub',['childs' => $item -> children])
                @endif

            </li>
            @endif
        @endforeach()
    </ul>
</div>
<div class="widget">
    <h3 class="widget-title">Bài viết gần đây</h3><!-- End .widget-title -->
        @forelse($news_right as $item )
        <div class="media">
          <img src="{{ asset('uploads/news/'.$item -> image_name) }}" alt="{{$item -> title}}" width="100" height="100">
          <div class="media-body">
              <h3 ><a href="{{ route('new.detail',['slug' => slugify($item -> title,'-'),'id' => $item -> id])}}">{{$item -> title}}</a></h3>
            <div class="post-date">
                <i class="fa fa-calendar" aria-hidden="true"></i>
                <a> {{ $item -> created_at }}</a>
              </div>
           
          </div>
        </div>
        @empty
            <p>Tin tức đang cập nhật</p>
        @endforelse
              
</div>

    <ul class="socials">
        <li><a href="#" class="fab fb fa-facebook-square"></a></li>
        <li><a href="#" class="fab tw fa-twitter-square"></a></li>
        <li><a href="#" class="fab sk fa-skype"></a></li>
        <li><a href="#" class="fab In fa-linkedin"></a></li>
        <li><a href="#" class="fab ig fa-instagram"></a></li>
    </ul>





