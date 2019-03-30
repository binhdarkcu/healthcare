<?php
    require_once('dw-question/custom.php'); //Customize functions of plugins Dw-question
    require_once('inc/api.php'); //Customize functions of plugins Dw-question
    require_once('inc/send_mail.php');

    add_theme_support('post-thumbnails');

    //register menu
    function register_menu() {
        register_nav_menus(array(
            'primary_menus' => 'Primary menus',
            'top_nav' => 'Top Navigation'
        ));
    }

    add_action('init', 'register_menu');

    add_filter('wp_nav_menu_objects', 'my_wp_nav_menu_objects', 10, 2);

    function my_wp_nav_menu_objects($items, $args) {

        // loop
        foreach ($items as &$item) {

            // vars
            $icon = get_field('menu_header', $item);


            // append icon
            if ($icon) {

                $item->title .= ' <i class="fa" data-src="' . $icon . '"></i>';

            }

        }


        // return
        return $items;

    }

    function new_submenu_class($menu) {
        $menu = preg_replace('/ class="sub-menu"/', '/ class="submenu_changed" /', $menu);
        return $menu;
    }

    add_filter('wp_nav_menu', 'new_submenu_class');
    function show_childpages_departments($page_id) {

        // a shortcode should just return the content not echo html
        // so we start to create an object, and on the end we return it
        // if we dont do this the shortcode will be displayed in the top of the content
        ob_start();
        // only start if we are on a single page
        if (is_page()) {

            // get the ID of the current (parent) page
            $current_page_id = get_the_ID();

            // get all the children of the current page
            $child_pages = get_pages(array(
                'child_of' => $page_id,
            ));

            // start only if we have some childpages
            if ($child_pages) {

                // if we have some children, display a list wrapper
                echo '<div class="childpages">';

                // loop trough each childpage
                foreach ($child_pages as $child_page) {

                    $page_id = $child_page->ID; // get the ID of the childpage
                    $page_link = get_permalink($page_id); // returns the link to childpage
                    $page_content = get_field('intro_description', $page_id);
                    $page_img = get_the_post_thumbnail_url($page_id, 'medium'); // returns the featured image <img> element
                    $page_title = $child_page->post_title; // returns the title of the child page
                    ?>
                    <div class="col-md-4" style="margin-bottom: 20px;">
                        <div class="col-md-4 catItemImageBlock">
                            <div class="news">
                                <div class="article">
                                    <!----><a href="<?php echo $page_link; ?>">
                                        <div class="thumb" style="background-image: url(<?php echo $page_img; ?>)"></div>
                                    </a><!---->
                                    <!---->
                                    <div class="catItemDateCreated">
                                        <?php
                                        $currentLang = qtrans_getLanguage();
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 post-list-right">
                            <h4>
                                <!----><a href="<?php echo $page_link; ?>"><?php echo $page_title; ?></a><!---->
                                <!---->
                            </h4>
                            <p class="block-ellipsis-home-news-3line" style="height: 100%; -webkit-line-clamp: 5;">
                                <?php echo wp_trim_words($page_content, 10, '...'); ?>
                            </p>
                            <a href="#" style="">Chi tiết</a>
                        </div>
                    </div>
                    <?php

                }//END foreach ($child_pages as $child_page)
                ?>
                <div class="social col-md-5">
                    <h4><a href="">Kết nối trực tuyến</a></h4>
                    <div class="icon-social">
                        <?php if (get_field('footer_socials', 'option')): ?>
                            <?php while (has_sub_field('footer_socials', 'option')): ?>
                                <a style="display: inline-block;"
                                   class="<?php echo get_sub_field('social_name'); ?> icon-footer"
                                   href="<?php echo get_sub_field('social_link'); ?>"><?php echo get_sub_field('social_name'); ?></a>
                            <?php endwhile; ?>
                        <?php endif; ?>
                    </div>
                </div>
                </div>
                <?php

            }//END if ($child_pages)

        }//END if (is_page())

        // return the object
        return ob_get_clean();

    }

    add_shortcode('show_childpages', 'show_childpages_departments');

    function show_childpages_shortcode($page_id) {

        // a shortcode should just return the content not echo html
        // so we start to create an object, and on the end we return it
        // if we dont do this the shortcode will be displayed in the top of the content
        ob_start();
        // only start if we are on a single page
        if (is_page()) {

            // get the ID of the current (parent) page
            $current_page_id = get_the_ID();

            // get all the children of the current page
            $child_pages = get_pages(array(
                'child_of' => $page_id,
            ));

            // start only if we have some childpages
            if ($child_pages) {

                // if we have some children, display a list wrapper
                echo '<div class="childpages">';

                // loop trough each childpage
                foreach ($child_pages as $child_page) {

                    $page_id = $child_page->ID; // get the ID of the childpage
                    $page_link = get_permalink($page_id); // returns the link to childpage
                    $page_content = get_field('intro_description', $page_id);
                    $page_img = get_the_post_thumbnail_url($page_id, 'medium'); // returns the featured image <img> element
                    $page_title = $child_page->post_title; // returns the title of the child page
                    ?>
                    <div class="row wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                        <div class="col-md-4 catItemImageBlock">
                            <div class="news">
                                <div class="article">
                                    <!----><a href="<?php echo $page_link; ?>">
                                        <div class="thumb" style="background-image: url(<?php echo $page_img; ?>)"></div>
                                    </a><!---->
                                    <!---->
                                    <div class="catItemDateCreated">
                                        <?php
                                        $currentLang = qtrans_getLanguage();
                                        ?>
                                        <span class="day"><?php echo $currentLang == 'en' ? 'Day' : 'Ngày'; ?><?php echo get_the_date('d', $page_id); ?></span>
                                        <span class="month"><?php echo $currentLang == 'en' ? 'Month' : 'Tháng'; ?><?php echo get_the_date('m', $page_id); ?></span>
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
                                <?php echo $page_content; ?>
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

    add_shortcode('show_childpages', 'show_childpages_shortcode');

    function show_childpages_of_mainwork($page_id) {

        // a shortcode should just return the content not echo html
        // so we start to create an object, and on the end we return it
        // if we dont do this the shortcode will be displayed in the top of the content
        ob_start();
        // only start if we are on a single page
        if (is_page() || is_home()) {
            // get the ID of the current (parent) page
            $current_page_id = get_the_ID();
            // get all the children of the current page
            $child_pages = get_pages(array(
                'child_of' => $page_id,
            ));

            // start only if we have some childpages
            if ($child_pages) {

                // if we have some children, display a list wrapper
                echo '<div class="childpages">';

                // loop trough each childpage
                foreach ($child_pages as $child_page) {

                    $page_id = $child_page->ID; // get the ID of the childpage
                    $page_link = get_permalink($page_id); // returns the link to childpage
                    $page_content = get_field('intro_description', $page_id);
                    $page_img = get_the_post_thumbnail_url($page_id, 'medium'); // returns the featured image <img> element
                    $page_title = $child_page->post_title; // returns the title of the child page
                    ?>
                    <div class="col-md-4 col-sm-6 wow fadeInUp service-box animated" data-wow-duration="300ms"
                         data-wow-delay="0ms"
                         style="visibility: visible; animation-duration: 300ms; animation-delay: 0ms; animation-name: undefined;">
                        <div class="service-box-pad">
                            <div class="media service-box">
                                <div class="pull-left" style="width: 100%;text-align: center;">
                                    <i class="fa"
                                       style="background: url(<?php echo $page_img; ?>); background-size: cover;"></i>
                                    <a href="<?php echo $page_link; ?>">
                                        <h4 class="media-heading block-ellipsis-home-news-2line"
                                            style="line-height:1.5 !important;font-size: 15px;"><?php echo $page_title; ?></h4>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->
                    <?php

                }//END foreach ($child_pages as $child_page)

                echo '</div>';

            }//END if ($child_pages)

        }//END if (is_page())

        // return the object
        return ob_get_clean();

    }

    add_shortcode('show_childpages_of', 'show_childpages_of_mainwork');

    function codession_qtranslatex_string($content) {
        $total_lang = substr_count($content, '[:');
        $lang = array();
        $start_index = 0;

        if ($total_lang > 0) {
            while ($total_lang--) {
                // last language
                if ($total_lang == 0) {
                    $lang_code = substr($content, $start_index + 2, 2);
                    $lang[$lang_code] = substr($content, $start_index + 5);
                    break;
                }
                // find the occurance of "[" from start
                $end_index = strpos($content, '[:', $start_index + 5);
                $lang_code = substr($content, $start_index + 2, 2);
                if ($end_index) {
                    $lang[$lang_code] = substr($content, $start_index + 5, $end_index - $start_index - 5);
                    $start_index = $end_index;
                } else {
                    return false;
                }
            }
            return $lang;
        } else {
            return false;
        }
    }

    if (function_exists('acf_add_options_page')) {
        acf_add_options_page(array(
            'page_title' => 'Theme Options',
            'menu_title' => 'Theme Options',
            'menu_slug' => 'theme-general-settings'
        ));
        acf_add_options_sub_page(array(
            'page_title' => 'Header',
            'menu_title' => 'Header',
            'parent_slug' => 'theme-general-settings',
        ));
        acf_add_options_sub_page(array(
            'page_title' => 'Footer',
            'menu_title' => 'Footer',
            'parent_slug' => 'theme-general-settings',
        ));
        acf_add_options_sub_page(array(
            'page_title' => 'Dịch vụ',
            'menu_title' => 'Dịch vụ',
            'parent_slug' => 'theme-general-settings',
        ));
        acf_add_options_sub_page(array(
            'page_title' => 'Tiêu đề',
            'menu_title' => 'Tiêu đề',
            'parent_slug' => 'theme-general-settings',
        ));
        acf_add_options_sub_page(array(
            'page_title' => 'Danh sách công ty',
            'menu_title' => 'Danh sách công ty',
            'parent_slug' => 'theme-general-settings',
        ));
    }

    function revcon_change_post_label()  {
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

    add_action('admin_menu', 'revcon_change_post_label');
    add_action('init', 'revcon_change_post_object');

    function customize_acf() {
        echo '<style>
                .d-none {
                    display: none !important;
                } 
          </style>';
    }

    add_action('admin_head', 'customize_acf');

    /* The AJAX handler function */
    function localize_my_scripts() {
        wp_enqueue_script('jquery-script', get_template_directory_uri() . '/assets/jquery.js', array('jquery'));
        wp_enqueue_script('moment-script', get_template_directory_uri() . '/assets/moment.js', array('jquery'));
        wp_enqueue_script('bootstrap-script', get_template_directory_uri() . '/assets/bootstrap.min.js', array('jquery'));
        wp_enqueue_script('moment-locales-script', get_template_directory_uri() . '/assets/moment-with-locales.js', array('jquery'));
        wp_enqueue_script('bootstrap-datepicker', get_template_directory_uri() . '/assets/bootstrap-datepicker.js', array('jquery'));
        wp_enqueue_script('bootstrap-datepicker-vi', get_template_directory_uri() . '/assets/bootstrap-datepicker.vi.js', array('jquery'));
        wp_enqueue_script('main-script', get_template_directory_uri() . '/assets/main.js', array('jquery'));
        wp_enqueue_script('jquery-validation', get_template_directory_uri() . '/assets/jquery.validate.min.js', array('jquery'));
        wp_enqueue_script('ajax-script', get_template_directory_uri() . '/assets/ajaxCall.js', array('jquery'));
        wp_localize_script('ajax-script', 'my_ajax_insert_db', ['ajax_url' => admin_url('admin-ajax.php')]);
    }

    add_action('wp_enqueue_scripts', 'localize_my_scripts');

    function insert_db() {
        // Do your processing here (save to database etc.)
        // All WP API functions are available for you here
        global $wpdb;
        $id_doctor = (isset($_POST['id_doctor'])) ? $_POST['id_doctor'] : '';
        $day_booked = (isset($_POST['day_booked'])) ? $_POST["day_booked"] : '';
        $time_booked = (isset($_POST['time_booked'])) ? $_POST['time_booked'] : '';
        $symptom = (isset($_POST['symptom'])) ? $_POST['symptom'] : '';
        $full_name = (isset($_POST['full_name'])) ? $_POST['full_name'] : '';
        $birthday = (isset($_POST['birthday'])) ? $_POST['birthday'] : '';
        $gender = (isset($_POST['gender'])) ? $_POST['gender'] : '';
        $email = (isset($_POST['email'])) ? $_POST['email'] : '';
        $phone = (isset($_POST['phone'])) ? $_POST['phone'] : '';
        $examination = (isset($_POST['examination'])) ? $_POST['examination'] : '';
        $client_code = (isset($_POST['client_code'])) ? $_POST['client_code'] : '';
        $wpdb->insert('wp_dathen', array(
            'id_doctor' => $id_doctor,
            'dayChecked' => $day_booked,
            'time' => $time_booked,
            'symptom' => $symptom,
            'full_name' => $full_name,
            'birthday' => $birthday,
            'gender' => $gender,
            'email' => $email,
            'phone' => $phone,
            'examination' => $examination,
            'client_code' => $client_code
        ));
        send_mail($full_name,$email, $detect_email = true);
        wp_die(); // this is required to terminate immediately and return a proper response
    }

    // This will allow not logged in users to use the functionality
    add_action('wp_ajax_nopriv_action_insert_db', 'insert_db');
    // This will allow only logged in users to use the functionality
    add_action('wp_ajax_action_insert_db', 'insert_db');

    function insert_db_schedule_company() {
        // Do your processing here (save to database etc.)
        // All WP API functions are available for you here
        global $wpdb;
        $company_name = (isset($_POST['company_name'])) ? $_POST['company_name'] : '';
        $amount = (isset($_POST['amount'])) ? $_POST["amount"] : '';
        $name = (isset($_POST['name'])) ? $_POST['name'] : '';
        $phone = (isset($_POST['phone'])) ? $_POST['phone'] : '';
        $birthday = (isset($_POST['birthday'])) ? $_POST['birthday'] : '';
        $gender = (isset($_POST['gender'])) ? $_POST['gender'] : '';
        $email = (isset($_POST['email'])) ? $_POST['email'] : '';
        $marital_status = (isset($_POST['marital_status'])) ? $_POST['marital_status'] : '';
        $day = (isset($_POST['day'])) ? $_POST['day'] : '';
        $sessions = (isset($_POST['sessions'])) ? $_POST['sessions'] : '';
        $employee_code = (isset($_POST['employee_code'])) ? $_POST['employee_code'] : '';
        $note = (isset($_POST['note'])) ? $_POST['note'] : '';
        $wpdb->insert('wp_company', array(
            'company_name' => $company_name,
            'amount' => $amount,
            'name' => $name,
            'birthday' => $birthday,
            'gender' => $gender,
            'email' => $email,
            'phone' => $phone,
            'marital_status' => $marital_status,
            'day' => $day,
            'sessions' => $sessions,
            'employee_code' => $employee_code,
            'note' => $note
        ));
        $result = "SELECT * FROM wp_company";
        header('Content-Type: application/json');
        echo json_encode(
            $wpdb->get_results($result, OBJECT)
        );
        send_mail($name,$email, $detect_email = false);
        wp_die(); // this is required to terminate immediately and return a proper response
    }

    // This will allow not logged in users to use the functionality
    add_action('wp_ajax_nopriv_action_insert_db_schedule_company', 'insert_db_schedule_company');
    // This will allow only logged in users to use the functionality
    add_action('wp_ajax_action_insert_db_schedule_company', 'insert_db_schedule_company');

    //check time
    function checkTimeBoooked() {
        global $wpdb;
        $id_doctor = (isset($_GET['id_doctor'])) ? $_GET['id_doctor'] : '';
        $day_booked = (isset($_GET['day_booked'])) ? $_GET['day_booked'] : '';
        $time = (isset($_GET['time'])) ? $_GET['time'] : '';
        $result = "SELECT * FROM wp_dathen WHERE id_doctor = $id_doctor AND dayChecked = '$day_booked' AND time = '$time'";
        header('Content-Type: application/json');
        echo json_encode(
            $wpdb->get_results($result, OBJECT)
        );
        wp_die(); // this is required to terminate immediately and return a proper response
    }

    // This will allow not logged in users to use the functionality
    add_action('wp_ajax_nopriv_action_check_time_booked', 'checkTimeBoooked');
    // This will allow only logged in users to use the functionality
    add_action('wp_ajax_action_check_time_booked', 'checkTimeBoooked');

    //check company time order
    function checkTimeOrder() {
        global $wpdb;
        $company_name = (isset($_GET['company_name'])) ? $_GET['company_name'] : '';
        $day = (isset($_GET['day'])) ? $_GET['day'] : '';
        $sessions = (isset($_GET['sessions'])) ? $_GET['sessions'] : '';
        $result = "SELECT amount FROM wp_company WHERE company_name = '$company_name' AND day = '$day' AND sessions = '$sessions'";
        header('Content-Type: application/json');
        echo json_encode(
            $wpdb->get_results($result, OBJECT)
        );
        wp_die(); // this is required to terminate immediately and return a proper response
    }

    // This will allow not logged in users to use the functionality
    add_action('wp_ajax_nopriv_action_check_time_order', 'checkTimeOrder');
    // This will allow only logged in users to use the functionality
    add_action('wp_ajax_action_check_time_order', 'checkTimeOrder');

    //get page children
    function my_get_page_children() {
        $childArgs = array(
            'sort_order' => 'ASC',
            'sort_column' => 'menu_order',
            'child_of' => 88
        );
        $childList = get_pages($childArgs);

        return $childList;
    }

    add_filter('single_template', 'define_single_page', 11);
    function define_single_page() {
        global $post;
        if ($post->post_type == 'post') {
            return dirname(__FILE__) . '/single-bac-si.php';
        } else {
            return dirname(__FILE__) . '/single.php';
        }
    }

    // if theme option has row => append to db
    function check_company_list() {
        global $wpdb;
        // $wpdb->query("TRUNCATE TABLE wp_list_company");
        while (have_rows('schedule_company', 'option')): the_row();
            while (have_rows('cong_ty')): the_row();
                //var_dump(get_sub_field('name_of_company'));
                // $name = get_sub_field('name_of_company')['company_name'];
                // $session = implode(', ', get_sub_field('name_of_company')['session']);
                // $company_name_added = "SELECT company_name FROM wp_list_company WHERE company_name = '$name'";
                // $company_name_added = $wpdb->get_var($company_name_added);
                // $arrayDb = array(
                //     'company_name'  => get_sub_field('name_of_company')['company_name'],
                //     'fromdate'  => get_sub_field('name_of_company')['fromdate'],
                //     'todate'  => get_sub_field('name_of_company')['todate'],
                //     'company_code'  => get_sub_field('name_of_company')['company_code'],
                //     'session'   => $session
                // );
                // if($company_name_added !== get_sub_field('name_of_company')['company_name']) {
                //     $wpdb->insert('wp_list_company', $arrayDb);
                // } else {
                //     $wpdb->update('wp_list_company', $arrayDb, array(
                //        'company_name'   => get_sub_field('name_of_company')['company_name']
                //     ));
                // }
            endwhile;
        endwhile;
    }
    add_action('admin_init', 'check_company_list');


    // if theme option has row => append to db
    function check_company_not_schedule() {
        global $wpdb;
        $wpdb->query("TRUNCATE TABLE wp_list_company");
        while (have_rows('schedule_company', 'option')): the_row();
            while (have_rows('company_not_schedule')): the_row();
            $name = get_sub_field('company_name');
            $company_name_added = "SELECT company_name FROM wp_list_company WHERE company_name = '$name'";
            $company_name_added = $wpdb->get_var($company_name_added);
            $arrayDb = array(
                'company_name'  => get_sub_field('company_name'),
                'total_members'  => get_sub_field('total_members'),
                'status_company'  => 'company_not_schedule'
            );
            if($company_name_added !== $name) {
                $wpdb->insert('wp_list_company', $arrayDb);
            } else {
                $wpdb->update('wp_list_company', $arrayDb, array(
                   'company_name'   => get_sub_field('company_name')
                ));
            }
            endwhile;
        endwhile;
    }
    add_action('admin_init', 'check_company_not_schedule');

    //check totals number of company
    function checkTotalnumber() {
        global $wpdb;
        $company_name = (isset($_GET['companyName'])) ? $_GET['companyName'] : '';
        $result = "SELECT amount FROM wp_company WHERE company_name = '$company_name'";
        $result_list = "SELECT total_members FROM wp_list_company WHERE company_name = '$company_name' AND status_company = 'company_not_schedule'";
        header('Content-Type: application/json');
        echo json_encode(
            array(
                'list_company' => $wpdb->get_results($result_list, OBJECT),
                'company' => $wpdb->get_results($result, OBJECT)
            )
        );
        wp_die(); // this is required to terminate immediately and return a proper response
    }

    // This will allow not logged in users to use the functionality
    add_action('wp_ajax_nopriv_action_check_total_number', 'checkTotalnumber');
    // This will allow only logged in users to use the functionality
    add_action('wp_ajax_action_check_total_number', 'checkTotalnumber');

    //get request insert data into table wp_company with company doesn't schedule
    function insert_db_compant_not_schedule() {
        global $wpdb;
        $company_name = (isset($_POST['company_name'])) ? $_POST['company_name'] : '';
        $amount = (isset($_POST['amount'])) ? $_POST['amount'] : '';
        $name = (isset($_POST['name'])) ? $_POST['name'] : '';
        $birthday = (isset($_POST['birthday'])) ? $_POST['birthday'] : '';
        $gender = (isset($_POST['gender'])) ? $_POST['gender'] : '';
        $email = (isset($_POST['email'])) ? $_POST['email'] : '';
        $phone = (isset($_POST['phone'])) ? $_POST['phone'] : '';
        $statusYourself = (isset($_POST['statusYourself'])) ? $_POST['statusYourself'] : '';
        $date = (isset($_POST['date'])) ? $_POST['date'] : '';
        $session = (isset($_POST['session'])) ? $_POST['session'] : '';
        $codeCompany = (isset($_POST['codeCompany'])) ? $_POST['codeCompany'] : '';
        $noteCompany = (isset($_POST['noteCompany'])) ? $_POST['noteCompany'] : '';
        $wpdb->insert('wp_company', array(
            'company_name'  => $company_name,
            'amount'    => $amount,
            'name'  => $name,
            'birthday'  => $birthday,
            'gender'    => $gender,
            'email' => $email,
            'marital_status'    => $statusYourself,
            'phone' => $phone,
            'day'   => $date,
            'sessions'  => $session,
            'employee_code' => $codeCompany,
            'note'  => $noteCompany
        ));
        wp_die(); // this is required to terminate immediately and return a proper response
    }

    // This will allow not logged in users to use the functionality
    add_action('wp_ajax_nopriv_action_insert_db_compant_not_schedule', 'insert_db_compant_not_schedule');
    // This will allow only logged in users to use the functionality
    add_action('wp_ajax_action_insert_db_compant_not_schedule', 'insert_db_compant_not_schedule');
?>
