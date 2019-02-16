<?php global $post?>
<section id="main-slider" style="position:relative;" class="container">
    <div class="carousel-inner" role="listbox">
        <?php
        $args = array(
            'post_type'	 => 'slide_introduction',
	        'post_status'	 => 'publish',
            'posts_per_page' => -1
        );
            $query = new WP_Query( $args );
            if( $query -> have_posts()) : while ($query -> have_posts()) : $query->the_post();
            $feature_image_id = get_post_thumbnail_id(get_the_ID());
            $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
        ?>
                <div class="owl-item" style="width: 1588px;">
                    <div class="item" style="background-image: url('<?php echo $feature_image_meta[0] ?>');" data-content="<?php echo get_the_title() ?>">
                        <div class="slider-inner">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="carousel-content">
                                            <h2><?php echo get_the_title() ?></h2>
                                            <p><?php echo get_the_content() ?></p>
                                            <?php if (get_field('button_text')): ?>
                                                <a class="btn btn-primary btn-lg" style="color: #fff;" href="<?php echo get_field('button') ?>"><?php echo get_field('button_text') ?></a>
                                            <?php endif;?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        <?php endwhile;endif; wp_reset_postdata();?>
    </div>
</section><!--/#main-slider-->
<!----><div class="banner-slide-overwrite" ng-if="isLoading == false" style="">
    <div class="pick-item">
        <a href="http://bvpnt.org.vn/dat-lich-hen">
            <i class="fa fa-calendar fa-2x" style="padding: 0 15px;"></i>Đặt lịch
        </a>
    </div>
    <hr style="border: none; background-color: white; width: 85%; height: 2px;">
    <div class="pick-item">
        <a href="http://bvpnt.org.vn/tim-bac-si">
            <i class="fa fa-user-md fa-2x" style="padding: 0 15px;"></i>Tìm bác sĩ
        </a>
    </div>
    <hr style="border: none; background-color: white; width: 85%; height: 2px;">
    <div class="pick-item">
        <a href="http://bvpnt.org.vn/hoi-dap">
            <i class="fa fa-question-circle-o fa-2x" style="padding: 0 15px;"></i>Hỏi đáp
        </a>
    </div>
</div><!---->
