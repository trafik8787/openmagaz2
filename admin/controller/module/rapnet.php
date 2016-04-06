<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 20.02.2016
 * Time: 16:07
 */

class ControllerModuleRapnet extends Controller {

    public function index () {
        //подключаем языковой файл
        $this->load->language('module/rapnet');
        //Выводим имя модуля в списке модулей
        $this->document->setTitle($this->language->get('heading_title'));
        //подключаем файл модели
        $this->load->model('setting/setting');
        $this->load->model('localisation/tax_class');
        //налог
        $data['tax_classes'] = $this->model_localisation_tax_class->getTaxClasses();


        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

           // dd($this->request->post, true);
            $this->model_setting_setting->editSetting('rapnet', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }


        //тексты кнопок
        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');

        $data['entry_rapnet_name'] = $this->language->get('entry_rapnet_name');
        $data['entry_rapnet_pass'] = $this->language->get('entry_rapnet_pass');

        $data['entry_status'] = $this->language->get('entry_status');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        $data['entry_tax_class'] = $this->language->get('entry_tax_class');
        $data['text_none'] = $this->language->get('text_none');


        //вывод ошибок
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['rapnet_name'])) {
            $data['error_rapnet_name'] = $this->error['name'];
        } else {
            $data['error_rapnet_name'] = '';
        }

        if (isset($this->error['rapnet_pass'])) {
            $data['error_rapnet_pass'] = $this->error['rapnet_pass'];
        } else {
            $data['error_rapnet_pass'] = '';
        }




        $data['action'] = $this->url->link('module/rapnet', 'token=' . $this->session->data['token'], 'SSL');

        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');



        if (isset($this->request->post['rapnet_name'])) {
            $data['rapnet_name'] = $this->request->post['rapnet_name'];
        } else {
            $data['rapnet_name'] = $this->config->get('rapnet_name');
        }

        if (isset($this->request->post['rapnet_pass'])) {
            $data['rapnet_pass'] = $this->request->post['rapnet_pass'];
        } else{
            $data['rapnet_pass'] = $this->config->get('rapnet_pass');
        }


        if (isset($this->request->post['rapnet_tax_class_id'])) {
            $data['rapnet_tax_class_id'] = $this->request->post['rapnet_tax_class_id'];
        } elseif (!empty($this->config->get('rapnet_tax_class_id'))) {
            $data['rapnet_tax_class_id'] = $this->config->get('rapnet_tax_class_id');
        } else {
            $data['rapnet_tax_class_id'] = 0;
        }



        $this->load->model('localisation/language');



        //крошки
        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
        );




        //подключаем мультиязычность
        $data['languages'] = $this->model_localisation_language->getLanguages();

        if (isset($this->request->post['rapnet_status'])) {
            $data['rapnet_status'] = $this->request->post['rapnet_status'];
        } else {
            $data['rapnet_status'] = $this->config->get('rapnet_status');
        }





        //виды левая колонка футер и хедер в админке
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');



        $this->response->setOutput($this->load->view('module/rapnet.tpl', $data));
    }


    protected function validate() {
        if (!$this->user->hasPermission('modify', 'module/rapnet')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if ($this->request->post['rapnet_name'] == '') {
            $this->error['rapnet_name'] = $this->language->get('error_rapnet_name');
        }
        if ($this->request->post['rapnet_pass'] == '') {
            $this->error['rapnet_pass'] = $this->language->get('error_rapnet_pass');
        }

        return !$this->error;
    }
}