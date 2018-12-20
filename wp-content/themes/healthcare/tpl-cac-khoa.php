<section>
  <div class="container">
    <div class="section-header">
        <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">Chuyên khoa</h2>
    </div>
    <div class="row chuyenkhoa">
      <!-- các icon chuyên khoa, bấn vào icon link đến bài viết được thiết lập. -->
      <?php
        $categories = get_categories();
        foreach( $categories as $category ) {

            $imgUrl = get_field('departments_image', $category);
            if(!empty($imgUrl)) {
            ?>
            <div class="col-md-2 item">
                <a href="<?php echo get_category_link( $category->term_id );?>">
                    <img class="img-responsive center-block" src="<?php echo $imgUrl; ?>"/>
                    <p><?php echo $category->name;?></p>
                </a>
            </div>
        <?php } } ?>



    </div>
  </div>
</section>
