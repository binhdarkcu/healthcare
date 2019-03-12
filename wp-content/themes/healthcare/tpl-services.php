<section id="services" style="padding-top: 0">
  <div class="container">
    <div class="section-header">
        <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;"><?php echo get_field('name_of_service', 'option') ?></h2>
    </div>
    <div class="row">
        <div id="exTab1">
            <ul  class="nav nav-pills">
                <?php
                if( have_rows('tab', 'option') ):
                    $i = 0;
                    while( have_rows('tab', 'option') ): the_row();
                        $i++;
                    ?>
                    <li class="<?php echo $i == 1 ? 'active': ''; ?>">
                        <a href="#<?php echo $i;?>a" data-toggle="tab"><?php echo get_sub_field('ten'); ?></a>
                    </li>
                    <?php endwhile; endif; ?>
            </ul>
            <div class="tab-content clearfix wow fadeInDown animated" style="padding: 20px 0 10px;">
                <?php
                if( have_rows('tab', 'option') ):
                $i = 0;
                while( have_rows('tab', 'option') ): the_row();
                $i++;
                ?>
                <div class="tab-pane <?php echo $i == 1? 'active': ''?>" id="<?php echo $i;?>a">
                    <section id="services-slider" style="position:relative;" class="services-slider">
                        <div class="carousel-inner" role="listbox">
                            <?php
                                if( have_rows('link', 'option') ): while( have_rows('link', 'option') ): the_row();
                                $items = get_sub_field('link_to');
                                $feature_image_id = get_post_thumbnail_id($items -> ID);
                                $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
                                $content = get_field('description_on_homepage', $items->ID);
                            ?>
                                <div class="item">
                                    <div class="slider-inner">
                                        <div class="carousel-content" style="margin-right: 20px;">
                                            <div class="feature-col">
                                                <a href="<?php the_permalink($items->ID);?>">
                                                    <div class="ehr-title"><img src="<?php echo $feature_image_meta[0] ?>"/></div>
                                                    <div class="content">
                                                        <h2 style="font-size: 16px;font-weight: normal; text-transform: uppercase;line-height: 1.3;"><?php echo $items->post_title ?></h2>
                                                        <p class="limit_row"><?php echo $content ?></p>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             <?php wp_reset_postdata(); endwhile; endif; ?>
                        </div>
                    </section>
                </div>
                <?php endwhile; endif; ?>
            </div>
        </div>
    </div>
  </div>
</section>
