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
                    $data_html = $this->load->view($this->config->get('config_template') . '/template/mail/text_coupon_email.tpl', $data_text_email);

                    $this->load->controller('email/email/email_tehnic', array($this->request->post['email'], 'Welcome to Brilliant Canary - $100 Off Your First Order', $data_html));

                    $text_info = $this->request->post['email'].' joined your mailing list and recieved 100$ off coupon';
                    //отправляем соробщение о подпищике на купон
                    $this->load->controller('email/email/email_tehnic', array('info@brilliantcanary.com', $this->request->post['email'].' just joined your mailing list and recieved 100$ off coupon', $text_info));


                }

                $json['susses'] = 'Thank you for signing up for our exclusive offers.';
            } else {
                $text_info = $this->request->post['email'].' just joined your mailing list';
                //отправляем соробщение о подпищике
                $this->load->controller('email/email/email_tehnic', array('info@brilliantcanary.com', $this->request->post['email'].' just joined your mailing list', $text_info));
                $json['error'] = 'You are already subscribed';
            }

        } else {
            die('Error 21313523');
        }



        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

}