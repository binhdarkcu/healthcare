<div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
    <div class="col-xs-12 cat-box">
        <div ng-show="Categories.length != 0" aria-hidden="true" class="ng-hide" style="">
            <h4 class="column-title">CHUYÊN MỤC</h4>
            <!---->
            <div style="height: 50px;"></div>
        </div>
        <h4 class="column-title">TIN TỨC MỚI NHẤT</h4>

        <?php $args_hoat_dong = array(
        	'posts_per_page'   => 5,
        	'offset'           => 0,
        	'orderby'          => 'date',
        	'order'            => 'DESC',
        	'post_type'        => 'hoat_dong',
        	'post_status'      => 'publish',
        );
        $posts_hoatdong = get_posts( $args_hoat_dong ); ?>

        <ul class="post-list">
        <?php foreach ( $posts_hoatdong as $post ) : setup_postdata( $post ); ?>
            <li><i class="fa fa-angle-right" aria-hidden="true"></i><a href="<?php the_permalink(); ?>"><?php the_title();?></a></li>
        <?php endforeach; ?>
        </ul>
        <br/>

        <h4 class="column-title">BÀI VIẾT LIÊN QUAN</h4>

        <?php $args_lienquan = array(
        	'posts_per_page'   => 5,
        	'offset'           => 0,
        	'orderby'          => 'rand',
        	'order'            => 'ASC',
        	'post_type'        => 'hoat_dong',
        	'post_status'      => 'publish',
        );
        $posts_lienquan = get_posts( $args_lienquan ); ?>

        <ul class="post-list">
        <?php foreach ( $posts_lienquan as $post ) : setup_postdata( $post ); ?>
            <li><i class="fa fa-angle-right" aria-hidden="true"></i><a href="<?php the_permalink(); ?>"><?php the_title();?></a></li>
        <?php endforeach; ?>
        </ul>
    </div>
</div>
