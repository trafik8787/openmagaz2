<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 18.08.2016
 * Time: 0:05
 */

class ControllerMarketingNewsletter extends Controller {

    public function index() {

        $data = array();

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