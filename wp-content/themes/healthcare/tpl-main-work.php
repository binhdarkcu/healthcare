<section id="services">
    <div class="container">
        <div class="row">
            <div class="col-md-6" style="margin-bottom: 40px">
                <div class="section-header">
                    <h2 class="section-title text-center wow fadeInDown animated"
                        style="visibility: visible; animation-name: fadeInDown;"><?php echo get_field('featured_gadgets', 'option')['title'] ?></h2>
                    <small class="short-desc"><?php echo get_field('featured_gadgets', 'option')['description'] ?></small>
                </div>
                <div class="row">
                    <div class="features customCol" ng-repeat="feature in features" style="">
                        <?php
                        if ($page = get_page_by_path('cac-dich-vu')) {
                            echo show_childpages_of_mainwork($page->ID);
                        }
                        ?>
                    </div>
                </div><!--/.row-->
            </div>
            <div class="col-md-6" style="margin-bottom: 40px">
                <div class="section-header">
                    <h2 class="section-title text-center wow fadeInDown animated"
                        style="visibility: visible; animation-name: fadeInDown;"><?php echo get_field('video_intro', 'option')['video_title'] ?></h2>
                    <small class="short-desc"><?php echo get_field('video_intro', 'option')['video_description'] ?></small>
                </div>
                <div class="row">
                    <div class="col-md-12" id="video_intro">
                        <?php while (have_rows('video_intro', 'option')): the_row(); ?>
                            <div class="carousel-inner" role="listbox">
                                <?php while (have_rows('video_link')): the_row();
                                    $items = get_sub_field('links');
                                    ?>
                                    <div class="embed-responsive embed-responsive-16by9" style="width: 100%;">
                                        <iframe class="embed-responsive-item" src="<?php echo $items['url'] ?>?rel=0?version=3&&showinfo=0"
                                                frameborder="0" allowfullscreen></iframe>
                                    </div>
                                <?php endwhile; ?>
                            </div>
                        <?php endwhile; ?>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/.container-->
</section><!--/#services-->
