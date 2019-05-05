<section id="services" style="padding-top: 0">
  <div class="container">
    <div class="section-header">
        <h2 class="section-title text-center wow fadeInDown animated"
            style="visibility: visible; animation-name: fadeInDown;"><?php echo get_field('services', 'option')['title'] ?></h2>
        <small class="short-desc"><?php echo get_field('services', 'option')['description'] ?></small>
    </div>
    <div class="row">
        <div id="exTab1" class="col-md-12">
            <ul  class="nav nav-pills">
                <?php
                // We want to find the Taxonomy to this slug.
                    $term_slug = 'tab_services';
                    $terms = get_terms( array(
                        'taxonomy' => $term_slug,
                        'hide_empty' => true,
                        'order' => 'DESC'
                    ) );
                    $i = 0;
                    foreach ( $terms as $tax_type_key => $tern ) {
                        $i++;
                    ?>
                    <li class="<?php echo $i == 1 ? 'active': ''; ?>">
                        <a href="#<?php echo $i;?>a" data-toggle="tab"><?php echo $tern->name; ?></a>
                    </li>
                    <?php } ?>
            </ul>
            <div class="tab-content clearfix wow fadeInDown animated" style="padding: 20px 0px 10px">
                <?php
                    $term_slug = 'tab_services';
                    $terms = get_terms( array(
                        'taxonomy' => $term_slug,
                        'hide_empty' => true,
                        'order' => 'DESC'
                    ) );
                    $i = 0;
                    foreach ( $terms as $tax_type_key => $tern ) {
                        $i++;
                ?>
                <div class="tab-pane <?php echo $i == 1? 'active': ''?>" id="<?php echo $i;?>a">
                    <section id="services-slider" style="position:relative;" class="services-slider">
                        <div class="carousel-inner" role="listbox">
                            <?php
                                $args = array(
                                    'post_type'	 => 'dich_vu',
                                    'post_status'	 => 'publish',
                                    'posts_per_page' => -1,
                                    'tax_query' => array(
                                        array(
                                            'taxonomy' => 'tab_services',
                                            'field' => 'term_id',
                                            'terms' => $tern->term_id,
                                        )
                                    )
                                );
                                $query = new WP_Query( $args );
                                if( $query -> have_posts()) : while ($query -> have_posts()) : $query->the_post();
                                $feature_image_id = get_post_thumbnail_id(get_the_ID());
                                $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
                                $content = get_field('description_on_homepage', get_the_ID());
                            ?>
                                <div class="item">
                                    <div class="slider-inner">
                                        <div class="carousel-content" style="margin-right: 20px;">
                                            <div class="feature-col">
                                                <a href="<?php the_permalink(get_the_ID());?>">
                                                    <div class="ehr-title"><img src="<?php echo $feature_image_meta[0] ?>" style="width: 100%;" /></div>
                                                    <div class="content">
                                                        <h2 style="font-size: 16px;font-weight: normal; text-transform: uppercase;line-height: 1.3;"><?php echo the_title() ?></h2>
                                                        <p class="limit_row"><?php echo $content ?></p>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endwhile;endif; wp_reset_postdata();?>
                        </div>
                    </section>
                </div>

                <?php } ?>

            </div>
        </div>
    </div>
  </div>
</section>
