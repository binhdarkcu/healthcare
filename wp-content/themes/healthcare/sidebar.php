<div class="col-xs-12 cat-box">
    <?php $queried_object = get_queried_object(); ?>
    <?php
        $sideBarTitle = codession_qtranslatex_string($queried_object->post_title)[qtrans_getLanguage()];
        if(empty($sideBarTitle)) {
            $sideBarTitle = $queried_object->post_title;
        }
    ?>
    <h4 class="column-title" style="text-transform: uppercase;">CÁC BÀI VIẾT VỀ <?php echo $sideBarTitle;?></h4>

    <?php
        $post_data = get_post($queried_object->post_parent);

        $tax = get_the_terms($queried_object->ID, 'chuyen_muc_hoat_dong');
        if(empty($tax)) {
            $parent_slug = $post_data->post_name;
        } else {
            $parent_slug = $tax[0]->slug;
        }

        $args_lienquan = array(
            'posts_per_page' => 5,
            'post_type' => 'hoat_dong',
            'post_status' => 'publish',
            'tax_query' => array(
                array(
                  'taxonomy' => 'chuyen_muc_hoat_dong',
                  'field' => 'slug',
                  'terms' => array($parent_slug)
                )
            )
        );
        $posts_lienquan = get_posts($args_lienquan);
    ?>

    <ul class="post-list">
        <?php foreach ($posts_lienquan as $post) : setup_postdata($post); ?>
            <li><i class="fa fa-angle-right" aria-hidden="true"></i><a
                        href="<?php the_permalink(); ?>" class="text-white"><?php the_title(); ?></a></li>
        <?php endforeach; ?>
    </ul>
    <br/>

    <h4 class="column-title">CÁC BÀI VIẾT KHÁC</h4>

    <?php $args_lienquan = array(
        'posts_per_page' => 5,
        'offset' => 0,
        'orderby' => 'rand',
        'order' => 'ASC',
        'post_type' => 'hoat_dong',
        'post_status' => 'publish',
    );
    $posts_lienquan = get_posts($args_lienquan); ?>

    <ul class="post-list">
        <?php foreach ($posts_lienquan as $post) : setup_postdata($post); ?>
            <li><i class="fa fa-angle-right" aria-hidden="true"></i><a
                        href="<?php the_permalink(); ?>" class="text-white"><?php the_title(); ?></a></li>
        <?php endforeach; ?>
    </ul>
</div>
