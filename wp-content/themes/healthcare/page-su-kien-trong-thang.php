<?php get_header() ?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="conten col-md-8 col-sm-12 col-xs-12" style="margin-top:30px">
                <div class="childpages">
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
                    <div class="row wow fadeInDown animated animated animated" style="visibility: visible;">
                        <div class="col-md-4 catItemImageBlock">
                            <div class="news">
                                <div class="article">
                                    <!----><a href="<?php echo get_permalink() ?>">
                                        <div class="thumb" style="background-image: url(<?php echo $feature_image_meta[0] ?>)"></div>
                                    </a><!---->
                                    <!---->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 post-list-right">
                            <h3>
                                <!----><a href="<?php echo get_permalink() ?>"><?php echo the_title() ?></a><!---->
                                <!---->
                            </h3>
                            <?php echo the_content() ?>
                        </div>
                        <div class="clearfix"></div>
                        <hr>
                    </div>
                    <?php endwhile;endif; wp_reset_postdata();?>
                </div>
            </div>
            <!---->
            <div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
                <?php get_sidebar() ?>
            </div>
        </div></section>

</div>
<?php get_footer() ?>