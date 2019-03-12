<div class="sidebar_post">
    <?php $queried_object = get_queried_object(); ?>
    <?php
        $sideBarTitle = codession_qtranslatex_string($queried_object->post_title)[qtrans_getLanguage()];
        if(empty($sideBarTitle)) {
            $sideBarTitle = $queried_object->post_title;
        }
    ?>
    <h4 class="column-title" style="text-transform: uppercase;">CÁC BÀI VIẾT LIÊN QUAN</h4>

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
            'post_type' => $queried_object->post_type,
            'orderby' => 'rand',
            'post_status' => 'publish',
            'post__not_in' => array($queried_object->ID, 225, 221, 219, 223, 227, 217)
        );
        $posts_lienquan = get_posts($args_lienquan);
    ?>

    <ul class="post-list">
        <?php foreach ($posts_lienquan as $post) : setup_postdata($post);
            $bigImg = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID()) );
            $bigImg = $bigImg ? $bigImg : get_template_directory_uri().'/assets/no-image.jpg';
            ?>
            <li><a href="<?php the_permalink(); ?>" class="text-white">
                    <img src="<?php echo $bigImg ?>" alt="">
                    <p><?php echo the_title() ?></p>
                </a>
            </li>
        <?php endforeach; ?>
    </ul>
    <br/>

    <h4 class="column-title">CÁC BÀI VIẾT KHÁC</h4>

    <?php $args_lienquan = array(
        'posts_per_page' => 5,
        'offset' => 0,
        'orderby' => 'rand',
        'order' => 'ASC',
        'post_type' => array('hoat_dong', 'dich_vu', 'gioi_thieu_khoa'),
        'post_status' => 'publish',
    );
    $posts_lienquan = get_posts($args_lienquan); ?>

    <ul class="post-list">
        <?php foreach ($posts_lienquan as $post) : setup_postdata($post);
            $bigImg = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID()) ); ?>
            <li><a href="<?php the_permalink(); ?>" class="text-white">
                    <img src="<?php echo $bigImg ?>" alt="">
                    <p><?php echo the_title() ?></p>
                </a>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
