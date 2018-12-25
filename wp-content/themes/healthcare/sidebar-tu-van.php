<div class="col-xs-12 cat-box">
    <?php $queried_object = get_queried_object(); ?>

    <h4 class="column-title" style="text-transform: uppercase;">Các câu hỏi</h4>

    <?php
      $categories = get_categories('taxonomy=dwqa-question_category');
      foreach( $categories as $category ) {

          $imgUrl = get_field('departments_image', $category);
          ?>
          <div class="item wow fadeInDown animated">
              <a href="<?php echo get_category_link( $category->term_id );?>" style="font-size: 16px; color: #000;">
                  <p><?php echo $category->name;?></p>
              </a>
          </div>
      <?php } ?>


    <br/>

    <h4 class="column-title">CÁC BÀI VIẾT KHÁC</h4>

    <?php $args_lienquan = array(
        'posts_per_page' => 5,
        'offset' => 0,
        'orderby' => 'rand',
        'order' => 'ASC',
        'post_type' => 'hoat_dong',
        'post_status' => 'publish',
    );
    $posts_lienquan = get_posts($args_lienquan); ?>

    <ul class="post-list">
        <?php foreach ($posts_lienquan as $post) : setup_postdata($post); ?>
            <li><i class="fa fa-angle-right" aria-hidden="true"></i><a
                        href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
        <?php endforeach; ?>
    </ul>
</div>
