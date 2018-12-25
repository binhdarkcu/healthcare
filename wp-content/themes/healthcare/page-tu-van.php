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
                $args = array(
                    'post_type'	 => 'dwqa-question',
        	        'post_status'	 => 'publish',
                    'posts_per_page' => 15
                );
                    $query = new WP_Query( $args );
                    if( $query -> have_posts()) : while ($query -> have_posts()) : $query->the_post();
                    $feature_image_id = get_post_thumbnail_id(get_the_ID());
                    $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
                ?>

                    <li>
                        <a class="cd-faq-trigger" href="#0"><?php echo get_the_title();?></a>
                        <div class="cd-faq-content">
                        <?php echo get_the_content();?>
                        </div>
                    </li>


                <?php endwhile;endif; wp_reset_postdata();?>
            </ul>
            </div>
            <!---->
            <div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
                <?php get_sidebar('tu-van');?>
            </div>
    </section>

</div>
<?php get_footer();?>
<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/questions.js"></script>
