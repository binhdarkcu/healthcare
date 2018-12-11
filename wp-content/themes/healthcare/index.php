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
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/Heart.png"/>
                    <p>Heart</p>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/HealthScreening.png"/>
                    <p>Health Screening & Promotion</p>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/Gastroenterology.png"/>
                    <p>Gastroenterology</p>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/Otorhinolaryngology.png"/>
                    <p>Otorhinolaryngology</p>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/Ophthalmology.png"/>
                    <p>Ophthalmology</p>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/Orthopedics.png"/>
                    <p>Orthopedics</p>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/Endocrinology.png"/>
                    <p>Endocrinology</p>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/Plastic.png"/>
                    <p>Plastic Surgery</p>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/Nephrology.png"/>
                    <p>Nephrology Urology</p>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/Pediatrics.png"/>
                    <p>Pediatrics</p>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/Obstetrics.png"/>
                    <p>Obstetrics and Gynecology</p>
                </a>
            </div>
            <div class="col-md-2 item">
                <a href="#">
                    <img class="img-responsive center-block" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/icons/PainClinic.png"/>
                    <p>Pain Clinic</p>
                </a>
            </div>
        </div>
      </div>
    </section>

    <section id="services">
      <div class="container">
          <div class="section-header">
              <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">Hình ảnh</h2>
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

</div>
<?php get_footer();?>
