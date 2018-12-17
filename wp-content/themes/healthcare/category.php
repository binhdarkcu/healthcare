<?php /* Template Name: Giới thiệu Template */ ?>
<?php get_header()?>
<?php
    $queried_object = get_queried_object();
    $args_doctors = array(
    	'category'         => $queried_object->term_id,
    	'category_name'    => '',
    	'orderby'          => 'date',
    	'order'            => 'DESC',
    	'post_type'        => 'post'
    );
    $posts_doctors_array = get_posts( $args_doctors );
?>
<div ng-init="loadData()">
    <div ng-show="isShow" ng-init="queryView()" aria-hidden="false" class="" style="">
        <div class="container container-bd" style="padding-top: 50px">
            <!---->
            <div class="row">
                <div class="col-md-8 col-sm-12 col-xs-12 wow fadeInRight postDetail conten">
                    <!----><div ng-if="!isRequiredLogin(post.PostInternal)">
                        <h3 class="column-title">Các bác sĩ</h3>
                        <!--<p style="font-weight: bold">{{post.DescriptionTrans}}</p>-->
                        <div class="posts">
                            <?php
                            foreach ( $posts_doctors_array as $doctor ) {
                                $feature_image_id = get_post_thumbnail_id($doctor -> ID);
                                $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
                            ?>
                            <div class="col-md-4 col-sm-6 wow fadeInUp service-box animated" data-wow-duration="300ms" data-wow-delay="0ms" style="visibility: visible; animation-duration: 300ms; animation-delay: 0ms; animation-name: undefined;">
                                <div class="service-box-pad">
                                    <div class="media service-box">
                                        <div class="pull-left">
                                            <i class="fa" style="background: url(<?php echo $feature_image_meta[0] ?>); background-size: cover;"></i>
                                        </div>
                                        <div class="media-body">
                                            <a href="<?php echo get_the_permalink($doctor -> ID); ?>">
                                                <h4 class="media-heading block-ellipsis-home-news-2line" style="line-height:1.5 !important"><?php echo $doctor->post_title;?></h4>
                                            </a>
                                            <p style="padding-left: 0;" class="media-description block-ellipsis-home-news-2line"><?php echo $queried_object-> name;?></p>
                                        </div>
                                    </div>
                                </div>
                            </div><!--/.col-md-4-->
                            <?php } ?>
                        </div>
                    </div><!---->
                    <!---->
                </div>


                <?php get_sidebar();?>
            </div>
        </div>
    </div>

</div>
<?php get_footer();?>
