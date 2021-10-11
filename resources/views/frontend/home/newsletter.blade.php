<!-- Newsletter Modal -->
<div class="modal fade show" id="newsletterModal" tabindex="-1" role="dialog" aria-hidden="false">

    <div class="modal-dialog modal-dialog-centered modal-lg newsletter" role="document">
      <div class="modal-content">
          <div class="modal-body">
              
              <div class="container">
                  <div class="row align-items-center">
                  
              
                  <div class="col-12 col-md-6" >
                          <div class="pro-image">
                            <img class="img-fluid" src="{{asset('images/newslater.jpg')}}" alt="Newsletter">
                          </div>
                  </div>
                  <div class="col-12 col-md-6" >
                  <div class="promo-box">
                          
                          <h2 class="text-01">
                            Đăng kí để nhận tin,mã khuyến mãi mới nhất 
                          </h2>
                          <p class="text-03">
                            Hãy là người đăng kí đầu tiên để nhận nhiều thông tin khuyến mãi mới nhất.
                          </p>

                          <form method="post" action="{{route('newsletter.store')}}">
                            @csrf
                            <div class="form-group">
                              <input type="email" value="" name="email" class="required email form-control" placeholder="Nhập Email...">
                              
                            </div>
                            <div class="form-check">
                                    
                              <input class="form-check-input" type="checkbox" value="" id="defaultCheck0">
                              <label class="form-check-label" for="defaultCheck0">
                                Không hiển thị cửa sổ này nữa !
                              </label>
                              <small id="checkboxHelp" class="form-text text-muted"></small>
                            </div>
                            <button type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="btn btn-secondary swipe-to-top">Đăng kí</button>
                          </form>
                          

                          
                        </div>
                </div>
                </div>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                  </button>
              </div>
            </div>
      </div>
    </div>
</div>