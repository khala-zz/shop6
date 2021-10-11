 
 @foreach($childs as $index => $child)

        <a href="{{ url('danh-muc-san-pham/'.slugify($child -> title,'-').'/'.$child -> id) }}" class="dropdown-item khala-menu-3">{{$child->title}}</a>
        @if(count($child -> children))
        
        <div class="dropdown-menu khala-menu-show-{{$index}}">

            
                @include('frontend.home.menu_category',['childs' => $child -> children])
  
        </div> 
    
        @endif
             
    

@endforeach

 