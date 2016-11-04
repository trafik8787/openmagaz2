<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 04.11.2016
 * Time: 19:51
 */

class ControllerInformationAboutUs extends Controller {

    public function index() {

        $data = array();
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => '/'
        );
        $data['breadcrumbs'][] = array(
            'text' => 'About Us',
            'href' => ''
        );

        $this->document->setTitle('about');
        $this->document->setDescription('about');
        $this->document->setKeywords('about');

        if (!in_ajax()) {
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');
        }


        $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/about_us.tpl', $data));
    }
}
