<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 20.04.2016
 * Time: 1:18
 */

class ControllerInformationEducation extends Controller {

    public function index() {

        $data = array();
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => '/'
        );
        $data['breadcrumbs'][] = array(
            'text' => 'Education',
            'href' => $this->url->link('information/education')
        );

        $this->document->setTitle('education');
        $this->document->setDescription('education');
        $this->document->setKeywords('education');

        if (!in_ajax()) {
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');
        }


        $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/education.tpl', $data));
    }
}