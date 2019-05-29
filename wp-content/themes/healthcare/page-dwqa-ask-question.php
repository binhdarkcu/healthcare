<?php get_header()?>
<?php
    $queried_object = get_queried_object();
?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="row">
                <div class="conten col-md-8 col-sm-12 col-xs-12">
                    <?php
                    if ( $page = get_page_by_path( $queried_object->post_name ) ){
                        echo show_childpages_shortcode($page->ID);
                    } else {
                        ?>
                        <?php
                            while ( have_posts() ) : the_post();
                        ?>
                        <h4 class="column-title" style="text-transform: uppercase"><?php echo the_title();?></h4>
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
                <?php get_sidebar('chuyen-khoa');?>
            </div>
    </section>

</div>
<?php get_footer();?>
