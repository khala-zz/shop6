 @foreach($childs as $index => $child)

    
       @if(count($child -> children))
           <a class="main-manu btn " data-toggle="collapse" href="#khala-mobile-menu-con-{{$index}}" role="button" aria-expanded="false" aria-controls="khala-mobile-menu-con-{{$index}}">
                {{$child->title}}
            </a>
            <div class="sub-manu2 collapse multi-collapse" id="khala-mobile-menu-con-{{$index}}">
              <ul class="unorder-list">
                  <li class="">
                    
                    @include('frontend.home.mobile_menu_category',['childs' => $child -> children])
                  </li>
              </ul>    
            </div> 
          
             
      @else
               
          <a class="main-manu btn "  role="button" href="{{ url('danh-muc-san-pham/'.slugify($child -> title,'-').'/'.$child -> id) }}">
              {{$child->title}} 
          </a>
              
         
      @endif    

@endforeach

