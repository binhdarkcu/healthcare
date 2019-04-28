<?php 
    $queried_object = get_queried_object();
?>
<div style="position: sticky;top: 0;">

        <h4 class="column-title" style="line-height: 1.4;">BÀI VIẾT KHÁC</h4>

        <?php $args_lienquan = array(
            'posts_per_page' => 5,
            'offset' => 0,
            'orderby' => 'rand',
            'order' => 'ASC',
            'post_type' => array('hoat_dong', 'dich_vu', 'gioi_thieu_khoa'),
            'post_status' => 'publish',
            "hide_empty" => 0,
        );
        $posts_lienquan = get_posts($args_lienquan);

        ?>
        <ul class="post-list sidebar_post">
        <?php
            while( have_rows('related_posts', 'option') ): the_row();
            while( have_rows('post_difference', 'option') ): the_row();
            $items = get_sub_field('name_of_post');
            if($items):
            $feature_image_id = get_post_thumbnail_id($items->ID);
            $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
        ?>
            <li><a href="<?php the_permalink($items->ID); ?>" class="text-white clearfix" style="width: 100%;">
                <div style="background: url(<?php echo $feature_image_meta[0] ?>) center top no-repeat; width: 85px; height: 45px; background-size: cover; float: left"></div>
                <p><?php echo get_the_title($items->ID) ?></p>
                </a>
            </li>
    <?php endif;endwhile;endwhile; ?>
    </ul>
    </div>
</div>
