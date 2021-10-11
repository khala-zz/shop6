 
 @foreach($childs as $index => $child)

   @if(count($child -> children))
        
        <li class="toggle-content">
            <a href="{{ url('danh-muc-san-pham/'.slugify($child -> title,'-').'/'.$child -> id) }}" class="{{Request::get('category_id') == $item -> id ?'active-khala':''}}">{{$child->title}}<span class="caret"></span></a>
            <ul class="sub-menu level-{{$index + 2}}" style="display: none;">
                @include('frontend.category.menu_category',['childs' => $child -> children])
            </ul>

    @else
                
        <li >
            <a href="{{ url('danh-muc-san-pham/'.slugify($child -> title,'-').'/'.$child -> id) }}" class="{{Request::get('category_id') == $item -> id ?'active-khala':''}}">{{$child->title}}</a>
        
    @endif    
       
        </li>    

@endforeach

 