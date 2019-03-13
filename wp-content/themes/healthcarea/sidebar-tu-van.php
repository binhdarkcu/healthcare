<div class="col-xs-12 cat-box">
    <?php $queried_object = get_queried_object(); ?>

    <h4 class="column-title" style="text-transform: uppercase;">Danh mục câu hỏi</h4>
    <ul class="post-list">
        <?php
        $categories = get_categories('taxonomy=dwqa-question_category');
        foreach ($categories as $category) { ?>
            <li><i class="fa fa-angle-right" aria-hidden="true"></i><a href="<?php echo get_category_link($category->term_id); ?>">
                    <?php echo $category->name; ?>
                </a>
            </li>
        <?php } ?>
    </ul>


    <br/>

    <h4 class="column-title" style="text-transform: uppercase;">Bài viết nhiều người đọc nhất</h4>
    <ul class="post-list">
    <?php
    $args = array(
        'posts_per_page'       => 10,
        'order'             => 'DESC',
        'orderby'           => 'meta_value_num',
        'meta_key'           => '_dwqa_views',
        'post_type'         => 'dwqa-question',
        'suppress_filters'  => false,
    );
    $myposts = new WP_Query( $args );
    if ($myposts->have_posts()) {
        while ($myposts->have_posts()) {
            $myposts->the_post(); ?>
            <?php if(views_count() > 5 ) : ?>
            <li><i class="fa fa-angle-right" aria-hidden="true"></i><a href="<?php the_permalink(); ?>">
                    <?php echo the_title(); ?>
                </a>
            </li><?php endif;
        }
    } ?>
    </ul>
</div>
