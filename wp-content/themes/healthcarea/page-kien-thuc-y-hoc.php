<?php get_header() ?>
<?php
$queried_object = get_queried_object();
?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="conten col-md-8 col-sm-12 col-xs-12" style="margin-top:30px">
                <?php
                if ($page = get_page_by_path($queried_object->post_name)) {
                    echo show_childpages_shortcode($page->ID);
                } else { ?>
                    <h3 class="column-title"><?php echo the_title(); ?></h3>
                    <ul class="cd-faq-group" style="margin: 20px 0">
                        <?php
                        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                        $args = array(
                            'post_type' => 'medical_knowledge',
                            'post_status' => 'publish',
                            'posts_per_page'   => 10,
                            'paged' => $paged
                        );
                        $query = new WP_Query($args);
                        while ($query->have_posts()) : $query->the_post();
                            $feature_image_id = get_post_thumbnail_id(get_the_ID());
                            $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
                            ?>
                            <li>
                                <a class="cd-faq-trigger"
                                   href="#0"><?php echo the_title() ?> <?php if (!empty($time)) echo '(' . $time . ')'; ?>
                                    <span style="text-decoration: underline; float: right; color: #065fd4">Xem</span></a>
                                <div class="cd-faq-content row related_doctors">
                                    <?php echo get_the_content() ?>
                                    <div style="clear: both;"></div>
                                </div>
                            </li>
                        <?php endwhile; ?>
                    </ul>
                    <style type="text/css">
                        .cd-faq-content img {
                            width: 100% !important;
                        }
                    </style>
                <?php } ?>
                <div class="clearfix"></div>
                <div class="paging pagenavi">
                    <div class="paging-normal">
                        <?php if (function_exists('wp_pagenavi')) {
                            wp_pagenavi(array('query' => $query));
                        }
                        ?>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <!---->
            <div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
                <?php get_sidebar(); ?>
            </div>
    </section>
</div>
<?php get_footer(); ?>
<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/questions.js"></script>
