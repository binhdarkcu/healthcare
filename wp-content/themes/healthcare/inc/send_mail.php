<?php
    use PHPMailer\PHPMailer\PHPMailer;
    require __DIR__ . './../vendor/autoload.php';
    function send_mail($infomation = array())  {
        $mail = new PHPMailer;
        $mail->isSMTP();
        $mail->SMTPDebug = 2;
        $mail->Host = 'smtp.gmail.com';
        $mail->Port = 465;
        $mail->SMTPSecure = 'ssl';
        $mail->SMTPAuth = true;
        $mail->Username = "quangsang222@gmail.com";
        $mail->Password = "bcfwoolpqxznwaaa";


        $mail->setFrom(get_bloginfo('admin_email'), 'Admin');
        $mail->addReplyTo(get_bloginfo('admin_email'), 'Admin');
        $mail->addAddress($email, $name);
        //Read an HTML message body from an external file, convert referenced images to embedded,
        //convert HTML into a basic plain-text alternative body
        if($detect_email) {
            email_personal($mail, $name, $email);
        } else {
            email_company($mail, $name, $email);
        }
        //send the message, check for errors
        if (!$mail->send()) {
            echo "Mailer Error: " . $mail->ErrorInfo;
        } else {
            echo "Message sent!";
        }
    }
    function email_personal($mail, $name, $email) {
        $mail->AddCC(get_bloginfo('admin_email'), 'Admin');
        $mail->Subject = 'GOLDEN HEALTHCARE: Email personal';
        $mail->msgHTML(variable_mail([
            'name' => $name,
            'email' => $email
        ], __DIR__ . './../inc/template_email/email_single_personal.php'));
    }
    function email_company($mail, $name, $email) {
        $mail->Subject = 'GOLDEN HEALTHCARE: Email company';
        $mail->msgHTML(variable_mail([
            'name' => $name,
            'email' => $email
        ], __DIR__ . './../inc/template_email/email_for_company.php'));
    }
    function email_contact($mail, $name, $email) {
        $mail->Subject = 'GOLDEN HEALTHCARE: Feedback email from customer';
        $mail->msgHTML(variable_mail([
            'name' => $name,
            'email' => $email
        ], __DIR__ . './../inc/template_email/email_for_contact.php'));
    }
    function variable_mail(array $arr, $file) {
        ob_start();
        extract($arr);
        include($file);
        $realData = ob_get_contents();
        ob_end_clean();
        return $realData;
    }
