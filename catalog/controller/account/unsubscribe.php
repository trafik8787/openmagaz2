<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 19.11.2016
 * Time: 16:47
 */

class ControllerAccountUnsubscribe extends Controller {

    public function index () {
        $data = array();
        $this->load->model('account/unsubscribe');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

            $this->model_account_unsubscribe->delEmail($this->request->post);
            $data['susses'] = true;
            //Success: A new password has been sent to your e-mail address.
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $data['breadcrumbs'][] = array(
            'text' => 'Unsubscribe',
            'href' => 'unsubscribe'
        );

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/unsubscribe.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/unsubscribe.tpl', $data));
        } else {
            die('not');
        }
    }

    protected function validate() {
        if (!isset($this->request->post['email'])) {
            $this->error['warning'] = 'Error Email';
        }

        return !$this->error;
    }

}