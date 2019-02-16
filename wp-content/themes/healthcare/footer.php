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
<!---->
<footer id="footer" ng-if="!isLoading" class="" style="">
    <div class="container">
        <div class="row">
            <div class="col-md-4 footer-title footer-left">
                <!--Thông tin công ty vị trí google map -->
                <div class="row">
                    <div>
                        <strong>Thông tin website</strong>
                        <p>Địa chỉ: <?php echo get_field('footer_address', 'option'); ?><br/>Số Điện
                            Thoại: <?php echo get_field('footer_phone', 'option'); ?>
                            <br/>Email: <?php echo get_field('footer_email', 'option'); ?></p>
                        <div id="map" style="width: 100%;">
                            <div style="width: 100%">
                                <iframe style="width: 100%;"
                                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.0317355923103!2d106.64532531513923!3d10.808881261548633!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175294151d1bd45%3A0xa9413fb2af4c4217!2zMzcvQzcgxJDGsOG7nW5nIEhvw6BuZyBIb2EgVGjDoW0sIFBoxrDhu51uZyAxNSwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1545809041326"
                                        width="400" height="450" frameborder="0" style="border:0"
                                        allowfullscreen></iframe>
                            </div>
                            <br/></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 footer-title footer-mid">

                <p><strong>Mạng xã hội</strong></p>
                <?php if (get_field('footer_socials', 'option')): ?>
                    <ul>

                        <?php while (has_sub_field('footer_socials', 'option')): ?>
                            <a href="<?php echo get_sub_field('social_link'); ?>"><?php echo get_sub_field('social_name'); ?></a>

                        <?php endwhile; ?>

                    </ul>

                <?php endif; ?>

            </div>
            <div class="col-md-4 footer-title footer-right">
                <!--Thời gian làm việc các chuyên khoa-->
                <div>
                    <strong>Thời gian làm việc các chuyên khoa</strong>
                    <?php echo get_field('footer_working_time', 'option'); ?>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center"><span style="font-style:italic">Copyright © 2017</span></div>
    <?php wp_footer() ?>
</footer><!----><!--/#footer-->

<!---------------------------------->
<!------------LOADING--------------->
<!---------------------------------->
<!---->
<!-------------------------------------------->
<!-----------------SCRIPT--------------------->
<!-------------------------------------------->
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
        async defer>
</script>

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
<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/lightbox.js"></script>
<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/droplinemenu.js"></script>
<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/jquery.da-share.js"></script>
<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/select2.min.js"></script>
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
<script type="text/javascript">

    //build menu with DIV ID="myslidemenu" on page:
    droplinemenu.buildmenu("droplinetabs1")

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
<div style="bottom:0px; position:fixed; right:10px; width:350px; text-align:right; z-index:1000" id="footerchat">
    <!-- START IMsupporting.com Live support software, Live help software code -->
    <script type="text/javascript" src="https://support1.imsupporting.com/welcome2/popup.js"></script>
    <SCRIPT LANGUAGE=JAVASCRIPT TYPE="TEXT/JAVASCRIPT">
        <!--
        Hide
        script
        from
        older
        browsers
        var docref = "noref";
        if (document.referrer != '') {
            docref = document.referrer;
        }
        document.write('<a href="javascript:openSupport(\'9220181225304\',\'Welcome\');"><img src="https://status.imsupporting.com/status.php?siteid=9220181225304&amp;style=128&amp;docref=' + docref + '" border="0" alt="live chat software" title="Launch live chat"/></a>');
        //-- Stop hiding script -->
    </SCRIPT>
    <noscript><a href="http://www.imsupporting.com" title="Live chat software" target="_blank">Live Chat software</a>
    </noscript>
    <!-- End IMsupporting Code -->
</div>
