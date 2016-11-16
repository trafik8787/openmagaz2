<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 18.08.2016
 * Time: 0:05
 */

class ControllerMarketingNewsletter extends Controller {

    public function index() {

        $this->load->language('marketing/newsletter');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('marketing/newsletter');

        if (!empty($this->request->post)) {
            //dd($this->request->post['email'], true);
            //$this->request->post['email']




            //dd($this->request->post['email']);
            $data_email = array();

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
            $mail->setSubject(html_entity_decode('qweqweqweqwe', ENT_QUOTES, 'UTF-8'));
            //$mail->setText($message);
            //$mail->setHtml($this->load->view($this->config->get('config_template') . '/template/email/email_technik.tpl', $data_email));
            $mail->setHtml($this->load->view('mail/email_technik.tpl', $data_email));
            $mail->send();





        }

        if (isset($this->request->get['filter_email'])) {
            $filter_email = $this->request->get['filter_email'];
        } else {
            $filter_email = null;
        }

        if (isset($this->request->get['filter_status'])) {
            $filter_status = $this->request->get['filter_status'];
        } else {
            $filter_status = null;
        }


        if (isset($this->request->get['filter_date_added'])) {
            $filter_date_added = $this->request->get['filter_date_added'];
        } else {
            $filter_date_added = null;
        }

        if (isset($this->request->get['sort'])) {
            $sort = $this->request->get['sort'];
        } else {
            $sort = 'name';
        }

        if (isset($this->request->get['order'])) {
            $order = $this->request->get['order'];
        } else {
            $order = 'ASC';
        }

        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }

        $url = '';


        if (isset($this->request->get['filter_email'])) {
            $url .= '&filter_email=' . urlencode(html_entity_decode($this->request->get['filter_email'], ENT_QUOTES, 'UTF-8'));
        }

        if (isset($this->request->get['filter_status'])) {
            $url .= '&filter_status=' . $this->request->get['filter_status'];
        }


        if (isset($this->request->get['filter_date_added'])) {
            $url .= '&filter_date_added=' . $this->request->get['filter_date_added'];
        }

        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }

        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }

        if (isset($this->request->get['page'])) {
            $url .= '&page=' . $this->request->get['page'];
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('marketing/newsletter', 'token=' . $this->session->data['token'] . $url, 'SSL')
        );

        $data['delete'] = $this->url->link('marketing/newsletter/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');

        $data['affiliates'] = array();

        $filter_data = array(
            'filter_email'      => $filter_email,
            'filter_status'     => $filter_status,
            'filter_create_date' => $filter_date_added,
            'sort'              => $sort,
            'order'             => $order,
            'start'             => ($page - 1) * $this->config->get('config_limit_admin'),
            'limit'             => $this->config->get('config_limit_admin')
        );

        $affiliate_total = $this->model_marketing_newsletter->getTotalNewsletter($filter_data);

        $results = $this->model_marketing_newsletter->getNewsletter($filter_data);
        //dd($results);

        foreach ($results as $result) {


            $data['affiliates'][] = array(
                'id' => $result['id'],
                'email'        => $result['email'],
                'status'       => ($result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled')),
                'ip'           => $result['ip'],
                'create_date'   => date($this->language->get('date_format_short'), strtotime($result['create_date'])),
            );
        }

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_list'] = $this->language->get('text_list');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_confirm'] = $this->language->get('text_confirm');

        $data['column_email'] = $this->language->get('column_email');
        $data['column_status'] = $this->language->get('column_status');
        $data['column_create_date'] = $this->language->get('column_create_date');
        $data['column_ip'] = $this->language->get('column_ip');
        $data['column_action'] = $this->language->get('column_action');

        $data['entry_email'] = $this->language->get('entry_email');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_create_date'] = $this->language->get('entry_create_date');


        $data['button_approve'] = $this->language->get('button_approve');
        $data['button_add'] = $this->language->get('button_add');
        $data['button_edit'] = $this->language->get('button_edit');
        $data['button_delete'] = $this->language->get('button_delete');
        $data['button_filter'] = $this->language->get('button_filter');

        $data['token'] = $this->session->data['token'];

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->session->data['success'])) {
            $data['success'] = $this->session->data['success'];

            unset($this->session->data['success']);
        } else {
            $data['success'] = '';
        }

        if (isset($this->request->post['selected'])) {
            $data['selected'] = (array)$this->request->post['selected'];
        } else {
            $data['selected'] = array();
        }

        $url = '';


        if (isset($this->request->get['filter_email'])) {
            $url .= '&filter_email=' . urlencode(html_entity_decode($this->request->get['filter_email'], ENT_QUOTES, 'UTF-8'));
        }

        if (isset($this->request->get['filter_status'])) {
            $url .= '&filter_status=' . $this->request->get['filter_status'];
        }


        if (isset($this->request->get['filter_create_date'])) {
            $url .= '&filter_create_date=' . $this->request->get['filter_create_date'];
        }

        if ($order == 'ASC') {
            $url .= '&order=DESC';
        } else {
            $url .= '&order=ASC';
        }

        if (isset($this->request->get['page'])) {
            $url .= '&page=' . $this->request->get['page'];
        }

        $data['sort_email'] = $this->url->link('marketing/newsletter', 'token=' . $this->session->data['token'] . '&sort=email' . $url, 'SSL');
        $data['sort_status'] = $this->url->link('marketing/newsletter', 'token=' . $this->session->data['token'] . '&sort=status' . $url, 'SSL');
        $data['sort_create_date'] = $this->url->link('marketing/newsletter', 'token=' . $this->session->data['token'] . '&sort=create_date' . $url, 'SSL');

        $url = '';


        if (isset($this->request->get['filter_email'])) {
            $url .= '&filter_email=' . urlencode(html_entity_decode($this->request->get['filter_email'], ENT_QUOTES, 'UTF-8'));
        }

        if (isset($this->request->get['filter_status'])) {
            $url .= '&filter_status=' . $this->request->get['filter_status'];
        }


        if (isset($this->request->get['filter_create_date'])) {
            $url .= '&filter_create_date=' . $this->request->get['filter_create_date'];
        }

        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }

        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }

        $pagination = new Pagination();
        $pagination->total = $affiliate_total;
        $pagination->page = $page;
        $pagination->limit = $this->config->get('config_limit_admin');
        $pagination->url = $this->url->link('marketing/newsletter', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

        $data['pagination'] = $pagination->render();

        $data['results'] = sprintf($this->language->get('text_pagination'), ($affiliate_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($affiliate_total - $this->config->get('config_limit_admin'))) ? $affiliate_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $affiliate_total, ceil($affiliate_total / $this->config->get('config_limit_admin')));

        $data['filter_email'] = $filter_email;
        $data['filter_status'] = $filter_status;
        $data['filter_create_date'] = $filter_date_added;

        $data['sort'] = $sort;
        $data['order'] = $order;

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('marketing/newsletter.tpl', $data));

    }


    public function delete() {
        $this->load->language('marketing/newsletter');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('marketing/newsletter');

        $url = '';

        if (isset($this->request->get['filter_email'])) {
            $url .= '&filter_email=' . urlencode(html_entity_decode($this->request->get['filter_email'], ENT_QUOTES, 'UTF-8'));
        }

        if (isset($this->request->get['filter_status'])) {
            $url .= '&filter_status=' . $this->request->get['filter_status'];
        }


        if (isset($this->request->get['filter_create_date'])) {
            $url .= '&filter_create_date=' . $this->request->get['filter_create_date'];
        }

        if (isset($this->request->get['order'])) {
            $order = $this->request->get['order'];
        } else {
            $order = 'ASC';
        }

        if ($order == 'ASC') {
            $url .= '&order=DESC';
        } else {
            $url .= '&order=ASC';
        }

        if (isset($this->request->get['page'])) {
            $url .= '&page=' . $this->request->get['page'];
        }
        //dd($this->request->post['selected'], true);
        if (!empty($this->request->post['selected'])) {
            foreach ($this->request->post['selected'] as $id) {
                $this->model_marketing_newsletter->deleteNewsletter($id);
            }

            $this->response->redirect($this->url->link('marketing/newsletter', 'token=' . $this->session->data['token'] . $url, 'SSL'));
        }
    }




}