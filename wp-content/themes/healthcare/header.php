<!DOCTYPE html>
<!-- saved from url=(0020)http://bvpnt.org.vn/ -->
<html lang="en" ng-app="MyApp" class="csstransforms csstransforms3d csstransitions"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style type="text/css">[uib-typeahead-popup].dropdown-menu{display:block;}</style><style type="text/css">.uib-time input{width:50px;}</style><style type="text/css">[uib-tooltip-popup].tooltip.top-left > .tooltip-arrow,[uib-tooltip-popup].tooltip.top-right > .tooltip-arrow,[uib-tooltip-popup].tooltip.bottom-left > .tooltip-arrow,[uib-tooltip-popup].tooltip.bottom-right > .tooltip-arrow,[uib-tooltip-popup].tooltip.left-top > .tooltip-arrow,[uib-tooltip-popup].tooltip.left-bottom > .tooltip-arrow,[uib-tooltip-popup].tooltip.right-top > .tooltip-arrow,[uib-tooltip-popup].tooltip.right-bottom > .tooltip-arrow,[uib-tooltip-html-popup].tooltip.top-left > .tooltip-arrow,[uib-tooltip-html-popup].tooltip.top-right > .tooltip-arrow,[uib-tooltip-html-popup].tooltip.bottom-left > .tooltip-arrow,[uib-tooltip-html-popup].tooltip.bottom-right > .tooltip-arrow,[uib-tooltip-html-popup].tooltip.left-top > .tooltip-arrow,[uib-tooltip-html-popup].tooltip.left-bottom > .tooltip-arrow,[uib-tooltip-html-popup].tooltip.right-top > .tooltip-arrow,[uib-tooltip-html-popup].tooltip.right-bottom > .tooltip-arrow,[uib-tooltip-template-popup].tooltip.top-left > .tooltip-arrow,[uib-tooltip-template-popup].tooltip.top-right > .tooltip-arrow,[uib-tooltip-template-popup].tooltip.bottom-left > .tooltip-arrow,[uib-tooltip-template-popup].tooltip.bottom-right > .tooltip-arrow,[uib-tooltip-template-popup].tooltip.left-top > .tooltip-arrow,[uib-tooltip-template-popup].tooltip.left-bottom > .tooltip-arrow,[uib-tooltip-template-popup].tooltip.right-top > .tooltip-arrow,[uib-tooltip-template-popup].tooltip.right-bottom > .tooltip-arrow,[uib-popover-popup].popover.top-left > .arrow,[uib-popover-popup].popover.top-right > .arrow,[uib-popover-popup].popover.bottom-left > .arrow,[uib-popover-popup].popover.bottom-right > .arrow,[uib-popover-popup].popover.left-top > .arrow,[uib-popover-popup].popover.left-bottom > .arrow,[uib-popover-popup].popover.right-top > .arrow,[uib-popover-popup].popover.right-bottom > .arrow,[uib-popover-html-popup].popover.top-left > .arrow,[uib-popover-html-popup].popover.top-right > .arrow,[uib-popover-html-popup].popover.bottom-left > .arrow,[uib-popover-html-popup].popover.bottom-right > .arrow,[uib-popover-html-popup].popover.left-top > .arrow,[uib-popover-html-popup].popover.left-bottom > .arrow,[uib-popover-html-popup].popover.right-top > .arrow,[uib-popover-html-popup].popover.right-bottom > .arrow,[uib-popover-template-popup].popover.top-left > .arrow,[uib-popover-template-popup].popover.top-right > .arrow,[uib-popover-template-popup].popover.bottom-left > .arrow,[uib-popover-template-popup].popover.bottom-right > .arrow,[uib-popover-template-popup].popover.left-top > .arrow,[uib-popover-template-popup].popover.left-bottom > .arrow,[uib-popover-template-popup].popover.right-top > .arrow,[uib-popover-template-popup].popover.right-bottom > .arrow{top:auto;bottom:auto;left:auto;right:auto;margin:0;}[uib-popover-popup].popover,[uib-popover-html-popup].popover,[uib-popover-template-popup].popover{display:block !important;}</style><style type="text/css">.uib-datepicker-popup.dropdown-menu{display:block;float:none;margin:0;}.uib-button-bar{padding:10px 9px 2px;}</style><style type="text/css">.uib-position-measure{display:block !important;visibility:hidden !important;position:absolute !important;top:-9999px !important;left:-9999px !important;}.uib-position-scrollbar-measure{position:absolute !important;top:-9999px !important;width:50px !important;height:50px !important;overflow:scroll !important;}.uib-position-body-scrollbar-measure{overflow:scroll !important;}</style><style type="text/css">.uib-datepicker .uib-title{width:100%;}.uib-day button,.uib-month button,.uib-year button{min-width:100%;}.uib-left,.uib-right{width:100%}</style><style type="text/css">.ng-animate.item:not(.left):not(.right){-webkit-transition:0s ease-in-out left;transition:0s ease-in-out left}</style><style type="text/css">@charset "UTF-8";[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide:not(.ng-hide-animate){display:none !important;}ng\:form{display:block;}.ng-animate-shim{visibility:hidden;}.ng-anchor{position:absolute;}</style>

    <!--<base href="/">--><base href=".">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="">
    <?php $queried_object = get_queried_object();
    $feature_image_id = get_post_thumbnail_id($queried_object -> ID);
    $feature_image_meta = wp_get_attachment_image_src($feature_image_id, 'full');
    ?>
    <title>PHÒNG KHÁM ĐA KHOA QUỐC TẾ GOLDEN HEALTHCARE</title>

    <!--meta face-->
    <meta property="og:type" content="website">
    <meta property="og:url"            content="<?php the_permalink();?>" />
    <meta property="og:title"          content="<?php the_title();?>" />
    <meta property="og:description"    content="<?php echo wp_trim_words( $queried_object->post_content, 20, '...' );?>" />
    <meta property="og:image"          content="<?php echo $feature_image_meta[0];?>" />
    <meta name="keywords" content="GOLDEN HEALTHCARE, bệnh viện,chuyên khoa lao, bệnh phổi, bệnh viện hạng I">
    <meta name="robots" content="">
    <link rel="canonical" ng-href="">

    <link rel="apple-touch-icon" sizes="57x57" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="<?php echo get_stylesheet_directory_uri(); ?>/assets/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/favicon-16x16.png">
    <link rel="manifest" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<?php echo get_stylesheet_directory_uri(); ?>/assets/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/bootstrap-datepicker.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/animate.min.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/owl.carousel.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/owl.theme.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/owl.transitions.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/prettyPhoto.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/main.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/responsive.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/Site.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/default.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/loading-screen.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/style.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/lightbox.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/droplinetabs.css" rel="stylesheet">
    <link href="<?php echo get_stylesheet_directory_uri(); ?>/assets/select2.min.css" rel="stylesheet">
    <script type="text/javascript">
        var onloadCallback = function() {
            grecaptcha.render('example1', {
                'sitekey' : '6LdaBI8UAAAAAC_IYbbefBkIQ33GRb8K5Xb4GbUL'
            });
        };
    </script>
    <?php wp_head() ?>
</head>

<body id="home" class="homepage" ng-controller="AppController" style="">
    <!-------------------------------------------->
    <!-----------------CONTENT-------------------->
    <!-------------------------------------------->
    <div class="view-container">
        <header id="header">
            <nav  class="navbar navbar-default" role="banner">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#top-nav" aria-expanded="false" ng-click="show()">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="<?php echo get_site_url(); ?>">
                            <?php
                                $logoUrl = get_field('header_logo', 'option');
                            ?>
                            <img src="<?php echo $logoUrl; ?>" alt="PHÒNG KHÁM ĐA KHOA QUỐC TẾ GOLDEN HEALTHCARE" style="width:300px;">
                        </a>
                    </div>
                    <div style="float: left;margin-left: 5%;margin-top: 0;font-size: 18px; font-size: 18px; width: 40%;">
                        <h3 style="margin-top: 17px; font-size: 18px;">PHÒNG KHÁM ĐA KHOA QUỐC TẾ GOLDEN HEALTHCARE</h3>
                        Email: <?php echo get_field('footer_email', 'option'); ?> <br/>
                        Hotline: <?php echo get_field('footer_phone', 'option'); ?>
                    </div>
                    <div class="text-right language">
                        <?php  qtranxf_generateLanguageSelectCode(array(
                            'type'   => 'text'
                        ));
            ?>
                    </div>
                    <div class="text-right" style="float: right; margin-right: 32px;">
                        <form id="yw0" ng-submit="setPage(1)" class="ng-pristine ng-valid ng-valid-maxlength">
                            <div class="input-group" style="margin:auto;">
                                <input class="form-control ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength" type="text" maxlength="100" placeholder="Tìm kiếm bài viết" ng-model="searchText" style="width:300px; border-radius: 10px;" aria-invalid="false">

                                <div class="input-group-btn">
                                    <div class="btn-group" role="group">

                                        <div>
                                            <!--<button name="submit" class="btn btn-primary pull-right" style="width: 34px;height:34px; background-color: rgba(255,255,255,.1);border-color: #cccccc;border-radius: 10px;" type="image" <img style=" width="30px"; height="30px;"" src="../../../assets/css/images/tim-kiem.png" ></button>"-->
                                            <button name="submit" class="btn btn-primary pull-right" style="width: 34px;height:34px; background-color: rgba(15, 9, 206, 0.13);border-color: #cccccc;border-radius: 10px; padding: 0px 10px 0px; margin-right: 0">
                                                <i class="fa fa-search" style="font-size: 15px;color:black;"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="container">
                    <div class="navbar-right">
                        <div class="nav-menu">
                            <div id="droplinetabs1" class="droplinetabs">
                            <?php
                                wp_nav_menu(
                                           array(
                                               'theme_location' => 'primary_menus',
                                               'menu_class'     => 'nav navbar-nav uppercase',
                                               'menu_id'        => 'nav'
                                           )
                                       );
                            ?>
                        </div>
                        </div>
                    </div>
                </div>

                <div class="mobile-banner-slide text-center">
                    <div class="col-md-4 col-xs-4">
                        <a href="http://bvpnt.org.vn/tim-bac-si"><i class="fa fa-user-md"></i> Bác sĩ</a>
                    </div>
                    <div class="col-md-4 col-xs-4">
                        <a href="http://bvpnt.org.vn/dat-lich-hen"><i class="fa fa-calendar"></i> Đặt lịch</a>
                    </div>
                    <div class="col-md-4 col-xs-4">
                        <a href="http://bvpnt.org.vn/hoi-dap"><i class="fa fa-question-circle-o"></i> Hỏi đáp</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </nav>
        </header>
        <!----><ng-view class="" style=""><!------------------------------>
<!------------TEMPLATE---------->
<!------------------------------>
