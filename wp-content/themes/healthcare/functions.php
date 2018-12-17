<?php
    add_theme_support( 'post-thumbnails' );

    //register menu
    function register_menu() {
        register_nav_menus( array(
        	'primary_menus' => 'Primary menus'
        ) );
        register_nav_menu('primary_menus',__( 'primary_menus' ));
    }
    add_action( 'init', 'register_menu' );

    function show_childpages_shortcode($page_id) {

        // a shortcode should just return the content not echo html
        // so we start to create an object, and on the end we return it
        // if we dont do this the shortcode will be displayed in the top of the content
        ob_start();
        // only start if we are on a single page
        if ( is_page() ) {

            // get the ID of the current (parent) page
            $current_page_id = get_the_ID();

            // get all the children of the current page
            $child_pages = get_pages( array(
                'child_of' => $page_id,
            ) );

            // start only if we have some childpages
            if ($child_pages) {

                // if we have some children, display a list wrapper
                echo '<div class="childpages">';

                // loop trough each childpage
                foreach ($child_pages as $child_page) {

                    $page_id    = $child_page->ID; // get the ID of the childpage
                    $page_link  = get_permalink( $page_id ); // returns the link to childpage
                    $page_content = get_field('intro_description', $page_id);
                    $page_img   = get_the_post_thumbnail_url( $page_id, 'medium' ); // returns the featured image <img> element
                    $page_title = $child_page->post_title; // returns the title of the child page
                    ?>
                    <div class="row wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                        <div class="col-md-4 catItemImageBlock">
                            <div class="news">
                                <div class="article">
                                    <!----><a href="<?php echo $page_link; ?>">
                                        <div class="thumb" style="background-image: url(<?php echo $page_img;?>)"></div>
                                    </a><!---->
                                    <!---->
                                    <div class="catItemDateCreated">
                                        <span class="day">Ngày <?php echo get_the_date('d', $page_id); ?></span>
                                        <span class="month">Tháng <?php echo get_the_date('m', $page_id); ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 post-list-right">
                            <h3>
                                <!----><a href="<?php echo $page_link; ?>"><?php echo $page_title; ?></a><!---->
                                <!---->
                            </h3>
                            <p class="block-ellipsis-home-news-3line" style="height: 100%; -webkit-line-clamp: 5;">
                                <?php echo $page_content;?>
                            </p>
                        </div>
                        <div class="clearfix"></div>
                        <hr>
                    </div>
                    <?php

                }//END foreach ($child_pages as $child_page)

                echo '</div>';

            }//END if ($child_pages)

        }//END if (is_page())

        // return the object
        return ob_get_clean();

    }
    add_shortcode( 'show_childpages', 'show_childpages_shortcode' );


    if( function_exists('acf_add_options_page') ) {
       acf_add_options_page(array(
        'page_title'  => 'Theme Options',
        'menu_title' => 'Theme Options',
        'menu_slug'  => 'theme-general-settings'
       ));
         acf_add_options_sub_page(array(
          'page_title'  => 'Header',
          'menu_title' => 'Header',
          'parent_slug' => 'theme-general-settings',
         ));
       acf_add_options_sub_page(array(
        'page_title'  => 'Footer',
        'menu_title' => 'Footer',
        'parent_slug' => 'theme-general-settings',
         ));
    }

    function revcon_change_post_label() {
        global $menu;
        global $submenu;
        $menu[5][0] = 'Bác sĩ';
        $submenu['edit.php'][5][0] = 'Bác sĩ';
        $submenu['edit.php'][15][0] = 'Các Khoa';
        $submenu['edit.php'][10][0] = 'Thêm Bác sĩ';
        $submenu['edit.php'][16][0] = 'Thêm Tags';
    }
    function revcon_change_post_object() {
        global $wp_post_types;
        $labels = &$wp_post_types['post']->labels;
        $labels->name = 'Bác sĩ';
        $labels->singular_name = 'Bác sĩ';
        $labels->add_new = 'Thêm Bác sĩ';
        $labels->add_new_item = 'Thêm Bác sĩ';
        $labels->edit_item = 'Sửa Bác sĩ';
        $labels->new_item = 'Bác sĩ';
        $labels->view_item = 'Xem Bác sĩ';
        $labels->search_items = 'Tìm Kiếm';
        $labels->not_found = 'No News found';
        $labels->not_found_in_trash = 'No News found in Trash';
        $labels->all_items = 'Tất cả Bác sĩ';
        // $labels->menu_name = 'Profiles';
        $labels->name_admin_bar = 'Bác sĩ';
    }
    add_action( 'admin_menu', 'revcon_change_post_label' );
    add_action( 'init', 'revcon_change_post_object' );
?>
