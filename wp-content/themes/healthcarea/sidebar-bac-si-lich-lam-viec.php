<?php $queried_object = get_queried_object(); ?>
<div style="position: sticky;top: 0;">
    <div class=>

        <?php if ($queried_object->ID == 88) {
            $child_pages = get_pages(array(
                'child_of' => $queried_object->ID,
                'hide_empty' => false
            ));
            ?>
            <h4 class="column-title">CÁC CHUYÊN KHOA KHÁC</h4>
            <ul class="post-list sidebarKhoa">
                <?php foreach ($child_pages as $child) : setup_postdata($child);
                    $feature_image_id = get_post_thumbnail_id($child->ID);
                    $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full') ?>
                    <div class="wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                        <div class="col-md-4 catItemImageBlock">
                            <div class="news">
                                <div class="article" style="height: 70px;">
                                    <a href="<?php echo get_the_permalink($post->ID); ?>">
                                        <div class="thumb"
                                             style="background-image: url(<?php echo $feature_image_meta[0] ?>); height: 60px;"></div>
                                    </a>
                                    <div class="catItemDateCreated">
                                        <?php
                                        $currentLang = qtrans_getLanguage();
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 post-list-right">
                            <h5>
                                <a class="text-white"
                                   href="<?php echo get_the_permalink($child->ID); ?>"><?php echo $child->post_title ?></a>
                            </h5>
                        </div>
                        <div class="clearfix"></div>
                        <hr>
                    </div>
                <?php endforeach; ?>
            </ul>
        <?php } else { ?>
            <h4 class="column-title">CÁC CHUYÊN KHOA KHÁC</h4>
            <?php
            $categories = get_categories(
                array('exclude' => array($queried_object->term_id, 1))
            );
            ?>

            <ul class="post-list sidebarKhoa">
                <?php foreach ($categories as $category) : setup_postdata($category);
                    $imgUrl = get_field('departments_image', $category);
                    $time = get_field('departments_time', $category); ?>
                    <li>
                        <img src="<?php echo $imgUrl ?>" alt="">
                        <a class="text-white"
                           href="<?php echo get_category_link($category->term_id); ?>"><?php echo $category->name ?><?php if (!empty($time)) echo '(' . $time . ')'; ?></a>
                    </li>
                <?php endforeach; ?>
            </ul>
        <?php }
        ?>

        <br/>

        <h4 class="column-title">BÀI VIẾT KHÁC</h4>

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
        <ul class="post-list">
            <?php foreach ($posts_lienquan as $post) : setup_postdata($post); ?>
                <?php
                $feature_image_id = get_post_thumbnail_id(get_the_ID());
                $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
                ?>
                <div class="wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                    <div class="col-md-4 catItemImageBlock">
                        <div class="news">
                            <div class="article" style="height: 70px;">
                                <a href="<?php echo get_the_permalink($post->ID); ?>">
                                    <div class="thumb"
                                         style="background-image: url(<?php echo $feature_image_meta[0] ?>); height: 60px;"></div>
                                </a>
                                <div class="catItemDateCreated">
                                    <?php
                                    $currentLang = qtrans_getLanguage();
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 post-list-right">
                        <h5>
                            <a class="text-white"
                               href="<?php echo get_the_permalink($post->ID); ?>"><?php echo the_title(); ?></a>
                        </h5>
                    </div>
                    <div class="clearfix"></div>
                    <hr>
                </div>
            <?php endforeach; ?>
        </ul>
    </div>
</div>
