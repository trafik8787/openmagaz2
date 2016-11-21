<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 18.08.2016
 * Time: 0:05
 */

class ControllerMarketingNewsletter extends Controller {

    public function index($coupon = null) {

        $data = array();

        if (!empty($coupon)) {
            $data['coupon'] = true;
        }

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/marketing/newsletter.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/marketing/newsletter.tpl', $data);
        } else {
            die('No file');
        }
    }

    public function add () {

        $this->load->model('marketing/newsletter');

        $json = array();

        if (in_ajax()) {

            if ($this->model_marketing_newsletter->addEmail($this->request->post)) {

                if (!empty($this->request->post['coupon']) and $this->request->post['coupon'] == 1) {

                    $data_text_email = array();
                    $data_email['message'] = $this->load->view($this->config->get('config_template') . '/template/mail/text_coupon_email.tpl', $data_text_email);
                    $data_email['email_to'] = $this->request->post['email'];

                    $mail = new Mail();
                    $mail->protocol = $this->config->get('config_mail_protocol');
                    $mail->parameter = $this->config->get('config_mail_parameter');
                    $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
                    $mail->smtp_username = $this->config->get('config_mail_smtp_username');
                    $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
                    $mail->smtp_port = $this->config->get('config_mail_smtp_port');
                    $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

                    $mail->setTo($this->request->post['email']);
                    $mail->setFrom($this->config->get('config_email'));
                    $mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
                    $mail->setSubject('Welcome to Brilliant Canary - $100 Off Your First Order');
                    $mail->setHtml($this->load->view($this->config->get('config_template') . '/template/mail/email_technik.tpl', $data_email));
                    $mail->send();

                }

                $json['susses'] = 'Thank you for signing up for our exclusive offers.';
            } else {
                $json['error'] = 'You are already subscribed';
            }

        } else {
            die('Error 21313523');
        }



        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

}