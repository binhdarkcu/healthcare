HÌNH ẢNH<?php get_header() ?>
<div>
        <?php get_template_part('tpl', 'slider') ?>

        <?php get_template_part('tpl', 'main-work')?>

        <?php get_template_part('tpl', 'blog')?>

        <?php get_template_part('tpl', 'services')?>

        <?php get_template_part('tpl', 'cac-khoa')?>

    <section id="services" class="galleries">
      <div class="container">
          <div class="section-header">
              <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">Hình ảnh</h2>
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
                      <img class="example-image" style="height: 195px;" src="<?php echo $feature_image_meta[0] ?>" alt="" />
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
