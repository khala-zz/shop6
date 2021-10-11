<section class="banners-content pro-content">
  <div class="container-fluid">
      <div class="row">
        @forelse($banners as $index => $banner)
          <div class="col-12 col-lg-4">
              <figure class="banner-image {{$index == 1?'right':''}}" >
                  <img class="img-fluid" src="{{asset('uploads/banners/'.$banner -> image)}}" alt="{{$banner -> title}}">

                  <div class="banner-caption {{$index % 2 == 0?'right-caption':'left-caption'}}">
                    <p>{{$banner -> title}}</p>
                    <h3>{!! $banner -> nametwo !!}</h3>
                    <a href="{{url($banner -> link)}}" class="btn btn-secondary">Mua sắm</a>
                  </div>
                  
              </figure>
          
          </div>
        @empty
          <p>Chưa có banner</p>
        @endforelse
          
      </div>   
  </div>     
</section>