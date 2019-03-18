<?php
add_action('rest_api_init', function () {
    register_rest_route('healthcare/v1', 'dat-hen', array(
        'methods' => WP_REST_Server::CREATABLE,
        'callback' => 'create_booking_item',
        'args' => array(
            'id_doctor' => array(
                'default' => 0,
                'sanitize_callback' => 'absint',
            ),
            'dayChecked' => array(
                'default' => '',
                'sanitize_callback' => 'sanitize_text_field',
            ),
            'time' => array(
                'default' => '',
                'sanitize_callback' => 'sanitize_text_field',
            ),
            'symptom' => array(
                'default' => '',
                'sanitize_callback' => 'sanitize_text_field',
            ),
            'full_name' => array(
                'default' => '',
                'sanitize_callback' => 'sanitize_text_field',
            ),
            'birthday' => array(
                'default' => '',
                'sanitize_callback' => 'sanitize_text_field',
            ),
            'gender' => array(
                'default' => '',
                'sanitize_callback' => 'sanitize_text_field',
            ),
            'email' => array(
                'default' => '',
                'sanitize_callback' => 'sanitize_email',
            ),
            'phone' => array(
                'default' => '',
                'sanitize_callback' => 'sanitize_text_field',
            ),
            'examination' => array(
                'default' => '',
                'sanitize_callback' => 'sanitize_text_field',
            ),
            'client_code' => array(
                'default' => '',
                'sanitize_callback' => 'sanitize_text_field',
            ),
        )
    ));
});
function create_booking_item(WP_REST_Request $request) {
    global $wpdb;
    $_table = $wpdb->prefix . 'dathen';
    $params = $request->get_params();

    $result = $wpdb->insert($_table, array(
        'id_doctor' => $params['id_doctor'],
        'dayChecked' => $params['dayChecked'],
        'time' => $params['time'],
        'symptom' => $params['symptom'],
        'full_name' => $params['full_name'],
        'birthday' => $params['birthday'],
        'gender' => $params['gender'],
        'email' => $params['email'],
        'phone' => $params['phone'],
        'examination' => $params['examination'],
        'client_code' => $params['client_code']
    ), array('%d', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s'));

    $data = null;
    $status = 200;
    if ($result) {
        $params['id'] = $wpdb->insert_id;
        $data = $params;
    } else {
        $status = 500;
    }

    $response = new WP_REST_Response($data);
    $response->set_status($status);
    return $response;
}

    /* method GET */
    add_action( 'rest_api_init', function () {
        register_rest_route( 'dat-hen', 'v1', array(
            'methods'  => WP_REST_Server::READABLE,
            'callback' => 'get_booking_items',
            'args' => array(
                'token' => array(
                    'default' => '',
                    'sanitize_callback' => 'sanitize_text_field',
                )
            )
        ) );
    } );
    function get_booking_items(WP_REST_Request $request) {
        global $wpdb;
        $_table = $wpdb->prefix . 'dathen';
        $data = null;
        $status = 200;
        $params = $request->get_params();
        $result = $wpdb->get_results("SELECT * FROM $_table");
        if ($result) {
            if($params['token'] == 'Golden_healthcare') {
                return $data = $result;
            }
        } else {
            $status = 500;
        }
        header('Content-Type: application/json');
        return json_encode(
            $wpdb->get_results($data, OBJECT)
        );
    }
?>
