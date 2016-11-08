<?php
class ControllerCheckoutSuccess extends Controller {
	public function index() {
		$this->load->language('checkout/success');
        //$this->load->model('checkout/order');
        //$this->model_checkout_order->getOrder($this->session->data['order_id']);
        $cart = $this->load->controller('common/cart', array('checkout' => 1));


		if (isset($this->session->data['order_id'])) {

            $json_product = array();

            foreach ($cart['products'] as $row) {
                $json_product[] = array(
                    'name' => $row['name'],
                    'id'    => $row['product_id'],
                    'price' => $row['total_int'],
                    'variant' => !empty($row['option'][0]['value']) ? $row['option'][0]['value'] : '',
                    'quantity' => $row['quantity']
                );
            }


            $json_result = array(
                'event' => 'purchase',
                'ecommerce' => array(
                    'currencyCode' =>  'USD',
                    'purchase' => array(
                        'actionField' => array(
                            'id' => $this->session->data['order_id'],
                            'revenue' => $cart['totals'][1]['value'],
                            'shipping' => '0'
                        ),
                        'products' => $json_product
                    )
                )
            );

            $data['tags_marceting'] = json_encode($json_result);
           // dd($data['tags_marceting'], true);
			$this->cart->clear();

			// Add to activity log
			$this->load->model('account/activity');

			if ($this->customer->isLogged()) {
				$activity_data = array(
					'customer_id' => $this->customer->getId(),
					'name'        => $this->customer->getFirstName() . ' ' . $this->customer->getLastName(),
					'order_id'    => $this->session->data['order_id']
				);

				$this->model_account_activity->addActivity('order_account', $activity_data);
			} else {
				$activity_data = array(
					'name'     => $this->session->data['guest']['firstname'] . ' ' . $this->session->data['guest']['lastname'],
					'order_id' => $this->session->data['order_id']
				);

				$this->model_account_activity->addActivity('order_guest', $activity_data);
			}


			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['guest']);
			unset($this->session->data['comment']);
			unset($this->session->data['order_id']);
			unset($this->session->data['coupon']);
			unset($this->session->data['reward']);
			unset($this->session->data['voucher']);
			unset($this->session->data['vouchers']);
			unset($this->session->data['totals']);

		} else {
            $this->response->redirect('/');
        }

//        if (empty(Cookie::get('dataLayerW'))) {
//            $data['dataLayerW'] = 1;
//            Cookie::set('dataLayerW', 1);
//        }

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_basket'),
			'href' => $this->url->link('checkout/cart')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_checkout'),
			'href' => $this->url->link('checkout/checkout', '', 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_success'),
			'href' => $this->url->link('checkout/success')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		if ($this->customer->isLogged()) {
			$data['text_message'] = sprintf($this->language->get('text_customer'), $this->url->link('account/account', '', 'SSL'), $this->url->link('account/order', '', 'SSL'), $this->url->link('account/download', '', 'SSL'), $this->url->link('information/contact'));
		} else {
			$data['text_message'] = sprintf($this->language->get('text_guest'), $this->url->link('information/contact'));
		}

		$data['button_continue'] = $this->language->get('button_continue');

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/success.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/success.tpl', $data));
		}
	}
}