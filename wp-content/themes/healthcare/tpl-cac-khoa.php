<section style="margin-top: 40px">
  <div class="container">
    <div class="section-header">
        <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">Chuyên khoa</h2>
    </div>
    <div class="row chuyenkhoa" style="display: flex;flex-flow: row wrap;">
      <!-- các icon chuyên khoa, bấn vào icon link đến bài viết được thiết lập. -->
      <?php
        $categories = get_categories(array(
            'hide_empty' => false
        ));
        foreach( $categories as $category ) {
            $imgUrl = get_field('departments_image', $category);
            if(!empty($imgUrl)) {
            ?>
            <div class="col-md-2 col-sm-3 col-xs-12 item wow fadeInDown animated">
                <a href="<?php echo get_category_link( $category->term_id );?>">
                    <img class="img-responsive center-block" src="<?php echo $imgUrl; ?>"/>
                    <p><?php echo $category->name;?></p>
                </a>
            </div>
        <?php } } ?>
    </div>
  </div>
</section>
