<footer id="footerOne"  class="footer-area footer-one footer-desktop">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12 col-lg-6 newsletter">
          <h5>
            Đăng kí
          </h5>
          <h3>Nhận nhiều ưu đãi</h3>
          <p>Vui lòng nhập email bên dưới.<br>Để nhận thông tin khuyến mãi mới nhất.</p>
          <form method="post" action="{{route('newsletter.store')}}">
            @csrf
            <div class="input-group">
           
                      
              <input type="email" name = "email" class="form-control" placeholder="Nhập Email..." aria-label="Nhập Email..." aria-describedby="button-addon2">
              <div class="input-group-append">
                <button class="btn btn-secondary" type="submit" id="button-addon2">Đăng kí
                </button>
              </div>
            </div>
          </form>  
          
        </div>
      </div>
    </div>
    <div class="container-fluid p-0">
      <div class="copyright-content">
          <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-md-6">
                  <div class="footer-info">
                      ©&nbsp;2021 by Khala.
                  </div>
                    
                </div>
                <div class="col-12 col-md-6">
                    <ul class="socials">
                        <li><a href="#" class="fab fb fa-facebook-square"></a></li>
                        <li><a href="#" class="fab tw fa-twitter-square"></a></li>
                        <li><a href="#" class="fab sk fa-skype"></a></li>
                        <li><a href="#" class="fab In fa-linkedin"></a></li>
                        <li><a href="#" class="fab ig fa-instagram"></a></li>
                    </ul>
                </div>
            </div>
          </div>
        </div>
    </div>
</footer>