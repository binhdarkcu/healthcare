<style>
    video::-internal-media-controls-download-button {
        display: none;
    }

    video::-webkit-media-controls-enclosure {
        overflow: hidden;
    }

    video::-webkit-media-controls-panel {
        width: calc(100% + 30px); /* Adjust as needed */
    }

    .catItemImageBlock {
        margin: 0;
        padding: 0;
        position: relative;
    }

        .catItemImageBlock .catItemDateCreated {
            bottom: 9px;
            margin-left: 15px;
            position: absolute;
        }

            .catItemImageBlock .catItemDateCreated span {
                color: #ffffff;
                display: inline-block;
                margin-right: -4px;
                text-transform: uppercase;
                height: 20px;
                padding-right: 5px;
            }

            .catItemImageBlock .catItemDateCreated .day {
                background: #0ba2eb none repeat scroll 0 0;
            }

            .catItemImageBlock .catItemDateCreated .month {
                background: #5c58bb none repeat scroll 0 0;
                border-radius: 0px 20px 20px 0px;
            }

    .readMore {
        display: block;
        /*font-weight: 600;*/
        padding: 5px 10px;
        /*text-transform: uppercase;*/
        border: 1px solid #0ba2eb;
        color: #0ba2eb;
        margin-left: 15px;
    }

        .readMore:hover {
            color: #fff;
            background: #0ba2eb none repeat scroll 0 0;
        }

    .catItemImageBlock .catItemDateCreated {
        bottom: -4px;
        left: -15px;
        position: absolute;
    }

    .article, .thumb {
        width: 100%;
    }

    .input-group-btn {
        position: absolute !important;
        padding-left: 300px;
    }
</style>
</ng-view>
        <!--<ui-view></ui-view>-->
    </div>
    <!-------------------------------------------->
    <!-----------------FOOTER--------------------->
    <!-------------------------------------------->
    <!----><footer id="footer" ng-if="!isLoading" class="" style="">
        <div class="container">
            <div class="row">
                <div class="col-md-4 footer-title footer-left">
                    <!--Thông tin công ty vị trí google map -->
                    <div class="row">
                        <div>
                            <strong>Địa chỉ</strong>
                            <p>Địa chỉ: Bến xe An Sương, Quận 12<br/>SĐT: 000000000<br/>Email: aaa@gmail.com</p>
                            <div id="map" style="width: 100%;"><div style="width: 100%"><iframe width="95%" height="300" src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;coord=10.7768128,106.6320116&amp;q=L%C5%A9y%20B%C3%A1n%20B%C3%ADch%2C%20T%C3%A2n%20Ph%C3%BA%2C%20H%E1%BB%93%20Ch%C3%AD%20Minh%2C%20Vietnam+(HealthCare)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a href="https://www.maps.ie/map-my-route/">Draw map route</a></iframe></div><br /></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 footer-title footer-mid">
                  <!--facebook
                      zalo
                      Instagram
                      youtube
                      App mobile
                      -->
                      <p><strong>Mạng xã hội</strong></p>
                      <a href="">Facebook</a>
                      <a href="">Zalo</a>
                      <a href="">Instagram</a>
                      <a href="">Youtube</a>
                      <a href="">App Mobile</a>
                </div>
                <div class="col-md-4 footer-title footer-right">
                  <!--Thời gian làm việc các chuyên khoa-->
                  <div>
                      <strong>Thời gian làm việc các chuyên khoa</strong>
                      <p>- Giờ làm việc buổi sáng: Từ 7h30 - 12h.<br/>
                          - Giờ nghỉ trưa: Từ 12h – 13h.<br/>
                          - Giờ làm việc buổi chiều: Từ 13h - 16h30.</p>
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
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/jquery.mCustomScrollbar.concat.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#nav .menu-item-has-children').hover(
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
