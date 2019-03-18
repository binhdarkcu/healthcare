<?php get_header() ?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="conten col-md-8 col-sm-12 col-xs-12" style="margin-top:30px">
                <div class="childpages">
                    <div class="row">
                        <?php
                        $childArgs = array(
                            'sort_order' => 'ASC',
                            'sort_column' => 'menu_order',
                            'child_of' => get_the_ID()
                        );
                        $childLists = get_pages($childArgs);
                        foreach ($childLists as $childList):
                            $page_content = get_field('intro_description', $childList->ID);
                        ?>
                            <div class="col-md-6 col-sm-12 wow fadeInDown animated animated animated" style="visibility: visible; margin-bottom: 40px">
                                <div class="row wow fadeInDown animated animated" style="visibility: visible; animation-name: fadeInDown;">
                                    <div class="col-md-4 catItemImageBlock">
                                        <div class="news">
                                            <div class="article">
                                                <!----><a href="https://goldenhealthcarevn.com/dich-vu-y-te/dich-vu-bao-hiem/">
                                                    <div class="thumb" style="background-image: url(https://goldenhealthcarevn.com/wp-content/uploads/2019/03/insuran.jpg)"></div>
                                                </a><!---->
                                                <!---->
                                                <div class="catItemDateCreated">
                                                    <span class="day">Ngày14</span>
                                                    <span class="month">Tháng12</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8 post-list-right">
                                        <h3>
                                            <!----><a href="https://goldenhealthcarevn.com/dich-vu-y-te/dich-vu-bao-hiem/"><?php echo $childList->post_title ?></a><!---->
                                            <!---->
                                        </h3>
                                        <p class="block-ellipsis-home-news-3line" style="height: 100%; -webkit-line-clamp: 5;"><?php echo $page_content ?></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <div class="clearfix"></div>
                    <div class="paging pagenavi">
                        <div class="paging-normal">
                            <?php if (function_exists('wp_pagenavi')) {
                                wp_pagenavi(array('query' => $query));
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
            <!---->
            <div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
                <?php get_sidebar() ?>
            </div>
        </div></section>

</div>
<?php get_footer() ?>
