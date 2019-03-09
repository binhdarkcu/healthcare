<div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
    <div class="col-xs-12">
        <h4 class="column-title">CÁC CHUYÊN KHOA KHÁC</h4>
        <?php
            $queried_object = get_queried_object();
            $categories =  get_categories(
                array('exclude' => array($queried_object->term_id, 1))
            );
        ?>
        <ul class="post-list sidebarKhoa">
<!--            --><?php //foreach (my_get_page_children() as $child):?>
<!--                <li><i class="fa fa-angle-right" aria-hidden="true"></i><a style="padding-left: 15px;" href="--><?php //echo the_permalink($child->ID); ?><!--">--><?php //echo $child->post_title?><!--</a></li>-->
<!--            --><?php //endforeach; ?>
            <?php foreach ( $categories as $category ) : setup_postdata( $category );
                    $imgUrl = get_field('departments_image', $category); ?>
                <li>
                    <img src="<?php echo $imgUrl ?>" alt="">
                    <a href="<?php echo get_category_link( $category->term_id );?>"><?php echo $category->name ?></a>
                </li>
            <?php endforeach; ?>
        </ul>
        <br/>

        <h4 class="column-title">BÀI VIẾT KHÁC</h4>

        <?php $args_lienquan = array(
            'posts_per_page'   => 5,
            'offset'           => 0,
            'orderby'          => 'rand',
            'order'            => 'ASC',
            'post_type'        => array('hoat_dong', 'dich_vu', 'gioi_thieu_khoa'),
            'post_status'      => 'publish',
            "hide_empty" => 0,
        );
        $posts_lienquan = get_posts( $args_lienquan );?>

        <ul class="post-list sidebar_post">
            <?php foreach ( $posts_lienquan as $post ) : setup_postdata( $post );
                $bigImg = wp_get_attachment_url( get_post_thumbnail_id($post->ID) ); ?>
                <li><a href="<?php the_permalink(); ?>" class="text-white">
                        <img src="<?php echo $bigImg ?>" alt="">
                        <p><?php echo the_title() ?></p>
                    </a>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>
