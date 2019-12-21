<?php
/* Template Name: Lịch làm việc */
    get_header();
    $queried_object = get_queried_object();
?>
<?php include_once('breadcrumb.php') ?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="row">
                <div class="conten col-md-8 col-sm-12 col-xs-12">
                    <?php if (is_null(get_page_by_path($queried_object->post_name))) { ?>
                        <div class="wow fadeInDown animated"
                             style="visibility: visible; animation-name: fadeInDown; margin-bottom: 30px;">
                            <h3 class="column-title">Thông báo</h3>
                            <?php
                            while (have_posts()) : the_post();
                                ?>
                                <?php echo get_field('intro_description') ?>
                            <?php endwhile; ?>
                        </div>
                    <?php } ?>
                    <div class="wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                        <?php
                        if ($page = get_page_by_path($queried_object->post_name)) { ?>
                            <h3 class="column-title">Các chuyên khoa</h3>
                            <div class="row" style="display: flex; flex-flow: wrap row">
                                <?php
                                while (have_posts()) : the_post();
                                    $categories = get_categories(array(
                                        'hide_empty' => false
                                    ));
                                    foreach ($categories as $category) :
                                        setup_postdata( $category );
                                        $imgUrl = get_field('departments_image', $category);
                                        ?>
                                        <div class="col-md-3 col-sm-4 col-xs-12" style="text-align: center; margin-bottom: 15px;">
                                        <a href="<?php echo get_category_link( $category->term_id );?>"><img style="display: table; margin: auto;" src="<?php echo $imgUrl ?>" alt=""></a>
                                            <a href="<?php echo get_category_link( $category->term_id );?>"><?php echo $category->name ?></a>
                                        </div>
                                    <?php endforeach; endwhile; ?>
                            </div>
                            <div class="clearfix"></div>
                            <h3 class="column-title" style="margin-top: 20px;">Kết nối trực tuyến</h3>
                            <div class="icon-social" style="margin-bottom: 30px;">
                                <?php if( get_field('footer_socials', 'option') ): ?>
                                    <?php while(has_sub_field('footer_socials', 'option')): ?>
                                        <a style="display: inline-block;" class="<?php echo ucfirst(get_sub_field('social_name')); ?> icon-footer" href="<?php echo get_sub_field('social_link'); ?>"><?php echo ucfirst(get_sub_field('social_name')); ?></a>
                                    <?php endwhile; ?>
                                <?php endif; ?>
                            </div>
                            <h3 class="column-title"><?php echo the_title(); ?></h3>
                            <?php echo get_template_part('calendar') ?>
                        <?php } else {
                            ?>
                            <?php
                            while (have_posts()) : the_post();
                                ?>
                                <h3 class="column-title"><?php echo the_title(); ?></h3>
                                <?php echo get_template_part('calendar') ?>
                            <?php endwhile; ?>
                            <?php
                        }
                        ?>
                        <div class="clearfix"></div>
                        <!-- <hr> -->
                    </div>
                </div>
                <!---->
                <div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
                    <?php get_sidebar('bac-si-lich-lam-viec'); ?>
                </div>
            </div>
    </section>

</div>
<?php get_footer(); ?>
