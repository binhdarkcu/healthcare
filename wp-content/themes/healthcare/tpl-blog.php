<section id="blog">
    <div class="container">
        <div class="section-header">
            <!--<p class="section-header-desc">NEWS</p>-->
            <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">Hoạt động</h2>
            <p class="text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;"></p>
        </div>

        <div class="row">
            <div class="col-sm-4" style="">
                <div class="blog-post blog-media wow fadeInRight animated" data-wow-duration="300ms" data-wow-delay="100ms" style="visibility: visible; animation-duration: 300ms; animation-delay: 100ms; animation-name: undefined;">
                    <?php
                        $args = array(
                            'post_type'	 => 'hoat_dong',
                            'post_status'	 => 'publish',
                            'posts_per_page' => 1
                        );
                        $query = new WP_Query( $args );
                        if( $query -> have_posts()) : while ($query -> have_posts()) : $query->the_post();
                        $feature_image_id = get_post_thumbnail_id(get_the_ID());
                        $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
                    ?>
                        <article class="media clearfix">
                            <div class="entry-thumbnail">
                                <!----><a href="<?php echo get_the_permalink(get_the_ID()) ?>" title="<?php echo get_the_title() ?>">
                                    <div class="img-thumbnail-post" style="background-image: url(<?php echo $feature_image_meta[0] ?>)"></div>
                                </a><!---->
                                <!---->
                            </div>
                            <div class="media-body">
                                <header class="entry-header">
                                    <div class="entry-date">Ngày <?php echo get_the_date( 'd-m-Y' ) ?></div>
                                    <h3 class="entry-title entry-title-seo block-ellipsis-home-news-2line" style="height: 43px;">
                                        <!----><a href="<?php echo get_the_permalink(get_the_ID()) ?>"><?php echo get_the_title() ?></a><!---->
                                        <!---->
                                    </h3>
                                </header>
                            </div>
                        </article>
                    <?php endwhile;endif; wp_reset_postdata();?>
                </div>
            </div>
            <div class="col-sm-8" ng-repeat="item in Posts">
                <div class="blog-post blog-media wow fadeInRight animated" data-wow-duration="300ms" data-wow-delay="100ms" style="visibility: visible; animation-duration: 300ms; animation-delay: 100ms; animation-name: undefined;">
                    <article class="media clearfix">
                        <div class="entry-thumbnail" style="margin-bottom: 22px;">
                            <?php
                                $page = get_page_by_path( 'cac-dich-vu' );
                                echo codession_qtranslatex_string($page->post_content)[qtrans_getLanguage()];
                            ?>

                        </div>
                        <div class="media-body">
                            <div class="row">
                                <?php
                                    $args = array(
                                        'post_type'	 => 'hoat_dong',
                                        'post_status'	 => 'publish',
                                        'posts_per_page' => 3,
                                        'offset'    => 1
                                    );
                                    $query = new WP_Query( $args );
                                    if( $query -> have_posts()) : while ($query -> have_posts()) : $query->the_post();
                                    $feature_image_id = get_post_thumbnail_id(get_the_ID());
                                    $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
                                ?>
                                <div class="col-sm-4">
                                    <div class="blog-post blog-media wow fadeInRight animated" data-wow-duration="300ms" data-wow-delay="100ms" style="visibility: visible; animation-duration: 300ms; animation-delay: 100ms; animation-name: undefined;">
                                        <article class="media clearfix">
                                            <div class="entry-thumbnail">
                                                <!----><a href="<?php echo get_the_permalink(get_the_ID()) ?>" title="<?php echo get_the_title() ?>">
                                                    <div class="img-thumbnail-post" style="background-image: url(<?php echo $feature_image_meta[0] ?>); height: 120px;"></div>
                                                </a><!---->
                                                <!---->
                                            </div>
                                            <div class="media-body">
                                                <header class="entry-header">
                                                    <div class="entry-date">Ngày <?php echo get_the_date( 'd-m-Y' ) ?></div>
                                                    <h3 class="entry-title entry-title-seo block-ellipsis-home-news-2line" style="height: 43px;">
                                                        <!----><a href="<?php echo get_the_permalink(get_the_ID()) ?>"><?php echo get_the_title() ?></a><!---->
                                                        <!---->
                                                    </h3>
                                                </header>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                                <?php endwhile;endif; wp_reset_postdata();?>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
        <!--<div class="text-center">
            <a class="btn btn-sm btn-primary">Xem tất cả</a>
        </div>-->
    </div>
</section><!--news-->
