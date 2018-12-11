
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
                <div class="col-md-4 footer-left">
                    <!--Thông tin công ty vị trí google map -->
                    <div class="row">
                        <div>
                            <p>Địa chỉ</p>
                            <div id="map" style="width: 100%;"><div style="width: 100%"><iframe width="100%" height="600" src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;coord=10.7768128,106.6320116&amp;q=L%C5%A9y%20B%C3%A1n%20B%C3%ADch%2C%20T%C3%A2n%20Ph%C3%BA%2C%20H%E1%BB%93%20Ch%C3%AD%20Minh%2C%20Vietnam+(HealthCare)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a href="https://www.maps.ie/map-my-route/">Draw map route</a></iframe></div><br /></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 footer-mid">
                  <!--facebook
                      zalo
                      Instagram
                      youtube
                      App mobile
                      -->
                      <div>
                          <p>Social Icon</p>
                      </div>
                </div>
                <div class="col-md-4 footer-right">
                  <!--Thời gian làm việc các chuyên khoa-->
                  <div>
                      <p>Thời gian làm việc các chuyên khoa</p>
                  </div>
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
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAh8UJlBYPy-X1kjEMyQ8Q22qA_WLsPC6s&callback=initMap"></script>

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
        // function initMap() {
        //     // The location of Uluru
        //     var uluru = {lat: -25.344, lng: 131.036};
        //     // The map, centered at Uluru
        //     var map = new google.maps.Map(
        //         document.getElementById('map'), {zoom: 4, center: uluru});
        //     // The marker, positioned at Uluru
        //     var marker = new google.maps.Marker({position: uluru, map: map});
        // }
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
