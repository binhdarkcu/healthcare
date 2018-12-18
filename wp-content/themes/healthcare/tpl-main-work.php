<section id="services">
    <div class="container">
        <div class="section-header">
            <h2 class="section-title text-center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">DỊCH VỤ CHẤT LƯỢNG CAO</h2>
        </div>

        <div class="row">
            <div class="features" ng-repeat="feature in features" style="">
                <?php
                    if ( $page = get_page_by_path( 'cac-dich-vu' ) ){
                        echo show_childpages_of_mainwork($page->ID);
                    }
                ?>
                
            </div>

        </div><!--/.row-->
    </div><!--/.container-->
</section><!--/#services-->
