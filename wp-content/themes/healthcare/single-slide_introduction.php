<?php get_header() ?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="conten col-md-8 col-sm-12 col-xs-12" style="margin-top:30px">
                <?php
                if ( $page = get_page_by_path( $queried_object->post_name ) ){
                    echo show_childpages_shortcode($page->ID);
                } else {
                    ?>
                    <?php
                    while ( have_posts() ) : the_post();
                        ?>
                        <h3 class="column-title"><?php echo the_title();?></h3>
                        <?php echo get_template_part('tpl-social-share'); ?>
                        <div class="posts">
                            <?php echo the_content() ;?>
                        </div>
                    <?php endwhile; ?>
                    <?php
                }

                ?>

            </div>
            <!---->
            <div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
                <?php get_sidebar();?>
            </div>
    </section>

</div>
<?php get_footer() ?>
