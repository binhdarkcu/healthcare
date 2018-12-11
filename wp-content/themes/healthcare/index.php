<?php get_header()?>
<div ng-init="loadData()">
        <?php get_template_part('tpl', 'slider')?>

        <?php get_template_part('tpl', 'main-work')?>

        <?php get_template_part('tpl', 'blog')?>

        <?php get_template_part('tpl', 'services')?>

    <section>
      <div class="container">
        <div class="section-header">
            <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">Chuyên khoa</h2>
        </div>
        <div class="row chuyenkhoa">
          <!-- các icon chuyên khoa, bấn vào icon link đến bài viết được thiết lập. -->
            <div class="col-md-2 item">
                <a href="#">
                    <p>Organ transplantation</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/copd-icon.png"/>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <p>Cancer</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/kcb%20icon.png"/>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <p>Heart</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/nurse%20icon.png"/>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <p>Health Screening & Promotion</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/ung%20thu%20icon.jpg"/>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <p>Organ transplantation</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/ung%20thu%20icon.jpg"/>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <p>Cancer</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/phe%20quan%20icon.jpg"/>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <p>Organ transplantation</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/copd-icon.png"/>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <p>Cancer</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/kcb%20icon.png"/>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <p>Heart</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/nurse%20icon.png"/>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <p>Health Screening & Promotion</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/ung%20thu%20icon.jpg"/>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <p>Organ transplantation</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/ung%20thu%20icon.jpg"/>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <p>Cancer</p>
                    <img class="img-responsive center-block" src="http://cms.bvpnt.org.vn//Assets/images/Feature/phe%20quan%20icon.jpg"/>
                </a>
            </div>
        </div>
      </div>
    </section>

    <section id="services">
      <div class="container">
          <div class="section-header">
              <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">Giới thiệu</h2>
          </div>
        <div class="slider_horizontal">
            <img src="http://cms.bvpnt.org.vn//Assets/images/Posts/20181207/DSC_1540.JPG">
            <img src="http://cms.bvpnt.org.vn//Assets/images/Posts/20181207/DSC_1540.JPG">
            <img src="http://cms.bvpnt.org.vn//Assets/images/Posts/20181207/DSC_1540.JPG">
            <img src="http://cms.bvpnt.org.vn//Assets/images/Posts/20181207/DSC_1540.JPG">
            <img src="http://cms.bvpnt.org.vn//Assets/images/Posts/20181207/DSC_1540.JPG">
            <img src="http://cms.bvpnt.org.vn//Assets/images/Posts/20181207/DSC_1540.JPG">
        </div>
      </div>
    </section>

    <section id="info">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">Thông tin bệnh viện</h2>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <p>Địa chỉ</p>
                    <div id="map" style="width: 100%; height: 400px;"></div>
                </div>
                <div class="col-md-4">
                    <p>Social Icon</p>
                </div>
                <div class="col-md-4">
                    <p>Thời gian làm việc các chuyên khoa</p>
                </div>
            </div>
        </div>
    </section>

</div>
<?php get_footer();?>
