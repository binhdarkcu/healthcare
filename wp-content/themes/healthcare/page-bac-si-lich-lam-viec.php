<?php /* Template Name: Lịch làm việc */ ?>
<?php get_header() ?>
<?php
$queried_object = get_queried_object();
?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="conten col-md-8 col-sm-12 col-xs-12">
                <?php if (is_null(get_page_by_path($queried_object->post_name))) { ?>
                    <div class="row wow fadeInDown animated"
                         style="visibility: visible; animation-name: fadeInDown; margin-bottom: 30px;">
                        <h3 class="column-title">Thông báo</h3>
                        <?php
                        while (have_posts()) : the_post();
                            ?>
                            <?php echo get_field('intro_description') ?>
                        <?php endwhile; ?>
                    </div>
                <?php } ?>
                <div class="row wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                    <?php
                    if ($page = get_page_by_path($queried_object->post_name)) { ?>
                        <h3 class="column-title">Các chuyên khoa</h3>
                        <div class="col-md-12">
                            <div class="row" style="display: flex; flex-flow: wrap row">
                                <?php
                                while (have_posts()) : the_post();
                                    $categories =  get_categories(
                                        array('exclude' => 1)
                                    );
                                    foreach ($categories as $category) :
                                        setup_postdata( $category );
                                        $imgUrl = get_field('departments_image', $category);
                                        ?>
                                        <div class="col-md-3" style="text-align: center; margin-bottom: 15px;">
                                            <img style="width: 50%; display: table; margin: auto;" src="<?php echo $imgUrl ?>" alt="">
                                            <a href="<?php echo get_category_link( $category->term_id );?>"><?php echo $category->name ?></a>
                                        </div>
                                    <?php endforeach; endwhile; ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <h3 class="column-title" style="margin-top: 20px;">Kết nối trực tuyến</h3>
                        <div class="icon-social">
                            <?php if( get_field('footer_socials', 'option') ): ?>
                                <?php while(has_sub_field('footer_socials', 'option')): ?>
                                    <a style="display: inline-block;" class="<?php echo get_sub_field('social_name'); ?> icon-footer" href="<?php echo get_sub_field('social_link'); ?>"><?php echo get_sub_field('social_name'); ?></a>
                                <?php endwhile; ?>
                            <?php endif; ?>
                        </div>
                    <?php } else {
                        ?>
                        <?php
                        while (have_posts()) : the_post();
                            ?>
                            <h3 class="column-title"><?php echo the_title(); ?></h3>
                            <div class="posts">
                                <div class="table-responsive">
                                    <?php
                                    $args = array(
                                        'post_type' => 'lich_kham_benh',
                                        'post_status' => 'publish',
                                        'posts_per_page' => 1
                                    );
                                    $query = new WP_Query($args);
                                    if ($query->have_posts()) : while ($query->have_posts()) : $query->the_post();
                                        ?>
                                        <table class="table-bordered table-hover tb-shedule" style="width: 100%;">
                                            <tbody>
                                            <tr>
                                                <th>Thứ 2</th>
                                                <th>Thứ 3</th>
                                                <th>Thứ 4</th>
                                                <th>Thứ 5</th>
                                                <th>Thứ 6</th>
                                                <th>Thứ 7</th>
                                                <th>Chủ nhật</th>
                                            </tr>
                                            <tr class="thead-light">
                                                <th colspan="7">Sáng (7h30 - 11h30)</th>
                                            </tr>
                                            <tr>
                                                <?php
                                                if (have_rows('schdule_week_time_morning')):
                                                    while (have_rows('schdule_week_time_morning')): the_row();
                                                        $dayItems = get_sub_field('schedule_day_week_morning');
                                                        foreach ($dayItems as $dayItem) {
                                                            $names = $dayItem["week_doctor_morning"];
                                                            ?>
                                                            <td class="show_doctors"><?php
                                                                foreach ($names as $name) {
                                                                    echo '<a href="' . get_the_permalink($name->ID) . '">' . $name->post_title . '</a>';
                                                                }
                                                                ?></td>
                                                        <?php } endwhile; endif; ?>
                                            </tr>
                                            <tr class="thead-light">
                                                <th colspan="7">Chiều (13h00 - 17h00)</th>
                                            </tr>
                                            <tr>
                                                <?php
                                                if (have_rows('schdule_week_time_afternoon')):
                                                    while (have_rows('schdule_week_time_afternoon')): the_row();
                                                        $dayItems = get_sub_field('schedule_day_week_afternoon');
                                                        foreach ($dayItems as $dayItem) {
                                                            $names = $dayItem["week_doctor_afternoon"];
                                                            ?>
                                                            <td class="show_doctors"><?php
                                                                foreach ($names as $name) {
                                                                    echo '<a href="' . get_the_permalink($name->ID) . '">' . $name->post_title . '</a>';
                                                                }
                                                                ?></td>
                                                        <?php } endwhile; endif; ?>
                                            </tr>
                                            <tr class="thead-light">
                                                <th colspan="7">Tối (18h00 - 19h30)</th>
                                            </tr>
                                            <tr>
                                                <?php
                                                if (have_rows('schdule_week_time_night')):
                                                    while (have_rows('schdule_week_time_night')): the_row();
                                                        $dayItems = get_sub_field('schedule_day_week_night');
                                                        foreach ($dayItems as $dayItem) {
                                                            $names = $dayItem["week_doctor_night"];
                                                            ?>
                                                            <td class="show_doctors"><?php
                                                                foreach ($names as $name) {
                                                                    echo '<a href="' . get_the_permalink($name->ID) . '">' . $name->post_title . '</a>';
                                                                }
                                                                ?></td>
                                                        <?php } endwhile; endif; ?>
                                            </tr>
                                            </tbody>
                                        </table>
                                    <?php endwhile;endif;
                                    wp_reset_postdata(); ?>
                                </div>
                            </div>
                        <?php endwhile; ?>
                        <?php
                    }
                    ?>
                    <div class="clearfix"></div>
                    <!-- <hr> -->
                </div>
            </div>
            <!---->
            <div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
                <?php get_sidebar('bac-si-lich-lam-viec'); ?>
            </div>
    </section>

</div>
<?php get_footer(); ?>
