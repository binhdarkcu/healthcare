
<!------------------------------>
<!---------------SCRIP---------->
<!------------------------------>

</ng-view>
        <!--<ui-view></ui-view>-->
    </div>
    <!-------------------------------------------->
    <!-----------------FOOTER--------------------->
    <!-------------------------------------------->
    <!----><footer id="footer" ng-if="!isLoading" class="" style="">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 footer-left">
                    <!--Thông tin công ty vị trí google map -->
                </div>
                <div class="col-sm-2 footer-mid">
                  <!--facebook
                      zalo
                      Instagram
                      youtube
                      App mobile
                      -->
                </div>
                <div class="col-sm-6 footer-right">
                  <!--Thời gian làm việc các chuyên khoa-->
                </div>
            </div>
        </div>
        <div class="text-center"><span style="font-style:italic">Copyright © 2017</span></div>
    </footer><!----><!--/#footer-->

<!---------------------------------->
<!------------LOADING--------------->
<!---------------------------------->
<!---->
    <!-------------------------------------------->
    <!-----------------SCRIPT--------------------->
    <!-------------------------------------------->
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/jquery.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/bootstrap.min.js"></script>

    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/moment.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/moment-with-locales.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/bootstrap-datepicker.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/bootstrap-datepicker.vi.js"></script>

    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/owl.carousel.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/mousescroll.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/smoothscroll.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/jquery.prettyPhoto.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/jquery.isotope.min.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/jquery.inview.min.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/wow.min.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/main.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/underscore-min.js"></script>

    <script>
        $(document).ready(function () {
            $('.dropdown').hover(
                function () {
                    $(this).children('.sub-menu').slideDown(200);
                },
                function () {
                    $(this).children('.sub-menu').slideUp(200);
                }
            );

        }); // end ready
    </script>

    <script>
        $("#text-search").bind('keydown', function (e) {
            if (e.which == 13) {
                e.preventDefault();
                $("#btnSearch").click();
            }
        });
    </script>

<div id="eJOY__extension_root" style="all: unset;"></div></body></html>
