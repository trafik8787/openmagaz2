<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 20.04.2016
 * Time: 0:54
 */

class ControllerInformationFaq extends Controller {

    public function index() {

        $data = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => '/'
        );
        $data['breadcrumbs'][] = array(
            'text' => 'Faq',
            'href' => $this->url->link('information/faq')
        );

        $this->document->setTitle('faq');
        $this->document->setDescription('faq');
        $this->document->setKeywords('faq');

        if (!in_ajax()) {
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');
        }


        $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/faq.tpl', $data));


    }

}