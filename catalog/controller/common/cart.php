<?php
class ControllerCommonCart extends Controller {

    public $data = array();

	public function index($argum = null) {
		$this->load->language('common/cart');

		// Totals
		$this->load->model('extension/extension');

		$total_data = array();
		$total = 0;
		$taxes = $this->cart->getTaxes();

		// Display prices
		if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
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

			$sort_order = array();

			foreach ($total_data as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			}

			array_multisort($sort_order, SORT_ASC, $total_data);
		}

        $count = $this->cart->countProducts();

		$this->data['text_empty'] = $this->language->get('text_empty');
		$this->data['text_cart'] = $this->language->get('text_cart');
		$this->data['text_checkout'] = $this->language->get('text_checkout');
		$this->data['text_recurring'] = $this->language->get('text_recurring');
		$this->data['text_items'] = sprintf($this->language->get('text_items'), $count + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0), $this->currency->format($total));
        $this->data['count'] = $count;

        $this->data['text_loading'] = $this->language->get('text_loading');

		$this->data['button_remove'] = $this->language->get('button_remove');



		// Gift Voucher
		$this->data['vouchers'] = array();

		if (!empty($this->session->data['vouchers'])) {
			foreach ($this->session->data['vouchers'] as $key => $voucher) {
				$this->data['vouchers'][] = array(
					'key'         => $key,
					'description' => $voucher['description'],
					'amount'      => $this->currency->format($voucher['amount'])
				);
			}
		}

		$this->data['totals'] = array();

		foreach ($total_data as $result) {
			$this->data['totals'][] = array(
				'title' => $result['title'],
				'text'  => $this->currency->format($result['value']),
			);
		}


        $this->show_products();

		$this->data['cart'] = $this->url->link('checkout/cart');
		$this->data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');

        if (empty($argum['checkout'])) {

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/cart.tpl')) {
                return $this->load->view($this->config->get('config_template') . '/template/common/cart.tpl', $this->data);
            } else {
                return $this->load->view('default/template/common/cart.tpl', $this->data);
            }

        } else {
            return $this->data;
        }
	}


    public function show_products() {

        $this->load->model('tool/image');
        $this->load->model('tool/upload');

        $this->data['products'] = array();
        //dd($this->cart->getProducts());
        $products = $this->cart->getProducts();
        $products3_complect = $products;
        foreach ($products as $product) {

            if ($product['image']) {
                $image = $this->model_tool_image->resize($product['image'], $this->config->get('config_image_cart_width'), $this->config->get('config_image_cart_height'));
            } else {
                $image = '';
            }

            if (!empty($product['diamond']) AND $product['diamond'] == 1) {
                $image = $product['image'];
            }

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
                    'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value),
                    'type'  => $option['type']
                );
            }

            // Display prices
            if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                $price = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')));
            } else {
                $price = false;
            }

            // Display prices
            if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                $total = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')) * $product['quantity']);
            } else {
                $total = false;
            }

            if (!empty($product['diamond'])) {
                $href_product = '/diamond_page?diamond_id='.$product['product_id'];
            } else {
                $href_product =  $this->url->link('product/product', 'product_id=' . $product['product_id']);
            }
            //dd($product);
            if ($product['complect'] != 0) {
                $tmp_complect = array();

                foreach ($products3_complect as $key =>  $product_rows) {
                    if ($product['complect'] == $product_rows['complect']) {

                        unset($products3_complect[$key]);

                        if ($product_rows['image']) {
                            $images = $this->model_tool_image->resize($product_rows['image'], $this->config->get('config_image_cart_width'), $this->config->get('config_image_cart_height'));
                        } else {
                            $images = '';
                        }

                        if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                            $prices = $this->currency->format($this->tax->calculate($product_rows['price'], $product_rows['tax_class_id'], $this->config->get('config_tax')));
                        } else {
                            $prices = false;
                        }


                        if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                            $totals = $this->currency->format($this->tax->calculate($product_rows['price'], $product_rows['tax_class_id'], $this->config->get('config_tax')) * $product_rows['quantity']);
                        } else {
                            $totals = false;
                        }

                        if (!empty($product_rows['diamond'])) {
                            $href_products = '/diamond_page?diamond_id='.$product_rows['product_id'];
                            $images = $product_rows['image'];
                        } else {
                            $href_products = $this->url->link('product/product', 'product_id=' . $product_rows['product_id']);
                        }

                        $tmp_complect[] = array(
                            'cart_id' => $product_rows['cart_id'],
                            'diamond' => !empty($product_rows['diamond']) ? 1 : 0,
                            'thumb' => $images,
                            'name' => $product_rows['name'],
                            'model' => $product_rows['model'],
                            'option' => $option_data,
                            'recurring' => ($product_rows['recurring'] ? $product_rows['recurring']['name'] : ''),
                            'quantity' => $product_rows['quantity'],
                            'price' => $prices,
                            'total' => $totals,
                            'href' => $href_products,
                            'complect' => $product_rows['complect']
                        );
                    }
                }
                if (!empty($tmp_complect)) {
                    $this->data['products'][] = $tmp_complect;
                }

            } else {
                $this->data['products'][] = array(
                    'cart_id' => $product['cart_id'],
                    'diamond' => !empty($product['diamond']) ? 1 : 0,
                    'thumb' => $image,
                    'name' => $product['name'],
                    'model' => $product['model'],
                    'option' => $option_data,
                    'recurring' => ($product['recurring'] ? $product['recurring']['name'] : ''),
                    'quantity' => $product['quantity'],
                    'price' => $price,
                    'total' => $total,
                    'href' => $href_product
                );
            }
        }

        //dd($this->data);
        return $this->data;
    }


	public function info() {
		$this->response->setOutput($this->index());
	}


}
