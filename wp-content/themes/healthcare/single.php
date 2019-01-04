<?php /* Template Name: Giới thiệu Template */ ?>
<?php get_header()?>
<?php
    while ( have_posts() ) : the_post();
        $meta_values = get_post_type( $my_postid );
        $post = get_post(get_the_ID());
        $bigImg = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID()) );
?>
<div ng-init="loadData()">
    <div ng-show="isShow" ng-init="queryView()" aria-hidden="false" class="" style="">
        <div class="container container-bd" style="padding-top: 50px; padding-bottom: 50px;">
            <!---->
            <div class="row">
                <div class="col-md-8 col-sm-12 col-xs-12 wow fadeInRight postDetail conten">
                    <!----><div ng-if="!isRequiredLogin(post.PostInternal)">
                        <h3 class="column-title"><?php echo the_title();?></h3>
                        <?php echo get_template_part('tpl-social-share'); ?>

                        <span style="font-size: 12px; display: block;margin-bottom: 5px; text-transform: uppercase; color: #45aed6;"><?php echo the_date('d-m-Y'); ?></span>
                        <!--<p style="font-weight: bold">{{post.DescriptionTrans}}</p>-->
                        <div class="posts">
                            <?php echo the_content();?>
                        </div>
                        <?php if(!empty((get_field('datetime_working', get_the_ID())))) {?>
                        <h3 class="column-title">Lịch làm việc</h3>
                        <?php if( get_field('datetime_working', get_the_ID()) ): ?>
                        	<ul>

                        	<?php while(has_sub_field('datetime_working')): ?>

                        		<li><?php the_sub_field('shedule_day'); ?>: <?php the_sub_field('shedule_time'); ?></li>

                        	<?php endwhile; ?>

                        	</ul>

                        <?php endif; ?>
                    <?php } ?>
                        <br/><br/>
                    </div><!---->
                    <!---->
                </div>
                <?php $queried_object = get_queried_object();
                if($queried_object -> post_type == 'post') {
                    get_sidebar('chuyen-khoa');
                } else { ?>

                    <div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
                            <?php get_sidebar(); ?>
                    </div>
                    <?php
                }
                ?>
                <br/><br/>
            </div>
        </div>
    </div>

</div>
<?php endwhile; ?>
<?php get_footer();?>
