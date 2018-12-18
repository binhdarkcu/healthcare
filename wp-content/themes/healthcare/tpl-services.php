<section id="services">
  <div class="container">
    <div class="section-header">
        <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">Dịch vụ</h2>
    </div>
    <div class="row">
        <section id="services-slider" style="position:relative;">
            <div class="carousel-inner" role="listbox">
                <?php
                    $args = array(
                        'post_type'	 => 'dich_vu',
                        'post_status'	 => 'publish',
                        'posts_per_page' => -1
                    );
                    $query = new WP_Query( $args );
                    if( $query -> have_posts()) : while ($query -> have_posts()) : $query->the_post();
                    $feature_image_id = get_post_thumbnail_id(get_the_ID());
                    $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
                ?>
                    <div class="owl-item" style="width: 1588px;">
                        <div class="item">
                            <div class="slider-inner">
                                <div class="container">
                                    <div class="row">
                                        <div class="carousel-content">
                                            <div class="feature-col">
                                              <a href="<?php the_permalink();?>">
                                                  <div class="ehr-title"><img src="<?php echo $feature_image_meta[0] ?>"/></div>
                                                  <div class="content">
                                                    <h2><?php echo the_title() ?></h2>
                                                    <p><?php echo the_content() ?></p>
                                                  </div>
                                              </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile;endif; wp_reset_postdata();?>
            </div>
        </div>
    </div>
  </div>
</section>
