<?php get_header()?>
<?php
    $queried_object = get_queried_object();
?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px">

            <form id="yw0" ng-submit="setPage(1)" class="ng-pristine ng-valid ng-valid-maxlength">
                <div class="input-group" style="margin:auto;">
                    <input class="form-control ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength" type="text" maxlength="100" placeholder="Tìm kiếm bài viết" ng-model="searchText" style="width:300px; border-radius: 10px;" aria-invalid="false">

                    <div class="input-group-btn">
                        <div class="btn-group" role="group">

                            <div>
                                <!--<button name="submit" class="btn btn-primary pull-right" style="width: 34px;height:34px; background-color: rgba(255,255,255,.1);border-color: #cccccc;border-radius: 10px;" type="image" <img style=" width="30px"; height="30px;"" src="../../../assets/css/images/tim-kiem.png" ></button>"-->
                                <button name="submit" class="btn btn-primary pull-right" style="width: 34px;height:34px; background-color: rgba(15, 9, 206, 0.13);border-color: #cccccc;border-radius: 10px; padding: 0px 10px 0px; margin-right: 770px">
                                    <i class="fa fa-search" style="font-size: 15px;color:black;"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="conten col-md-8 col-sm-12 col-xs-12" style="margin-top:30px">

                <?php

                if ( $page = get_page_by_path( $queried_object->post_name ) ){
                    echo show_childpages_shortcode($page->ID);
                } else {
                    ?>
                    <?php
                        while ( have_posts() ) : the_post();
                    ?>
                    <h3 class="column-title"><?php echo the_title();?></h3>
                    <div class="posts">
                        <?php echo the_content() ;?>
                    </div>
                    <?php endwhile; ?>
                    <?php
                }

                ?>

            </div>
            <!----><div class="col-md-4 col-sm-12 col-xs-12" ng-include="'app/shared/template-include/quangcao-sidebar.template.html'" style="padding: 0px;"><div class="col-xs-12 cat-box sidebar">
        <div>
            <div class="row" ng-show="advertises != null" style="" aria-hidden="false">
                <h2 class="title-post1">Quảng cáo</h2>
                <div class="title-line"></div>
                <!----><div ng-repeat="item in advertises | limitTo: 10" class="expert-item">
                    <a href="#">
                        <img ng-src="<?php echo get_stylesheet_directory_uri(); ?>/assets/tai.jpg" style="width:100%; object-fit:cover;border-radius: 10px;" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/tai.jpg" align="middle">
                    </a>
                </div><!---->
            </div>
        </div>
    </section>

</div>
<?php get_footer();?>
