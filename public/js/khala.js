jQuery( document ).ready(function() {

    // dung cho countdown   
    jQuery('[data-countdown]').each(function() {
         var $this = jQuery(this), finalDate = jQuery(this).data('countdown');
  
        $this.countdown(finalDate, function(event) {
    
        var html = "";
        html += '<span class="days" >'+ event.strftime('%D')+'<small>Ngày</small></span>';
        html += '<span class="hours" >'+ event.strftime('%H')+'<small>Giờ</small></span>';
        html += '<span class="mintues" >'+ event.strftime('%M')+'<small>Phút</small></span>';
        html += '<span class="seconds" >'+ event.strftime('%S')+'<small>Giây</small></span>';
        $this.html(html);
         });
    });

    //toggle menu danh muc san pham
    jQuery('.toggle-menu .caret').click(function() {
          jQuery(this).closest('.toggle-content').find('.sub-menu').slideToggle("fast");
          return false;              
    }); 

    //change price click size
    jQuery('.change-price').on('click', function (e) {
         e.preventDefault();
         //gan size den input field hidden size khi click vao size(L,M..)
         let value_size = jQuery(this).text();
       
        //get duong dan cho attr data-url
        let urlRequest = jQuery(this).data('url');
         jQuery.ajax({
                type: 'GET',
                url: urlRequest,
                success: function(data){
                    let html = data + ' đ<input type="hidden" id = "product_price" name="product_price" value="' + data + '">';
                    if(data.code = 200){
                        jQuery('.new-price').html(html);
                        //append input type hidden to size to get value size add to cart
                        let inputHidden = '<input type="hidden"  name="product_size" id="product_size" value="' + value_size + '" >';
                        jQuery('.change-price').append(inputHidden);
                    }
                     jQuery("#product_size").val($value_size);
                },
                error: function() {
                    /* Act on the event */
                    alert('có lỗi xảy ra,vui lòng thử lại sau hoặc báo admin');
                }
            });  
        
    });

    //reset price 
    //change price click size
    jQuery('.change-price-reset').on('click', function (e) {
        e.preventDefault(); 
        //get duong dan cho attr data-url
        let urlRequest = jQuery(this).data('url');
         jQuery.ajax({
                type: 'GET',
                url: urlRequest,
                success: function(data){
                    let html = data + ' đ<input type="hidden" id = "product_price" name="product_price" value="' + data + '">';
                    if(data.code = 200){
                        jQuery('.new-price').html(html);
                    }

                },
                error: function() {
                    /* Act on the event */
                    alert('có lỗi xảy ra,vui lòng thử lại sau hoặc báo admin');
                }
            });  
        
    });

     //change color
    jQuery('.change-color').on('click', function (e) {
         
         //gan color den input field hidden size khi click vao size(L,M..)
         let value_color = jQuery(this).data('value');

         alert(value_color);

        
         //jQuery(this).addClass('color-active');
         
         let inputHiddenColor = '<input type="hidden"  name="product_color" id="product_color" value="' + value_color + '" >';
         jQuery('.change-color').append(inputHiddenColor);

    });

    ///// Copy Billing address to Shipping Address
    jQuery("#checkme").on('click', function (e) {
        
        if(this.checked){
            jQuery("#shipping_name").val(jQuery("#billing_name").val());
            jQuery("#shipping_address").val(jQuery("#billing_address").val());
            jQuery("#shipping_city").val(jQuery("#billing_city").val());
            jQuery("#shipping_state").val(jQuery("#billing_state").val());
            
            jQuery("#shipping_email").val(jQuery("#billing_email").val());
            jQuery("#shipping_mobile").val(jQuery("#billing_mobile").val());
        }else{
            jQuery("#shipping_name").val("");
            jQuery("#shipping_address").val("");
            jQuery("#shipping_city").val("0");
            jQuery("#shipping_state").val("");
            
            jQuery("#shipping_email").val("");
            jQuery("#shipping_mobile").val("");
        }
    });
    //xy ly chon phuong thuc van chuyen
    jQuery(".shipping-khala").on('click', function (e) {
        
          
          //set value li shipping fee from get value radio button shipping
         jQuery("#shipping-fee").html(jQuery(this).val() + 'đ');
         //set total order 
         let total = jQuery("#total-temp").data('value') - jQuery(this).val();
         //format kieu tien te viet nam
         let result_total = new Intl.NumberFormat('vi-VN', {  style: 'currency',currency: 'VND' }).format(total);
         jQuery("#total-temp").html(result_total);
         //gan cho field hidden grand total
         jQuery("#grand_total").val(total);
         

    });

    //xy ly ajax cho add to cart o cac trang list product
    jQuery('.btn-add-cart').on('click' ,function(e){
        
        //get cac gia tri 
        let values = jQuery(this).attr('value');
        let arrValues = values.split("khala");
        let url = jQuery(this).attr('url');
       
        //goi ajax
       
        jQuery.ajax({
                type: 'get',
                url: url,
                data: {
                    product_id: arrValues[0],
                    product_code: arrValues[1],
                    product_name: arrValues[2],
                    product_price: arrValues[3],
                    product_quantity: 1
                },
                beforeSend: function() {  
                 
                    jQuery('.ss-loading').show();
                    
                },
                success: function(data){
                    jQuery('.ss-loading').hide();
                    //alert('Thêm vào giỏ hàng thành công');
                    jQuery('#notificationCart').show();
                    setTimeout(function(){
                        jQuery('#notificationCart').hide('slow');
                      }, 9000);
                    location.reload();

                },
                error: function() {
                    /* Act on the event */
                    alert('có lỗi xảy ra,vui lòng thử lại sau hoặc báo admin');
                }
            });
             
        
    });

    //xy ly hover cho menu cap 3
    jQuery(".khala-menu-3").on('mouseover', function (e) {
        
          //set value li shipping fee from get value radio button shipping
         jQuery(".khala-menu-show-0:first").show();

    });

    jQuery(".khala-menu-3").on('mouseout', function (e) {
                  
          //set value li shipping fee from get value radio button shipping
         jQuery(".khala-menu-show-0:first").hide();
         
    });

    //submit review
    jQuery('#submit_review').on('click' ,function(e){
        e.preventDefault();
        //get cac gia tri message,number,url
        let content = jQuery('#reply-message').val();
        let number = jQuery('.number_rating').val();
        //let number = 5;
        let url = jQuery(this).attr('href');
        //goi ajax
        if(content && number){
            jQuery.ajax({
                    type: 'GET',
                    url: url,
                    data: {
                        number: number,
                        content: content
                    },
                    success: function(data){
                        if(data.code == '1'){
                            alert('Gửi Đánh giá thành công');
                            location.reload();
                        }

                    },
                    error: function() {
                        /* Act on the event */
                        alert('có lỗi xảy ra,vui lòng thử lại sau hoặc báo admin');
                    }
                });
            }  
        
    });

    //xu ly cho rating
    let listStart = jQuery(".rating-stars .start-a");

    listStart.mouseover(function(event) {
        let $this = jQuery(this);
        //lay value hien tai de so sach trong vong each
        let number = $this.attr('data-key');
        //gan value cho the hidden number_rating
        jQuery('.number_rating').val(number);
        //xy ly phan active
        listStart.removeClass('active');
        jQuery.each(listStart, function(key,value){
            if( key + 1 <= number){
                jQuery(this).addClass('active');
            }
        });
        //hien thi select tot,tam duoc khi hover lên ngôi sao
        jQuery('#rating').val($this.attr('data-key')).show();

    });

    

});


$(function () {
    //khala
   $('.ion-ios-arrow-down,.toggle-btn').on('click', function (e) {
       //de khong tu dong dong menu lai
       $(this).parent().parent().parent().css("display","");
       
        e.preventDefault();
    });
   //danh cho nhieu con hon cho layout cua-hang
    $('.ion-ios-arrow-down,.toggle-btn').on('click', function (e) {
       $(this).parent().parent().parent().parent().parent().css("display","");
       //add class de xu ly khang cach hien thi menu con
       $(".ion-ios-arrow-down-khala").parent().css('padding-left','25px');
        e.preventDefault();
    }); 

    //modal
   $('.khala-quickview').on('click', function (e) {
           e.preventDefault();
         var values = $(this).attr('value');
         alert(values);
         $.ajax({
                type: 'POST',
                url: 'popup-product',
                data: {
                    product_id: values
                    
                },
                beforeSend: function() {  
                 
                    $('.ss-loading').show();
                    
                },
                success: function(data){
                    //get du lieu json tu server
                    //let myObj = JSON.parse(data);
                    $('.ss-loading').hide();

            
                    /*let html = '<div class="modal-dialog" role="document">';
                    html += '<div class="modal-content">';
                    html += '<div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button></div>';
                    html += '<div class="modal-body">';
                    html += '<div class="row">';*/
                    let html = '';
                    //cot trai
                    //html += '<div class="col-md-5 col-sm-12 col-xs-12">';
                    //html += '<div class="tab-content quickview-big-img">';
                    //show image lon
                    let bigImg = '';
                    $.each(data.imageGallery, function(i, item){
                      
                        bigImg += '<div id="pro-'+ (i + 1) +'" class="tab-pane fade show '  + ((i == 0) ? 'active' : ' ') + '">';
                        bigImg += '<img src="http://localhost/shop3/public/uploads/' + data.product.id + '/large/'+ item.image +'" alt="" />';
                        bigImg += '</div>';
                    });

                    $('#big-img').html(bigImg);    
                    
                    //html += '</div>';
                    let smallImg = '<div class="owl-stage-outer">';
                    smallImg += '<div class="owl-stage" style="transform: translate3d(-118px, 0px, 0px); transition: all 1s ease 0s; width: 474px;">';
                    
                    //html += '<div class="quickview-wrap mt-15">';
                    //html += '<div class="quickview-slide-active owl-carousel nav owl-nav-style owl-nav-style-2 " role="tablist">';
                    //show image nho
                    
                    
                    $.each(data.imageGallery, function(i, item){
                        smallImg += '<div class="owl-item active" style="width: 103.333px; margin-right: 15px;">';
                        smallImg += '<a '+((i == 0) ? 'class="active"' : ' ')+' data-toggle="tab" href="#pro-'+ (i + 1) +'"><img src="http://localhost/shop3/public/uploads/' + data.product.id + '/small/'+ item.image +'" alt="" /></a>';
                        smallImg += '</div>';   
                    });
                    smallImg += '</div></div>';
                    $('#small-img').html(smallImg);
                    //html += '</div>';
                    //html += '</div>';
                    //html += '</div>';
                    //cot phai
                    //html += '<form name = "addToCart" method = "post" action = "add-cart" id="myform">';
                    //html += '@csrf';
                    //cac input field dể add đến cart
                    html += '<input type="hidden" name="product_id" value="'+ data.product.id+'">';
                    html += '<input type="hidden" name="product_name" value="'+data.product.title+'">';
                    html += '<input type="hidden" name="product_code" value="'+data.product.product_code+'">';
                    // end input field -->                
                    //html += '<div class="col-md-7 col-sm-12 col-xs-12"><div class="product-details-content quickview-content">';
                    html += '<div class="product-details-content quickview-content">';
                    html += '<h2>' + data.product.title + '</h2>';   
                    html += '<p class="reference">Danh mục:<span>'+ data.category.title + '</span></p>';       
                    //hien thi rating
                    html += '<div class="pro-details-rating-wrap">';
                    html += '<div class="rating-product">';
                    let avg_rating = 0;
                    if(data.product.pro_total_rating){
                        // tru 1 vi de mac dinh cac cot do la 1 de khong che up len heroku khi de mac dinh la 0
                        let total_number = data.product.pro_total_number - 1;
                        let total_rating = data.product.pro_total_rating - 1 ;
                        
                        if(total_number != 0 && total_rating != 0){
                            avg_rating = Math.round(total_number/total_rating,2);
                        }
                        
                    }
                    html += '<span class="rating-stars selected">';
                    
                    for(let i = 1; i <= 5; i++){
                     html += '<a class="star-'+ i +' '+ ((i <= avg_rating) ? 'active':'') +' ">'+i+'</a>';
                    }
                                               
                    html += '</span>';
                    html += '</div>';
                     // end hien thi rating
                     //hien thi danh gia
                    html += '<span class="read-review"><a class="reviews" href="#">Đánh giá ('+data.reviews+')</a></span>'
                    html += '</div>';
                    //hien thi gia
                    
                    html += '<div class="pricing-meta"><ul>';

                    if(data.product.discount != 0){
                        let price_discount = data.product.price * (100 - data.product.discount)/100;
                        html += '<li class="old-price">' +data.product.price+ ' đ</li>';
                        html += '<li class="current-price new-price">'+ price_discount + ' đ</li>';
                        //type hidden dung cho add to cart
                        html += '<li class="discount-price">-'+data.product.discount+'%<input type="hidden" id = "product_price" name="product_price" value="'+ price_discount + '"></li>';                        

                    }
                    else
                    {
                        //type hidden dung cho add to cart
                        html += '<li class="old-price not-cut">'+data.product.price+' đ<input type="hidden" id = "product_price" name="product_price" value="'+data.product.price+'"></li>';
                    }

                    
                    
                    html += '</ul></div>';
                    //end hien thi gia
                    //mo ta
                   
                    let descShort = data.product.description.substring(0, 170);
                    html += '<p>'+ descShort  +'</p>';
                    //add to cart
                    html += '<div >';
                    html += '<div class="cart-plus-minus">';
                    html += '<input class="cart-plus-minus-box" type="number" name="product_quantity" value=1 />';
                    html += '</div>';
                    html += '<div class="pro-details-cart btn-hover"><br />';
                    //html += '<a href="#" id = "submit-popup"> + Thêm vào giỏ hàng</a>';
                    html += '<input type="submit" class ="cart-btn-2" value="Thêm vào giỏ hàng">';
                    html += '</div>';
                    html += '</div>';
                    html += '</div>';
                    //html += '</form>';
                    //html += '</div>';

                    //bao body
                    /*
                    html += '</div>';
                    html += '</div>';
                    html += '</div>';
                    html += '</div>';
                    html += '</div>';
                    */
                 
                    
                    $('#cot-phai').html(html);

                },
                error: function() {
                    /* Act on the event */
                    alert('có lỗi xảy ra,vui lòng thử lại sau hoặc báo admin');
                }
            });
     });

    

    
   
});

