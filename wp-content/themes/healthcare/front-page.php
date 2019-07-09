<?php get_header() ?>
<div>
    <?php get_template_part('tpl', 'slider') ?>

    <?php get_template_part('tpl', 'main-work')?>


    <section style="margin-bottom: 60px;">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;"><?php echo get_field('cam_nhan_khach_hang', 'option')['title'] ?></h2>
                <small class="short-desc"><?php echo get_field('cam_nhan_khach_hang', 'option')['description'] ?></small>
            </div>
            <div class="row slide-cnkh">
                <div class="carousel-inner owl-theme">
                    <?php
                        $args = array(
                            'post_type' => 'cam_nhan_khach_hang',
                            'posts_per_page' => 5,
                        );
                        $query = new WP_Query( $args );
                        if($query->have_posts()) : while($query->have_posts()) : $query->the_post();
                            $page_content = get_field('intro_description', get_the_ID());
                            $feature_image_id = get_post_thumbnail_id(get_the_ID());
                            $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full'); 
                    ?>
                    <div class="col-md-4 col-sm-6 col-xs-12 owl-item">
                        <div class="rowTitle clearfix" style="display: flex; align-items: center">
                            <div style ="width: 107px; float: left;height: 107px; overflow: hidden">
                                <img src="<?php echo $feature_image_meta[0] ?>" alt="" style ="width: 100%;" />
                            </div>
                            <a href="<?php echo get_the_permalink() ?>" style="display: inline-block; margin-left: 10px; font-size: 15px; font-weight: bold"><?php echo the_title() ?></a>
                        </div>
                        <div class="rowContent" style="margin-top: 20px"><?php echo $page_content ?></div>
                    </div>
                    <?php endwhile;endif;wp_reset_postdata();?>
                </div>
            </div>
            <div class="row" style="margin-top: 20px">
                <div class="col-md-12">
                    <a href="<?php echo get_the_permalink(986) ?>" class="btn btn-success" style="background: #f7931d;">Xem tất cả</a>
                </div>
            </div>
        </div>
    </section>
    <?php get_template_part('tpl', 'cac-khoa')?>

    <?php get_template_part('tpl', 'blog')?>

    <?php get_template_part('tpl', 'services')?>

    <section id="services" class="galleries">
      <div class="container">
          <div class="section-header">
              <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;"><?php echo get_field('image_section', 'option')['title'] ?></h2>
              <small class="short-desc"><?php echo get_field('image_section', 'option')['description'] ?></small>
          </div>
          <section id="gallery-slider" style="position:relative;">
              <div class="carousel-inner" role="listbox">
                  <?php
                      $args = array(
                          'post_type'	 => 'hinh_anh',
              	          'post_status'	 => 'publish',
                          'posts_per_page' => -1
                      );
                      $query = new WP_Query( $args );
                      if( $query -> have_posts()) : while ($query -> have_posts()) : $query->the_post();
                      $feature_image_id = get_post_thumbnail_id(get_the_ID());
                      $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
                      $img_lightbox = get_field('big_image_lightbox', get_the_ID());
                  ?>
                  <a class="example-image-link" href="<?php echo $img_lightbox;?>" data-lightbox="example-set" data-title="<?php echo get_the_title(get_the_ID());?>">
                      <div style="background: url(<?php echo $feature_image_meta[0] ?>) center no-repeat; height: 195px; background-size: cover"></div>
                  </a>

                  <?php endwhile;endif; wp_reset_postdata();?>

              </div>
          </section><!--/#main-slider-->

        <div class="slider_horizontal">

        </div>
      </div>
    </section>

</div>
<?php get_footer();?>
