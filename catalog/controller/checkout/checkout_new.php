<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 09.04.2017
 * Time: 19:47
 */

class ControllerCheckoutCheckoutNew extends Controller {

    public $data;
    public $json_pp_pro;


    public function index() {

        // Validate cart has products and has stock.
        if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
            $this->response->redirect($this->url->link('checkout/cart'));
        }

        // Validate minimum quantity requirements.
        $products = $this->cart->getProducts();

        foreach ($products as $product) {
            $product_total = 0;

            foreach ($products as $product_2) {
                if ($product_2['product_id'] == $product['product_id']) {
                    $product_total += $product_2['quantity'];
                }
            }

            if ($product['minimum'] > $product_total) {
                $this->response->redirect($this->url->link('checkout/cart'));
            }
        }

        $this->load->language('checkout/checkout');
        $this->document->setTitle($this->language->get('heading_title'));

        // Required by klarna
        if ($this->config->get('klarna_account') || $this->config->get('klarna_invoice')) {
            $this->document->addScript('http://cdn.klarna.com/public/kitt/toc/v1.0/js/klarna.terms.min.js');
        }

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_cart'),
            'href' => $this->url->link('checkout/cart')
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('checkout/checkout', '', 'SSL')
        );


        $this->register();

        $this->data['logined_address'] = $this->payment_address();

        if (!empty($this->request->post)) {

            if ($this->customer->isLogged()) {

                $this->payment_method_save();
                $this->confirm();
                $this->confirm_motod_payment();

            } else {
                $cart_id_arr = array();
                foreach ($this->cart->getProducts() as $item) {
                    $cart_id_arr[] = $item['cart_id'];
                }

                //dd($this->cart->getProducts());
                $register_json = $this->save_register();
                if ($register_json !== true) {

                    $this->data['register_json'] = $register_json;

                } else {

                    foreach ($cart_id_arr as $item) {
                        $this->cart->update_customer_cart($item);
                    }

                    $this->confirm();
                    $this->shipping_address();
                    $this->payment_method_save();
                    $this->confirm_motod_payment();
                }
            }

            if (!empty($this->json_pp_pro)) {
                $this->data['json_pp_pro'] = $this->json_pp_pro;
            }

        }


        $this->data['heading_title'] = $this->language->get('heading_title');
        $this->data['text_checkout_option'] = $this->language->get('text_checkout_option');
        $this->data['text_checkout_account'] = $this->language->get('text_checkout_account');
        $this->data['text_checkout_payment_address'] = $this->language->get('text_checkout_payment_address');
        $this->data['text_checkout_shipping_address'] = $this->language->get('text_checkout_shipping_address');
        $this->data['text_checkout_shipping_method'] = $this->language->get('text_checkout_shipping_method');
        $this->data['text_checkout_payment_method'] = $this->language->get('text_checkout_payment_method');
        $this->data['text_checkout_confirm'] = $this->language->get('text_checkout_confirm');

        if (isset($this->session->data['error'])) {
            $this->data['error_warning'] = $this->session->data['error'];
            unset($this->session->data['error']);
        } else {
            $this->data['error_warning'] = '';
        }

        $this->data['logged'] = $this->customer->isLogged();

        if (isset($this->session->data['account'])) {
            $this->data['account'] = $this->session->data['account'];
        } else {
            $this->data['account'] = '';
        }

//        $this->data['shipping_required'] = $this->cart->hasShipping();

        $this->data['column_left'] = $this->load->controller('common/column_left');
        $this->data['column_right'] = $this->load->controller('common/column_right');
        $this->data['content_top'] = $this->load->controller('common/content_top');
        $this->data['content_bottom'] = $this->load->controller('common/content_bottom');

        $this->data['continue'] = $this->url->link('checkout/success');
        //load product for cart
        $this->data['cart'] = $this->load->controller('common/cart', array('checkout' => 1));
        $this->data['payment_address'] = $this->load->controller('checkout/register', true);



        $this->data['months'] = array();

        for ($i = 1; $i <= 12; $i++) {
            $this->data['months'][] = array(
                'text'  => strftime('%B', mktime(0, 0, 0, $i, 1, 2000)),
                'value' => sprintf('%02d', $i)
            );
        }


        $today = getdate();

        $this->data['year_expire'] = array();

        for ($i = $today['year']; $i < $today['year'] + 11; $i++) {
            $this->data['year_expire'][] = array(
                'text'  => strftime('%Y', mktime(0, 0, 0, 1, 1, $i)),
                'value' => strftime('%Y', mktime(0, 0, 0, 1, 1, $i))
            );
        }


        $this->data['json_pp_pro'] = $this->json_pp_pro;
        $this->data['pp_express'] = $this->load->controller('payment/pp_express');


        $this->data['footer'] = $this->load->controller('common/footer');
        $this->data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/checkout_new.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/checkout/checkout_new.tpl', $this->data));
        }
    }



    public function register () {

        $this->load->model('localisation/country');

        $this->data['country_id'] = $this->config->get('config_country_id');

        $this->data['entry_address_1'] = $this->language->get('entry_address_1');
        $this->data['entry_address_2'] = $this->language->get('entry_address_2');
        $this->data['countries'] = $this->model_localisation_country->getCountries();

    }










    public function confirm () {

        $order_data = array();

        $order_data['totals'] = array();
        $total = 0;
        $taxes = $this->cart->getTaxes();

        $this->load->model('extension/extension');

        $sort_order = array();

        $results = $this->model_extension_extension->getExtensions('total');

        foreach ($results as $key => $value) {
            $sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
        }

        array_multisort($sort_order, SORT_ASC, $results);

        foreach ($results as $result) {
            if ($this->config->get($result['code'] . '_status')) {
                $this->load->model('total/' . $result['code']);

                $this->{'model_total_' . $result['code']}->getTotal($order_data['totals'], $total, $taxes);
            }
        }

        $sort_order = array();

        foreach ($order_data['totals'] as $key => $value) {
            $sort_order[$key] = $value['sort_order'];
        }

        array_multisort($sort_order, SORT_ASC, $order_data['totals']);

        $this->load->language('checkout/checkout');

        $order_data['invoice_prefix'] = $this->config->get('config_invoice_prefix');
        $order_data['store_id'] = $this->config->get('config_store_id');
        $order_data['store_name'] = $this->config->get('config_name');

        if ($order_data['store_id']) {
            $order_data['store_url'] = $this->config->get('config_url');
        } else {
            $order_data['store_url'] = HTTP_SERVER;
        }

        if ($this->customer->isLogged()) {
            $this->load->model('account/customer');

            $customer_info = $this->model_account_customer->getCustomer($this->customer->getId());

            $order_data['customer_id'] = $this->customer->getId();
            $order_data['customer_group_id'] = $customer_info['customer_group_id'];
            $order_data['firstname'] = $customer_info['firstname'];
            $order_data['lastname'] = $customer_info['lastname'];
            $order_data['email'] = $customer_info['email'];
            $order_data['telephone'] = $customer_info['telephone'];
            $order_data['fax'] = $customer_info['fax'];
            $order_data['custom_field'] = json_decode($customer_info['custom_field'], true);
        }

        $order_data['payment_firstname'] = $this->session->data['payment_address']['firstname'];
        $order_data['payment_lastname'] = $this->session->data['payment_address']['lastname'];
        $order_data['payment_company'] = $this->session->data['payment_address']['company'];
        $order_data['payment_address_1'] = $this->session->data['payment_address']['address_1'];
        $order_data['payment_address_2'] = $this->session->data['payment_address']['address_2'];
        $order_data['payment_city'] = $this->session->data['payment_address']['city'];
        $order_data['payment_postcode'] = $this->session->data['payment_address']['postcode'];
        $order_data['payment_zone'] = $this->session->data['payment_address']['zone'];
        $order_data['payment_zone_id'] = $this->session->data['payment_address']['zone_id'];
        $order_data['payment_country'] = $this->session->data['payment_address']['country'];
        $order_data['payment_country_id'] = $this->session->data['payment_address']['country_id'];
        $order_data['payment_address_format'] = $this->session->data['payment_address']['address_format'];
        $order_data['payment_custom_field'] = (isset($this->session->data['payment_address']['custom_field']) ? $this->session->data['payment_address']['custom_field'] : array());

        if (isset($this->session->data['payment_method']['title'])) {
            $order_data['payment_method'] = $this->session->data['payment_method']['title'];
        } else {
            $order_data['payment_method'] = '';
        }

        if (isset($this->session->data['payment_method']['code'])) {
            $order_data['payment_code'] = $this->session->data['payment_method']['code'];
        } else {
            $order_data['payment_code'] = '';
        }

//        if ($this->cart->hasShipping()) {
        if ($this->request->post['shiping_adress'] == 1) {
            $order_data['shipping_firstname'] = $this->session->data['shipping_address']['firstname'];
            $order_data['shipping_lastname'] = $this->session->data['shipping_address']['lastname'];
            $order_data['shipping_company'] = $this->session->data['shipping_address']['company'];
            $order_data['shipping_address_1'] = $this->session->data['shipping_address']['address_1'];
            $order_data['shipping_address_2'] = $this->session->data['shipping_address']['address_2'];
            $order_data['shipping_city'] = $this->session->data['shipping_address']['city'];
            $order_data['shipping_postcode'] = $this->session->data['shipping_address']['postcode'];
            $order_data['shipping_zone'] = $this->session->data['shipping_address']['zone'];
            $order_data['shipping_zone_id'] = $this->session->data['shipping_address']['zone_id'];
            $order_data['shipping_country'] = $this->session->data['shipping_address']['country'];
            $order_data['shipping_country_id'] = $this->session->data['shipping_address']['country_id'];
            $order_data['shipping_address_format'] = $this->session->data['shipping_address']['address_format'];
            $order_data['shipping_custom_field'] = (isset($this->session->data['shipping_address']['custom_field']) ? $this->session->data['shipping_address']['custom_field'] : array());

//            if (isset($this->session->data['shipping_method']['title'])) {
//                $order_data['shipping_method'] = $this->session->data['shipping_method']['title'];
//            } else {
//                $order_data['shipping_method'] = '';
//            }
//
//            if (isset($this->session->data['shipping_method']['code'])) {
//                $order_data['shipping_code'] = $this->session->data['shipping_method']['code'];
//            } else {
//                $order_data['shipping_code'] = '';
//            }
        } else {
            $order_data['shipping_firstname'] = $this->request->post['firstname_s'];
            $order_data['shipping_lastname'] = $this->request->post['lastname_s'];
            $order_data['shipping_company'] = '';
            $order_data['shipping_address_1'] = $this->request->post['address_1_s'];
            $order_data['shipping_address_2'] = $this->request->post['address_2_s'];
            $order_data['shipping_city'] = $this->request->post['city_s'];
            $order_data['shipping_postcode'] = $this->request->post['postcode_s'];
            $order_data['shipping_zone'] = '';
            $order_data['shipping_zone_id'] = $this->request->post['zone_id_s'];
            $order_data['shipping_country'] = '';
            $order_data['shipping_country_id'] = $this->request->post['country_id_s'];
            $order_data['shipping_address_format'] = '';
            $order_data['shipping_custom_field'] = array();
            $order_data['shipping_method'] = '';
            $order_data['shipping_code'] = '';
        }

        $order_data['products'] = array();

        foreach ($this->cart->getProducts() as $product) {
            $option_data = array();
            foreach ($product['option'] as $option) {
                $option_data[] = array(
                    'product_option_id'       => $option['product_option_id'],
                    'product_option_value_id' => $option['product_option_value_id'],
                    'option_id'               => $option['option_id'],
                    'option_value_id'         => $option['option_value_id'],
                    'name'                    => $option['name'],
                    'value'                   => $option['value'],
                    'type'                    => $option['type']
                );
            }

            $order_data['products'][] = array(
                'product_id' => $product['product_id'],
                'name'       => $product['name'],
                'engrave'    => $product['engrave'],
                'model'      => $product['model'],
                'option'     => $option_data,
                'download'   => $product['download'],
                'quantity'   => $product['quantity'],
                'subtract'   => $product['subtract'],
                'price'      => $product['price'],
                'total'      => $product['total'],
                'tax'        => $this->tax->getTax($product['price'], $product['tax_class_id']),
                'reward'     => $product['reward']
            );
        }

        // Gift Voucher
        $order_data['vouchers'] = array();

        if (!empty($this->session->data['vouchers'])) {
            foreach ($this->session->data['vouchers'] as $voucher) {
                $order_data['vouchers'][] = array(
                    'description'      => $voucher['description'],
                    'code'             => token(10),
                    'to_name'          => $voucher['to_name'],
                    'to_email'         => $voucher['to_email'],
                    'from_name'        => $voucher['from_name'],
                    'from_email'       => $voucher['from_email'],
                    'voucher_theme_id' => $voucher['voucher_theme_id'],
                    'message'          => $voucher['message'],
                    'amount'           => $voucher['amount']
                );
            }
        }

        $order_data['comment'] = $this->session->data['comment'];
        $order_data['total'] = $total;

        if (isset($this->request->cookie['tracking'])) {
            $order_data['tracking'] = $this->request->cookie['tracking'];

            $subtotal = $this->cart->getSubTotal();

            // Affiliate
            $this->load->model('affiliate/affiliate');

            $affiliate_info = $this->model_affiliate_affiliate->getAffiliateByCode($this->request->cookie['tracking']);

            if ($affiliate_info) {
                $order_data['affiliate_id'] = $affiliate_info['affiliate_id'];
                $order_data['commission'] = ($subtotal / 100) * $affiliate_info['commission'];
            } else {
                $order_data['affiliate_id'] = 0;
                $order_data['commission'] = 0;
            }

            // Marketing
            $this->load->model('checkout/marketing');

            $marketing_info = $this->model_checkout_marketing->getMarketingByCode($this->request->cookie['tracking']);

            if ($marketing_info) {
                $order_data['marketing_id'] = $marketing_info['marketing_id'];
            } else {
                $order_data['marketing_id'] = 0;
            }
        } else {
            $order_data['affiliate_id'] = 0;
            $order_data['commission'] = 0;
            $order_data['marketing_id'] = 0;
            $order_data['tracking'] = '';
        }

        $order_data['language_id'] = $this->config->get('config_language_id');
        $order_data['currency_id'] = $this->currency->getId();
        $order_data['currency_code'] = $this->currency->getCode();
        $order_data['currency_value'] = $this->currency->getValue($this->currency->getCode());
        $order_data['ip'] = $this->request->server['REMOTE_ADDR'];

        if (!empty($this->request->server['HTTP_X_FORWARDED_FOR'])) {
            $order_data['forwarded_ip'] = $this->request->server['HTTP_X_FORWARDED_FOR'];
        } elseif (!empty($this->request->server['HTTP_CLIENT_IP'])) {
            $order_data['forwarded_ip'] = $this->request->server['HTTP_CLIENT_IP'];
        } else {
            $order_data['forwarded_ip'] = '';
        }

        if (isset($this->request->server['HTTP_USER_AGENT'])) {
            $order_data['user_agent'] = $this->request->server['HTTP_USER_AGENT'];
        } else {
            $order_data['user_agent'] = '';
        }

        if (isset($this->request->server['HTTP_ACCEPT_LANGUAGE'])) {
            $order_data['accept_language'] = $this->request->server['HTTP_ACCEPT_LANGUAGE'];
        } else {
            $order_data['accept_language'] = '';
        }

        $this->load->model('checkout/order');
        //dd($order_data, true);
        $this->session->data['order_id'] = $this->model_checkout_order->addOrder($order_data);

        //dd($this->session->data, true);

        $data['text_recurring_item'] = $this->language->get('text_recurring_item');
        $data['text_payment_recurring'] = $this->language->get('text_payment_recurring');

        $data['column_name'] = $this->language->get('column_name');
        $data['column_model'] = $this->language->get('column_model');
        $data['column_quantity'] = $this->language->get('column_quantity');
        $data['column_price'] = $this->language->get('column_price');
        $data['column_total'] = $this->language->get('column_total');

        $this->load->model('tool/upload');

        $data['products'] = array();

        foreach ($this->cart->getProducts() as $product) {
            $option_data = array();

            foreach ($product['option'] as $option) {
                if ($option['type'] != 'file') {
                    $value = $option['value'];
                } else {
                    $upload_info = $this->model_tool_upload->getUploadByCode($option['value']);

                    if ($upload_info) {
                        $value = $upload_info['name'];
                    } else {
                        $value = '';
                    }
                }

                $option_data[] = array(
                    'name'  => $option['name'],
                    'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value)
                );
            }

            $recurring = '';

            if ($product['recurring']) {
                $frequencies = array(
                    'day'        => $this->language->get('text_day'),
                    'week'       => $this->language->get('text_week'),
                    'semi_month' => $this->language->get('text_semi_month'),
                    'month'      => $this->language->get('text_month'),
                    'year'       => $this->language->get('text_year'),
                );

                if ($product['recurring']['trial']) {
                    $recurring = sprintf($this->language->get('text_trial_description'), $this->currency->format($this->tax->calculate($product['recurring']['trial_price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax'))), $product['recurring']['trial_cycle'], $frequencies[$product['recurring']['trial_frequency']], $product['recurring']['trial_duration']) . ' ';
                }

                if ($product['recurring']['duration']) {
                    $recurring .= sprintf($this->language->get('text_payment_description'), $this->currency->format($this->tax->calculate($product['recurring']['price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax'))), $product['recurring']['cycle'], $frequencies[$product['recurring']['frequency']], $product['recurring']['duration']);
                } else {
                    $recurring .= sprintf($this->language->get('text_payment_cancel'), $this->currency->format($this->tax->calculate($product['recurring']['price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax'))), $product['recurring']['cycle'], $frequencies[$product['recurring']['frequency']], $product['recurring']['duration']);
                }
            }

            $data['products'][] = array(
                'cart_id'    => $product['cart_id'],
                'product_id' => $product['product_id'],
                'name'       => $product['name'],
                'model'      => $product['model'],
                'option'     => $option_data,
                'recurring'  => $recurring,
                'quantity'   => $product['quantity'],
                'subtract'   => $product['subtract'],
                'price'      => $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax'))),
                'total'      => $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')) * $product['quantity']),
                'href'       => $this->url->link('product/product', 'product_id=' . $product['product_id']),
            );
        }

        // Gift Voucher
        $data['vouchers'] = array();

        if (!empty($this->session->data['vouchers'])) {
            foreach ($this->session->data['vouchers'] as $voucher) {
                $data['vouchers'][] = array(
                    'description' => $voucher['description'],
                    'amount'      => $this->currency->format($voucher['amount'])
                );
            }
        }

        $data['totals'] = array();

        foreach ($order_data['totals'] as $total) {
            $data['totals'][] = array(
                'title' => $total['title'],
                'text'  => $this->currency->format($total['value']),
            );
        }
        //dd($this->session->data['payment_method']['code']);

        $data['payment'] = $this->load->controller('payment/' . $this->session->data['payment_method']['code']);

    }







    public function confirm_motod_payment() {
        //dd($this->session->data, true);

        if ($this->session->data['payment_method']['code'] == 'pp_pro') {
            $json_pp_pro = $this->send_pp_pro();
            if (!empty($json_pp_pro['error'])) {
                $this->json_pp_pro = $json_pp_pro['error'];
            } else {
                $this->response->redirect($this->url->link('checkout/success'));
            }

        }

        if ($this->session->data['payment_method']['code'] == 'bank_transfer') {
            $this->load->language('payment/bank_transfer');

            $this->load->model('checkout/order');

            $comment  = $this->language->get('text_instruction') . "\n\n";
            $comment .= $this->config->get('bank_transfer_bank' . $this->config->get('config_language_id')) . "\n\n";
            $comment .= $this->language->get('text_payment');
            //dd($this->session->data, true);
            $this->model_checkout_order->addOrderHistory($this->session->data['order_id'], $this->config->get('bank_transfer_order_status_id'), $comment, true);
            $this->response->redirect($this->url->link('checkout/success'));
        }

        if ($this->session->data['payment_method']['code'] == 'pp_express') {
            $this->response->redirect($this->url->link('payment/pp_express/checkout', '', 'SSL'));
        }

        if ($this->session->data['payment_method']['code'] == 'phone_order') {
            $this->load->language('payment/phone_order');

            $this->load->model('checkout/order');

            $comment  = $this->language->get('text_instruction') . "\n\n";
            $comment .= $this->config->get('phone_order_bank' . $this->config->get('config_language_id')) . "\n\n";
            $comment .= $this->language->get('text_payment');

            $this->model_checkout_order->addOrderHistory($this->session->data['order_id'], $this->config->get('phone_order_order_status_id'), $comment, true);
            $this->response->redirect($this->url->link('checkout/success'));
        }
    }








    public function payment_method_save () {

        $this->load->language('checkout/checkout');

        $json = array();
        // Validate if payment address has been set.
        if (!isset($this->session->data['payment_address'])) {
            $json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
        }

        // Validate cart has products and has stock.
        if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
            $json['redirect'] = $this->url->link('checkout/cart');
        }

        // Validate minimum quantity requirements.
        $products = $this->cart->getProducts();

        foreach ($products as $product) {
            $product_total = 0;

            foreach ($products as $product_2) {
                if ($product_2['product_id'] == $product['product_id']) {
                    $product_total += $product_2['quantity'];
                }
            }

            if ($product['minimum'] > $product_total) {
                $json['redirect'] = $this->url->link('checkout/cart');

                break;
            }
        }
       // $this->session->data['payment_methods'][$this->request->post['payment_method']];
//        if (!isset($this->request->post['payment_method'])) {
//            $json['error']['warning'] = $this->language->get('error_payment');
//        } elseif (!isset($this->session->data['payment_methods'][$this->request->post['payment_method']])) {
//            $json['error']['warning'] = $this->language->get('error_payment');
//        }


        //dd($json);
        if (!$json) {
            $this->getMetodsPymant();
            $this->session->data['payment_method'] = $this->session->data['payment_methods'][$this->request->post['payment_method']];

            //$this->session->data['comment'] = strip_tags($this->request->post['comment']);

            $this->session->data['comment'] = '';
        }


    }







    //получаем методы оплаты
    public function getMetodsPymant() {
        // Totals
        $total_data = array();
        $total = 0;
        $taxes = $this->cart->getTaxes();

        $this->load->model('extension/extension');

        $sort_order = array();

        $results = $this->model_extension_extension->getExtensions('total');

        foreach ($results as $key => $value) {
            $sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
        }

        array_multisort($sort_order, SORT_ASC, $results);

        foreach ($results as $result) {
            if ($this->config->get($result['code'] . '_status')) {
                $this->load->model('total/' . $result['code']);

                $this->{'model_total_' . $result['code']}->getTotal($total_data, $total, $taxes);
            }
        }

        // Payment Methods
        $method_data = array();

        $this->load->model('extension/extension');

        $results = $this->model_extension_extension->getExtensions('payment');

        $recurring = $this->cart->hasRecurringProducts();

        foreach ($results as $result) {
            if ($this->config->get($result['code'] . '_status')) {
                $this->load->model('payment/' . $result['code']);

                $method = $this->{'model_payment_' . $result['code']}->getMethod($this->session->data['payment_address'], $total);

                if ($method) {
                    if ($recurring) {
                        if (method_exists($this->{'model_payment_' . $result['code']}, 'recurringPayments') && $this->{'model_payment_' . $result['code']}->recurringPayments()) {
                            $method_data[$result['code']] = $method;
                        }
                    } else {
                        $method_data[$result['code']] = $method;
                    }
                }
            }
        }

        $sort_order = array();

        foreach ($method_data as $key => $value) {
            $sort_order[$key] = $value['sort_order'];
        }

        array_multisort($sort_order, SORT_ASC, $method_data);

        $this->session->data['payment_methods'] = $method_data;
    }






    /**
     * @return mixed
     */
    public function payment_address () {


        if (isset($this->session->data['payment_address']['address_id'])) {
            $data['address_id'] = $this->session->data['payment_address']['address_id'];
        } else {
            $data['address_id'] = $this->customer->getAddressId();
        }

        $this->load->model('account/address');

        $data['addresses'] = $this->model_account_address->getAddresses();


        //если адрес существует


        $this->session->data['payment_address'] = $this->model_account_address->getAddress($this->customer->getAddressId());

        if (isset($this->session->data['payment_address']['country_id'])) {
            $data['country_id'] = $this->session->data['payment_address']['country_id'];
        } else {
            $data['country_id'] = $this->config->get('config_country_id');
        }

        if (isset($this->session->data['payment_address']['zone_id'])) {
            $data['zone_id'] = $this->session->data['payment_address']['zone_id'];
        } else {
            $data['zone_id'] = '';
        }

        $this->load->model('localisation/country');

        $data['countries'] = $this->model_localisation_country->getCountries();

        // Custom Fields
        $this->load->model('account/custom_field');

        $data['custom_fields'] = $this->model_account_custom_field->getCustomFields($this->config->get('config_customer_group_id'));

        if (isset($this->session->data['payment_address']['custom_field'])) {
            $data['payment_address_custom_field'] = $this->session->data['payment_address']['custom_field'];
        } else {
            $data['payment_address_custom_field'] = array();
        }

        return $this->load->view($this->config->get('config_template') . '/template/checkout/payment_address.tpl', $data);

    }











    /**
     * регистрируем пользоватея и сохраняем данные адресса
     */
    public function save_register () {

        $this->load->language('checkout/checkout');
        $this->load->language('mail/forgotten');
        $json = array();

        // Validate cart has products and has stock.
        if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
            $json['redirect'] = $this->url->link('checkout/cart');
        }

        // Validate minimum quantity requirements.
        $products = $this->cart->getProducts();

        foreach ($products as $product) {
            $product_total = 0;

            foreach ($products as $product_2) {
                if ($product_2['product_id'] == $product['product_id']) {
                    $product_total += $product_2['quantity'];
                }
            }

            if ($product['minimum'] > $product_total) {
                $json['redirect'] = $this->url->link('checkout/cart');

                break;
            }
        }

        if (!$json) {
            $this->load->model('account/customer');

            if ((utf8_strlen(trim($this->request->post['firstname'])) < 1) || (utf8_strlen(trim($this->request->post['firstname'])) > 32)) {
                $json['error']['firstname'] = $this->language->get('error_firstname');
            }

            if ((utf8_strlen(trim($this->request->post['lastname'])) < 1) || (utf8_strlen(trim($this->request->post['lastname'])) > 32)) {
                $json['error']['lastname'] = $this->language->get('error_lastname');
            }

            if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $this->request->post['email'])) {
                $json['error']['email'] = $this->language->get('error_email');
            }
            if (!$this->customer->isLogged()) {
                if ($this->model_account_customer->getTotalCustomersByEmail($this->request->post['email'])) {
                    $json['error']['warning'] = $this->language->get('error_exists');
                }
            }
            if ((utf8_strlen($this->request->post['telephone']) < 3) || (utf8_strlen($this->request->post['telephone']) > 32)) {
                $json['error']['telephone'] = $this->language->get('error_telephone');
            }

            if ((utf8_strlen(trim($this->request->post['address_1'])) < 3) || (utf8_strlen(trim($this->request->post['address_1'])) > 128)) {
                $json['error']['address_1'] = $this->language->get('error_address_1');
            }

            if ((utf8_strlen(trim($this->request->post['city'])) < 2) || (utf8_strlen(trim($this->request->post['city'])) > 128)) {
                $json['error']['city'] = $this->language->get('error_city');
            }

            $this->request->post['fax'] = '';
            $this->request->post['company'] = '';

            $this->load->model('localisation/country');

            $country_info = $this->model_localisation_country->getCountry($this->request->post['country_id']);

            if ($country_info && $country_info['postcode_required'] && (utf8_strlen(trim($this->request->post['postcode'])) < 2 || utf8_strlen(trim($this->request->post['postcode'])) > 10)) {
                $json['error']['postcode'] = $this->language->get('error_postcode');
            }

            if ($this->request->post['country_id'] == '') {
                $json['error']['country'] = $this->language->get('error_country');
            }

            if (!isset($this->request->post['zone_id']) || $this->request->post['zone_id'] == '' || !is_numeric($this->request->post['zone_id'])) {
                $json['error']['zone'] = $this->language->get('error_zone');
            }




            if ($this->config->get('config_account_id')) {
                $this->load->model('catalog/information');

                $information_info = $this->model_catalog_information->getInformation($this->config->get('config_account_id'));

                if ($information_info && !isset($this->request->post['agree'])) {
                    $json['error']['warning'] = sprintf($this->language->get('error_agree'), $information_info['title']);
                }
            }

            // Customer Group
            if (isset($this->request->post['customer_group_id']) && is_array($this->config->get('config_customer_group_display')) && in_array($this->request->post['customer_group_id'], $this->config->get('config_customer_group_display'))) {
                $customer_group_id = $this->request->post['customer_group_id'];
            } else {
                $customer_group_id = $this->config->get('config_customer_group_id');
            }



        }

        if (!$json) {

            $password = substr(sha1(uniqid(mt_rand(), true)), 0, 10);
            $this->request->post['password'] = $password;


            $customer_id = $this->model_account_customer->addCustomer($this->request->post);

            // Clear any previous login attempts for unregistered accounts.
            $this->model_account_customer->deleteLoginAttempts($this->request->post['email']);

            $this->session->data['account'] = 'register';

            $this->load->model('account/customer_group');

            $customer_group_info = $this->model_account_customer_group->getCustomerGroup($customer_group_id);

            if ($customer_group_info && !$customer_group_info['approval']) {
                $this->customer->login($this->request->post['email'], $this->request->post['password']);

                // Default Payment Address
                $this->load->model('account/address');

                $this->session->data['payment_address'] = $this->model_account_address->getAddress($this->customer->getAddressId());

//                if (!empty($this->request->post['shipping_address'])) {
                if ($this->request->post['shiping_adress'] == 1) {
                    $this->session->data['shipping_address'] = $this->model_account_address->getAddress($this->customer->getAddressId());
                }
            } else {
                $json['redirect'] = $this->url->link('account/success');
            }





			unset($this->session->data['guest']);
			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
//			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);



            // Add to activity log
            $this->load->model('account/activity');

            $activity_data = array(
                'customer_id' => $customer_id,
                'name'        => $this->request->post['firstname'] . ' ' . $this->request->post['lastname']
            );

            $this->model_account_activity->addActivity('register', $activity_data);

            return true;

        } else {
            return $json;
        }

    }





    public function send_pp_pro () {

        $this->request->post['cc_start_date_month'] = '';
        $this->request->post['cc_start_date_year'] = '';

        if (!$this->config->get('pp_pro_transaction')) {
            $payment_type = 'Authorization';
        } else {
            $payment_type = 'Sale';
        }

        $this->load->model('checkout/order');

        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

        $request  = 'METHOD=DoDirectPayment';
        $request .= '&VERSION=51.0';
        $request .= '&USER=' . urlencode($this->config->get('pp_pro_username'));
        $request .= '&PWD=' . urlencode($this->config->get('pp_pro_password'));
        $request .= '&SIGNATURE=' . urlencode($this->config->get('pp_pro_signature'));
        $request .= '&CUSTREF=' . (int)$order_info['order_id'];
        $request .= '&PAYMENTACTION=' . $payment_type;
        $request .= '&AMT=' . $this->currency->format($order_info['total'], $order_info['currency_code'], false, false);
        $request .= '&CREDITCARDTYPE=' . $this->request->post['cc_type'];
        $request .= '&ACCT=' . urlencode(str_replace(' ', '', $this->request->post['cc_number']));
        $request .= '&CARDSTART=' . urlencode($this->request->post['cc_start_date_month'] . $this->request->post['cc_start_date_year']);
        $request .= '&EXPDATE=' . urlencode($this->request->post['cc_expire_date_month'] . $this->request->post['cc_expire_date_year']);
        $request .= '&CVV2=' . urlencode($this->request->post['cc_cvv2']);

        if ($this->request->post['cc_type'] == 'SWITCH' || $this->request->post['cc_type'] == 'SOLO') {
            $request .= '&ISSUENUMBER=' . urlencode($this->request->post['cc_issue']);
        }

        $request .= '&FIRSTNAME=' . urlencode($order_info['payment_firstname']);
        $request .= '&LASTNAME=' . urlencode($order_info['payment_lastname']);
        $request .= '&EMAIL=' . urlencode($order_info['email']);
        $request .= '&PHONENUM=' . urlencode($order_info['telephone']);
        $request .= '&IPADDRESS=' . urlencode($this->request->server['REMOTE_ADDR']);
        $request .= '&STREET=' . urlencode($order_info['payment_address_1']);
        $request .= '&CITY=' . urlencode($order_info['payment_city']);
        $request .= '&STATE=' . urlencode(($order_info['payment_iso_code_2'] != 'US') ? $order_info['payment_zone'] : $order_info['payment_zone_code']);
        $request .= '&ZIP=' . urlencode($order_info['payment_postcode']);
        $request .= '&COUNTRYCODE=' . urlencode($order_info['payment_iso_code_2']);
        $request .= '&CURRENCYCODE=' . urlencode($order_info['currency_code']);
        $request .= '&BUTTONSOURCE=' . urlencode('OpenCart_2.0_WPP');

        if ($this->cart->hasShipping()) {
            $request .= '&SHIPTONAME=' . urlencode($order_info['shipping_firstname'] . ' ' . $order_info['shipping_lastname']);
            $request .= '&SHIPTOSTREET=' . urlencode($order_info['shipping_address_1']);
            $request .= '&SHIPTOCITY=' . urlencode($order_info['shipping_city']);
            $request .= '&SHIPTOSTATE=' . urlencode(($order_info['shipping_iso_code_2'] != 'US') ? $order_info['shipping_zone'] : $order_info['shipping_zone_code']);
            $request .= '&SHIPTOCOUNTRYCODE=' . urlencode($order_info['shipping_iso_code_2']);
            $request .= '&SHIPTOZIP=' . urlencode($order_info['shipping_postcode']);
        } else {
            $request .= '&SHIPTONAME=' . urlencode($order_info['payment_firstname'] . ' ' . $order_info['payment_lastname']);
            $request .= '&SHIPTOSTREET=' . urlencode($order_info['payment_address_1']);
            $request .= '&SHIPTOCITY=' . urlencode($order_info['payment_city']);
            $request .= '&SHIPTOSTATE=' . urlencode(($order_info['payment_iso_code_2'] != 'US') ? $order_info['payment_zone'] : $order_info['payment_zone_code']);
            $request .= '&SHIPTOCOUNTRYCODE=' . urlencode($order_info['payment_iso_code_2']);
            $request .= '&SHIPTOZIP=' . urlencode($order_info['payment_postcode']);
        }

        if (!$this->config->get('pp_pro_test')) {
            $curl = curl_init('https://api-3t.paypal.com/nvp');
        } else {
            $curl = curl_init('https://api-3t.sandbox.paypal.com/nvp');
        }

        curl_setopt($curl, CURLOPT_PORT, 443);
        curl_setopt($curl, CURLOPT_HEADER, 0);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_FORBID_REUSE, 1);
        curl_setopt($curl, CURLOPT_FRESH_CONNECT, 1);
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $request);

        $response = curl_exec($curl);

        curl_close($curl);

        if (!$response) {
            $this->log->write('DoDirectPayment failed: ' . curl_error($curl) . '(' . curl_errno($curl) . ')');
        }

        $response_info = array();

        parse_str($response, $response_info);

        $json = array();

        //dd($response_info, true);

        if (($response_info['ACK'] == 'Success') || ($response_info['ACK'] == 'SuccessWithWarning')) {
            $message = '';

            if (isset($response_info['AVSCODE'])) {
                $message .= 'AVSCODE: ' . $response_info['AVSCODE'] . "\n";
            }

            if (isset($response_info['CVV2MATCH'])) {
                $message .= 'CVV2MATCH: ' . $response_info['CVV2MATCH'] . "\n";
            }

            if (isset($response_info['TRANSACTIONID'])) {
                $message .= 'TRANSACTIONID: ' . $response_info['TRANSACTIONID'] . "\n";
            }

            $this->model_checkout_order->addOrderHistory($this->session->data['order_id'], $this->config->get('pp_pro_order_status_id'), $message, false);

        } else {
            $json['error'] = $response_info['L_LONGMESSAGE0'];
        }

       return $json;
    }












    public function shipping_address () {

        $this->load->language('checkout/checkout');

        $json = array();

        // Validate if customer is logged in.
        if (!$this->customer->isLogged()) {
            $json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
        }


        // Validate cart has products and has stock.
        if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
            $json['redirect'] = $this->url->link('checkout/cart');
        }

        // Validate minimum quantity requirements.
        $products = $this->cart->getProducts();

        foreach ($products as $product) {
            $product_total = 0;

            foreach ($products as $product_2) {
                if ($product_2['product_id'] == $product['product_id']) {
                    $product_total += $product_2['quantity'];
                }
            }

            if ($product['minimum'] > $product_total) {
                $json['redirect'] = $this->url->link('checkout/cart');

                break;
            }
        }

        if (!$json) {
            if (isset($this->request->post['shipping_address']) && $this->request->post['shipping_address'] == 'existing') {
                $this->load->model('account/address');

                if (empty($this->request->post['address_id'])) {
                    $json['error']['warning'] = $this->language->get('error_address');
                } elseif (!in_array($this->request->post['address_id'], array_keys($this->model_account_address->getAddresses()))) {
                    $json['error']['warning'] = $this->language->get('error_address');
                }

                if (!$json) {
                    // Default Shipping Address
                    $this->load->model('account/address');

                    $this->session->data['shipping_address'] = $this->model_account_address->getAddress($this->request->post['address_id']);

                    unset($this->session->data['shipping_method']);
                    unset($this->session->data['shipping_methods']);
                }
            } else {
                if ((utf8_strlen(trim($this->request->post['firstname'])) < 1) || (utf8_strlen(trim($this->request->post['firstname'])) > 32)) {
                    $json['error']['firstname'] = $this->language->get('error_firstname');
                }

                if ((utf8_strlen(trim($this->request->post['lastname'])) < 1) || (utf8_strlen(trim($this->request->post['lastname'])) > 32)) {
                    $json['error']['lastname'] = $this->language->get('error_lastname');
                }

                if ((utf8_strlen(trim($this->request->post['address_1'])) < 3) || (utf8_strlen(trim($this->request->post['address_1'])) > 128)) {
                    $json['error']['address_1'] = $this->language->get('error_address_1');
                }

                if ((utf8_strlen(trim($this->request->post['city'])) < 2) || (utf8_strlen(trim($this->request->post['city'])) > 128)) {
                    $json['error']['city'] = $this->language->get('error_city');
                }

                $this->load->model('localisation/country');

                $country_info = $this->model_localisation_country->getCountry($this->request->post['country_id']);

                if ($country_info && $country_info['postcode_required'] && (utf8_strlen(trim($this->request->post['postcode'])) < 2 || utf8_strlen(trim($this->request->post['postcode'])) > 10)) {
                    $json['error']['postcode'] = $this->language->get('error_postcode');
                }

                if ($this->request->post['country_id'] == '') {
                    $json['error']['country'] = $this->language->get('error_country');
                }

                if (!isset($this->request->post['zone_id']) || $this->request->post['zone_id'] == '' || !is_numeric($this->request->post['zone_id'])) {
                    $json['error']['zone'] = $this->language->get('error_zone');
                }

                // Custom field validation
                $this->load->model('account/custom_field');

                $custom_fields = $this->model_account_custom_field->getCustomFields($this->config->get('config_customer_group_id'));

                foreach ($custom_fields as $custom_field) {
                    if (($custom_field['location'] == 'address') && $custom_field['required'] && empty($this->request->post['custom_field'][$custom_field['custom_field_id']])) {
                        $json['error']['custom_field' . $custom_field['custom_field_id']] = sprintf($this->language->get('error_custom_field'), $custom_field['name']);
                    }
                }

                if (!$json) {
                    // Default Shipping Address
                    $this->load->model('account/address');

                    $address_id = $this->model_account_address->addAddress($this->request->post);

                    $this->session->data['shipping_address'] = $this->model_account_address->getAddress($address_id);

                    unset($this->session->data['shipping_method']);
                    unset($this->session->data['shipping_methods']);

                    $this->load->model('account/activity');

                    $activity_data = array(
                        'customer_id' => $this->customer->getId(),
                        'name'        => $this->customer->getFirstName() . ' ' . $this->customer->getLastName()
                    );

                    $this->model_account_activity->addActivity('address_add', $activity_data);
                }
            }
        }

       return $json;
    }


    public function country() {
        $json = array();

        $this->load->model('localisation/country');

        $country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);

        if ($country_info) {
            $this->load->model('localisation/zone');

            $json = array(
                'country_id'        => $country_info['country_id'],
                'name'              => $country_info['name'],
                'iso_code_2'        => $country_info['iso_code_2'],
                'iso_code_3'        => $country_info['iso_code_3'],
                'address_format'    => $country_info['address_format'],
                'postcode_required' => $country_info['postcode_required'],
                'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
                'status'            => $country_info['status']
            );
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }


}