<?php
class ControllerAccountWishList extends Controller {
	public function index() {
//		if (!$this->customer->isLogged()) {
//			$this->session->data['redirect'] = $this->url->link('account/wishlist', '', 'SSL');
//
//			$this->response->redirect($this->url->link('account/login', '', 'SSL'));
//		}

		$this->load->language('account/wishlist');

		$this->load->model('account/wishlist');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		if (isset($this->request->get['remove'])) {
			// Remove Wishlist
			$this->model_account_wishlist->deleteWishlist($this->request->get['remove']);

			$this->session->data['success'] = $this->language->get('text_remove');

			$this->response->redirect($this->url->link('account/wishlist'));
		}

        if (isset($this->request->get['removeDiamond'])) {

            if ($this->customer->isLogged()) {
                $this->model_account_wishlist->deleteWishlistDiamond($this->request->get['removeDiamond']);
                $this->session->data['success'] = $this->language->get('text_remove');
                $this->response->redirect($this->url->link('account/wishlist'));
            } else {
                unset($this->session->data['wishlist_diamond'][$this->request->get['removeDiamond']]);
            }


        }

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_account'),
			'href' => $this->url->link('account/account', '', 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('account/wishlist')
		);


        $data['logged'] = $this->customer->isLogged();

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_empty'] = $this->language->get('text_empty');

		$data['column_image'] = $this->language->get('column_image');
		$data['column_name'] = $this->language->get('column_name');
		$data['column_model'] = $this->language->get('column_model');
		$data['column_stock'] = $this->language->get('column_stock');
		$data['column_price'] = $this->language->get('column_price');
		$data['column_action'] = $this->language->get('column_action');

		$data['button_continue'] = $this->language->get('button_continue');
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_remove'] = $this->language->get('button_remove');

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		$data['products'] = array();


		$results = $this->model_account_wishlist->getWishlist();
        //dd($this->session->data['wishlist'][0]);

		foreach ($results as $result) {


             $product_info = $this->model_catalog_product->getProduct($result['product_id']);



			if ($product_info and $result['diamond'] == 0) {
				if ($product_info['image']) {
					$image = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_wishlist_width'), $this->config->get('config_image_wishlist_height'));
				} else {
					$image = false;
				}

				if ($product_info['quantity'] <= 0) {
					$stock = $product_info['stock_status'];
				} elseif ($this->config->get('config_stock_display')) {
					$stock = $product_info['quantity'];
				} else {
					$stock = $this->language->get('text_instock');
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$product_info['special']) {
					$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				$data['products'][] = array(
					'product_id' => $product_info['product_id'],
                    'sku'       => $product_info['sku'],
					'thumb'      => $image,
					'name'       => $product_info['name'],
					'model'      => $product_info['model'],
					'stock'      => $stock,
					'price'      => $price,
					'special'    => $special,
					'href'       => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
					'remove'     => $this->url->link('account/wishlist', 'remove=' . $product_info['product_id'])
				);

			} else {
                $result_obj = json_decode($result['diamond_data']);
                $result_obj = $result_obj->response->body->diamond;

                $data['products'][] = array(
                    'product_id' => $result_obj->diamond_id,
                    'sku'       => $result_obj->diamond_id,
                    'thumb'      => imageDiamont($result_obj->shape),
                    'name'       => $result_obj->shape.' '.$result_obj->size.' '.$result_obj->color.' '.$result_obj->clarity,
                    'model'      => $result_obj->shape.' '.$result_obj->size.' '.$result_obj->color.' '.$result_obj->clarity,
                    'stock'      => 100,
                    'price'      => $this->currency->format($this->tax->calculate($result_obj->total_sales_price, $product_info['tax_class_id'], $this->config->get('config_tax'))),
                    'special'    => false,
                    'href'       => '/diamond_page?diamond_id='.$result_obj->diamond_id,
                    'remove'     => $this->url->link('account/wishlist', 'removeDiamond=' . $result_obj->diamond_id)
                );
            }
		}

		$data['continue'] = $this->url->link('account/account', '', 'SSL');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
        if (!in_ajax()) {
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');
        }
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/wishlist.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/wishlist.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/account/wishlist.tpl', $data));
		}
	}

	public function add() {
		$this->load->language('account/wishlist');

		$json = array();

		if (isset($this->request->post['product_id'])) {
			$product_id = $this->request->post['product_id'];
		} else {
			$product_id = 0;
		}

		$this->load->model('catalog/product');

		$product_info = $this->model_catalog_product->getProduct($product_id);

		if ($product_info) {
			if ($this->customer->isLogged()) {
				// Edit customers cart
				$this->load->model('account/wishlist');

				$this->model_account_wishlist->addWishlist($this->request->post['product_id']);

				$json['success'] = sprintf($this->language->get('text_success'), $this->url->link('product/product', 'product_id=' . (int)$this->request->post['product_id']), $product_info['name'], $this->url->link('account/wishlist'));

				$json['total'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
			} else {
				if (!isset($this->session->data['wishlist'])) {
					$this->session->data['wishlist'] = array();
				}

				$this->session->data['wishlist'][$this->request->post['product_id']] = $this->request->post['product_id'];

				$this->session->data['wishlist'] = array_unique($this->session->data['wishlist']);

				$json['success'] = sprintf($this->language->get('text_login'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'), $this->url->link('product/product', 'product_id=' . (int)$this->request->post['product_id']), $product_info['name'], $this->url->link('account/wishlist'));

				$json['total'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}


    public function addDiamond() {

        $this->load->language('account/wishlist');

        if (isset($this->request->post['diamond_id'])) {
            $diamond_id = $this->request->post['diamond_id'];
        } else {
            $diamond_id = false;
        }

        $json = array();

        if ($diamond_id) {

            $this->load->model('account/wishlist');

            $diamond_data = $this->load->controller('module/rapnet/getDaimondsId', array('diamond_id' => $diamond_id));

            if ($this->customer->isLogged()) {

                $diamond_data_obj = json_decode($diamond_data);

                $this->model_account_wishlist->addDiamond($diamond_id, $diamond_data);
                $json['success'] = $diamond_data_obj->response->body->diamond->diamond_id;
                $json['total'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());

            } else {

                $this->session->data['wishlist_diamond'][$diamond_id] = array('diamond_id' => $diamond_id, 'diamond_data' => $diamond_data);
                $json['success'] = 'Sysses';
                $json['total'] = sprintf($this->language->get('text_wishlist'), count($this->session->data['wishlist_diamond']));

            }
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

}
