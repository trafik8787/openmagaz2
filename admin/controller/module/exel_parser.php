<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 07.07.2016
 * Time: 17:07
 */

class ControllerModuleExelParser extends Controller {

    public function index (){
        //подключаем языковой файл
        $this->load->language('module/exel_parser');
        //Выводим имя модуля в списке модулей
        $this->document->setTitle($this->language->get('heading_title'));
        //подключаем файл модели
        $this->load->model('setting/setting');


        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate() && !$this->request->post['parsing_success']) {

            // dd($this->request->post, true);
            $this->model_setting_setting->editSetting('exel_parser', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }

        if (!empty($this->request->post['parsing_success'])) {
            $data['progres'] = 'Syccess';
            $this->fixParse();
        }


        //тексты кнопок
        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');

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


        $data['action'] = $this->url->link('module/exel_parser', 'token=' . $this->session->data['token'], 'SSL');
        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');



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


        if (isset($this->request->post['exel_parser_status'])) {
            $data['exel_parser_status'] = $this->request->post['exel_parser_status'];
        } else {
            $data['exel_parser_status'] = $this->config->get('exel_parser_status');
        }



        //виды левая колонка футер и хедер в админке
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');



        $this->response->setOutput($this->load->view('module/exel_parser.tpl', $data));

    }


    protected function validate() {
        if (!$this->user->hasPermission('modify', 'module/exel_parser')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        return !$this->error;
    }


    private function  fixParse (){
        $filePath = '/home/canary/www/test.csv';
        $delimiter = ';';
        $file = new SplFileObject($filePath, 'r');
        $file->setFlags(SplFileObject::READ_CSV);
        $file->setCsvControl($delimiter);
        //dd($file->current());
        while (!$file->eof()) {
            dd($file->current());
            $file->next();
        }
        //$objReader = PHPExcel_IOFactory::createReader($inputFileType);

        //return $_SERVER;
    }

}