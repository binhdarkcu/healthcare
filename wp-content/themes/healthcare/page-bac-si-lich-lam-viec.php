<?php get_header()?>
<?php
    $queried_object = get_queried_object();
?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="conten col-md-8 col-sm-12 col-xs-12" style="margin-top:30px">
              <div class="row wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                <?php
                if ( $page = get_page_by_path( $queried_object->post_name ) ){
                    echo show_childpages_departments($page->ID);
                } else {
                    ?>
                    <?php
                        while ( have_posts() ) : the_post();
                    ?>
                    <h3 class="column-title"><?php echo the_title();?></h3>
                    <div class="posts">
                        <?php echo the_content() ;?>
                    </div>
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
                <?php get_sidebar('bac-si-lich-lam-viec');?>
            </div>
    </section>

</div>
<?php get_footer();?>
