<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 20.02.2016
 * Time: 16:07
 */

class ControllerModuleLoginFacebook extends Controller {

    public function index () {
        //подключаем языковой файл
        $this->load->language('module/login_facebook');
        //Выводим имя модуля в списке модулей
        $this->document->setTitle($this->language->get('heading_title'));
        //подключаем файл модели
        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

           // dd($this->request->post, true);
            $this->model_setting_setting->editSetting('login_facebook', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }


        //тексты кнопок
        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');

        $data['entry_id'] = $this->language->get('entry_id');
        $data['entry_secret'] = $this->language->get('entry_secret');

        $data['entry_status'] = $this->language->get('entry_status');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        $data['text_none'] = $this->language->get('text_none');


        //вывод ошибок
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['error_id'])) {
            $data['error_id'] = $this->error['error_id'];
        } else {
            $data['error_id'] = '';
        }

        if (isset($this->error['error_secret'])) {
            $data['error_secret'] = $this->error['error_secret'];
        } else {
            $data['error_secret'] = '';
        }




        $data['action'] = $this->url->link('module/login_facebook', 'token=' . $this->session->data['token'], 'SSL');

        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');



        if (isset($this->request->post['login_facebook_apiid'])) {
            $data['apiid'] = $this->request->post['login_facebook_apiid'];
        } else {
            $data['apiid'] = $this->config->get('login_facebook_apiid');
        }

        if (isset($this->request->post['login_facebook_secret'])) {
            $data['secret'] = $this->request->post['login_facebook_secret'];
        } else{
            $data['secret'] = $this->config->get('login_facebook_secret');
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

        if (isset($this->request->post['login_facebook_status'])) {
            $data['status'] = $this->request->post['login_facebook_status'];
        } else {
            $data['status'] = $this->config->get('login_facebook_status');
        }





        //виды левая колонка футер и хедер в админке
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');



        $this->response->setOutput($this->load->view('module/login_facebook.tpl', $data));
    }


    protected function validate() {
        if (!$this->user->hasPermission('modify', 'module/login_facebook')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if ($this->request->post['apiid'] == '') {
            $this->error['error_id'] = $this->language->get('error_id');
        }
        if ($this->request->post['secret'] == '') {
            $this->error['error_secret'] = $this->language->get('error_secret');
        }

        return !$this->error;
    }
}