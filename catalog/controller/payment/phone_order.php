<?php
class ControllerPaymentPhoneOrder extends Controller {
	public function index() {
		$this->load->language('payment/phone_order');

		$data['text_instruction'] = $this->language->get('text_instruction');
		$data['text_description'] = $this->language->get('text_description');
		$data['text_payment'] = $this->language->get('text_payment');
		$data['text_loading'] = $this->language->get('text_loading');

		$data['button_confirm'] = $this->language->get('button_confirm');

		$data['bank'] = nl2br($this->config->get('phone_order_bank' . $this->config->get('config_language_id')));
        $data['logged'] = $this->customer->isLogged();
		$data['continue'] = $this->url->link('checkout/success');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/phone_order.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/payment/phone_order.tpl', $data);
		} else {
			return $this->load->view('default/template/payment/phone_order.tpl', $data);
		}
	}

	public function confirm() {
		if ($this->session->data['payment_method']['code'] == 'phone_order') {
			$this->load->language('payment/phone_order');

			$this->load->model('checkout/order');

			$comment  = $this->language->get('text_instruction') . "\n\n";
			$comment .= $this->config->get('phone_order_bank' . $this->config->get('config_language_id')) . "\n\n";
			$comment .= $this->language->get('text_payment');

			$this->model_checkout_order->addOrderHistory($this->session->data['order_id'], $this->config->get('phone_order_order_status_id'), $comment, true);
		}
	}
}