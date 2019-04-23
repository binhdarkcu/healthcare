<?php get_header() ?>
<?php
$queried_object = get_queried_object();
?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px">
            <div class="conten col-md-8 col-sm-12 col-xs-12" style="margin-top:0">
                <div class="row">
                    <div class="col-md-12">
                        <a class="btn btn-success pull-right">Đặt câu hỏi</a>
                    </div>
                </div>
                <h3>Câu hỏi hằng ngày / hỏi đáp</h3>
                <ul class="cd-faq-group">
                    <?php
                    $args = array(
                        'post_type' => 'dwqa-question',
                        'post_status' => 'publish',
                        'posts_per_page' => 15,
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'dwqa-question_category',
                                'field'    => 'term_id',
                                'terms'    => 29,
                            ),
                        ),
                    );
                    $query = new WP_Query($args);
                    if ($query->have_posts()) : while ($query->have_posts()) : $query->the_post();
                        ?>
                        <li class="advisory"><a href="<?php echo get_the_permalink() ?>"><?php echo get_the_title(); ?></a></li>
                    <?php endwhile;
                    endif;
                    wp_reset_postdata(); ?>
                </ul>
                <h3>Câu hỏi thường gặp</h3>
                <ul class="cd-faq-group">
                    <?php
                    $args = array(
                        'post_type' => 'dwqa-question',
                        'post_status' => 'publish',
                        'posts_per_page' => 15,
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'dwqa-question_category',
                                'field'    => 'term_id',
                                'terms'    => 30,
                            ),
                        ),
                    );
                    $query = new WP_Query($args);
                    if ($query->have_posts()) : while ($query->have_posts()) : $query->the_post();
                        ?>
                        <li class="advisory"><a href="<?php echo get_the_permalink() ?>"><?php echo get_the_title(); ?></a></li>
                    <?php endwhile;
                    endif;
                    wp_reset_postdata(); ?>
                </ul>
            </div>
            <!---->
            <div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
                <?php get_sidebar('tu-van'); ?>
            </div>
    </section>

</div>
<?php get_footer(); ?>
