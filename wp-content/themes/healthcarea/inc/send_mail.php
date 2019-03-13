<?php
$email = WP_Mail::init()
    ->to(get_bloginfo('admin_email'))
    ->subject('this is subject')
    ->template(get_template_directory().'/inc/template_email/email.html', [
       'name' => 'aaa',
        'job' => 'bbbb'
    ])
    ->send();
