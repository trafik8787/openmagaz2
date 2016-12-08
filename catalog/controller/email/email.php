<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 08.12.2016
 * Time: 23:47
 */

class ControllerEmailEmail extends Controller {


    public function email_tehnic ($data_ret = null) {

        $to = $data_ret[0];
        $subject = isset($data_ret[1]) ? $data_ret[1] : 'Brilliant Canary';

        $data['message'] = isset($data_ret[2]) ? '<span style="padding: 0 20px">'.$data_ret[2].'</span>' : '';
        $data['email_to'] = $to;

        $mail = new Mail();
        $mail->protocol = $this->config->get('config_mail_protocol');
        $mail->parameter = $this->config->get('config_mail_parameter');
        $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
        $mail->smtp_username = $this->config->get('config_mail_smtp_username');
        $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
        $mail->smtp_port = $this->config->get('config_mail_smtp_port');
        $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

        $mail->setTo($to);
        $mail->setFrom($this->config->get('config_email'));
        $mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
        $mail->setSubject($subject);
        $mail->setHtml($this->load->view($this->config->get('config_template') . '/template/mail/email_technik.tpl', $data));
        $mail->send();

    }

}