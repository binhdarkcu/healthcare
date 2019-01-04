<?php get_header()?>
<?php
    $queried_object = get_queried_object();
?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px">
            <div class="conten col-md-8 col-sm-12 col-xs-12" style="margin-top:0">
                <h3>Các câu hỏi thường gặp</h3>
                <ul id="basics" class="cd-faq-group">
                    <?php
                      $categories = get_categories();
                      foreach( $categories as $category ) {

                          $imgUrl = get_field('departments_image', $category);
                          $time = get_field('departments_time', $category);
                          ?>
                          <li>
                              <a class="cd-faq-trigger" href="#0"><?php echo $category->name ?> <?php if(!empty($time)) echo '('.$time.')' ; ?><span style="text-decoration: underline;     float: right; color: #065fd4">Xem</span></a>
                              <div class="cd-faq-content">
                                  <?php
                                      $queried_object = get_queried_object();
                                      $args_doctors = array(
                                      	'category'         => $category->term_id,
                                      	'category_name'    => '',
                                      	'orderby'          => 'date',
                                      	'order'            => 'DESC',
                                      	'post_type'        => 'post'
                                      );
                                      $posts_doctors_array = get_posts( $args_doctors );
                                  ?>
                                  <?php
                                  foreach ( $posts_doctors_array as $doctor ) {
                                      $feature_image_id = get_post_thumbnail_id($doctor -> ID);
                                      $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
                                  ?>
                                  <div class="col-md-4 col-sm-6 wow fadeInUp service-box animated" data-wow-duration="300ms" data-wow-delay="0ms" style="visibility: visible; animation-duration: 300ms; animation-delay: 0ms; animation-name: undefined;">
                                      <div class="service-box-pad">
                                          <div class="media service-box" style="margin-top: 0; margin-bottom: 0;">
                                              <div class="pull-left" style="text-align: center;padding-right: 0;width: 100%;">
                                                  <a href="<?php echo get_the_permalink($doctor -> ID); ?>">
                                                      <i class="fa" style="background: url(<?php echo $feature_image_meta[0] ?>); background-size: cover;"></i>
                                                      <h4 class="media-heading block-ellipsis-home-news-2line" style="text-align: center; line-height:1.5 !important"><?php echo $doctor->post_title;?></h4>
                                                  </a>
                                              </div>
                                          </div>
                                      </div>
                                  </div><!--/.col-md-4-->
                                  <?php } ?>
                                  <div style="clear: both;"></div>
                              </div>
                          </li>
                      <?php }  ?>

            </ul>
            </div>
            <!---->
            <?php get_sidebar('chuyen-khoa');?>
    </section>

</div>
<?php get_footer();?>
<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/questions.js"></script>
