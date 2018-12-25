<div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
    <div class="col-xs-12 cat-box">
        

        <h4 class="column-title">CÁC CHUYÊN KHOA KHÁC</h4>


        <?php
            $queried_object = get_queried_object();
            $categories =  get_categories(
                array('exclude' => array($queried_object->term_id, 1))
            );
        ?>

        <ul class="post-list sidebarKhoa">
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
            'post_type'        => 'hoat_dong',
            'post_status'      => 'publish',
            "hide_empty" => 0,
        );
        $posts_lienquan = get_posts( $args_lienquan ); ?>

        <ul class="post-list">
            <?php foreach ( $posts_lienquan as $post ) : setup_postdata( $post ); ?>
                <li><i class="fa fa-angle-right" aria-hidden="true"></i><a href="<?php the_permalink(); ?>"><?php the_title();?></a></li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>
