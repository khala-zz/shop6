<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Setting;
use App\Models\Slider;
use App\Models\Product;
use App\Models\News;
use App\Models\Banner;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;



class HomeController extends Controller
{
   
    private $setting;
    private $slider;
    private $product;
    private $news;
    private $banner;

    public function __construct(Setting $setting,Slider $slider,Product $product, News $news,Banner $banner){
    	$this -> setting = $setting;
    	$this -> slider = $slider;
    	$this -> product =$product;
        $this -> news = $news;
        $this -> banner = $banner;
    
    }
    public function home(){
    	//get setting
    	$newsOne = $this -> news -> select('id','title','description') -> where([['is_active',1],['id',2]]) -> first();

        //get 2 banner
        $banners = $this -> banner -> select('title','link','image','nametwo') -> where('is_active',1) ->get();

        //get 1 banner
        $bannerOne = $this -> banner 
                        -> select('title','link','image')
                        -> where([
                        ['is_active',1],
                        ['id',3],]) -> first();

    	//get slider
    	$sliders = $this -> slider -> select('name','nametwo','image_name') -> where('is_active',1) -> get();

        
        // san pham flash sale
        $products_flash_sale = $this -> product 
                                -> with('category') -> select('image','title','id','price','description','discount','discount_end_date','category_id')
                                -> where([
                                        ['is_active',1],
                                        ['discount','<>',0],
                                        ['discount_end_date','>=',Carbon::now()],
                                        ]) 
                                -> latest() -> get();

        
       

        //get news latest 
        $news = $this -> news  -> select('id','image_name','title','description','cat_news_id','created_at') -> where('is_active',1) ->latest() ->  get();

        // count review
        $review_count = $this -> product -> withCount('reviews')->get();

       //get product bán chạy 

        $products_selling = $this -> product -> leftJoin('categories','products.category_id','=','categories.id')
        ->leftJoin('orders_products','products.id','=','orders_products.product_id')
        
        ->selectRaw('categories.title catTitle,categories.id catId,products.id,products.title,products.product_code,products.image,products.price,products.new,products.discount,products.pro_total_number,products.pro_total_rating,orders_products.product_id idOrder, COALESCE(sum(orders_products.product_qty),0) total')
        ->groupByRaw('catTitle,catId,idOrder,products.id,products.id,products.title,products.product_code,products.image,products.price,products.new,products.discount,products.pro_total_number,products.pro_total_rating')

        ->orderBy('total','desc')
        ->where('products.is_active',1)
        
        ->take(6)
        ->get(); 

        

    	return view('frontend.home.home',compact('newsOne','sliders','news','review_count','products_flash_sale','banners','bannerOne','products_selling'));
    }

    

    public function searchProducts(Request $request){
        //sap xếp
        if($request -> orderby){
            $orderBy = $request -> orderby;
        }
        else {
            $orderBy = 'created_at';
        }

        //get product 
        //dùng appends($request -> query()) để giử lại query tren url khi click qua trang khác
                
        $query = $this -> product -> with('category');

        $this->filterAndResponse($request, $query);
        //xu ly cho sap xep a-z,z-a,moi nhat,cu nhat
        if($orderBy == 'title_giam'){
            $query->orderBy('title', 'DESC');
        }
        elseif ($orderBy == 'title_tang') {
            $query->orderBy('title', 'ASC');
        }
        elseif ($orderBy == 'created_at_oldest') {
            $query->orderBy('created_at', 'ASC');
        }
        elseif ($orderBy == 'created_at_latest') {
            $query->orderBy('created_at', 'DESC');
        }
        elseif ($orderBy == 'price_tang') {
            $query->orderBy('price', 'ASC');
        }
        elseif ($orderBy == 'price_giam') {
            $query->orderBy('price', 'DESC');
        }
        else{
            $query->orderBy($orderBy, 'DESC');
        }

        
        $products = $query-> where('is_active',1)  -> paginate(12) ->  appends($request -> query());

        //end get product
        $keyword = $request -> search_product;
        return view('frontend.product.search',compact('products','keyword'));

    }

    //fileter
    private function filterAndResponse($request, $query)
    {
        

        if($request->has('search_product') && $request -> search_product <> ''){
             $query-> where('title', 'like', "%" . $request -> search_product . "%") -> orWhere('description', 'like', "%" . $request -> search_product . "%") ;
        }

        
    }
}
