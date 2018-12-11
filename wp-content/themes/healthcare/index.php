<?php get_header()?>
<div ng-init="loadData()">
        <?php get_template_part('tpl', 'slider')?>

        <?php get_template_part('tpl', 'main-work')?>

        <?php get_template_part('tpl', 'blog')?>

        <?php get_template_part('tpl', 'services')?>

    <section>
      <div class="container">
        <div class="section-header">
            <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">Chuyên khoa</h2>
        </div>
        <div class="row">
          <!-- các icon chuyên khoa, bấn vào icon link đến bài viết được thiết lập. -->
        </div>
      </div>
    </section>

    <section id="services">
      <div class="container">
        <div class="row">
          <!-- Hình ảnh: cho phép roll qua lại. -->
        </div>
      </div>
    </section>

</div>
<?php get_footer();?>
