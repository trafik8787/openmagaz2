<?php

/**
 * Class ControllerProductCategory
 * todo вывод продуктов в категории
 */
class ControllerProductCategory extends Controller {
	public function index() {
		$this->load->language('product/category');

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

        //dd($this->request->post);
        //передача параметров для фильтра цены
        if (isset($this->request->get['PriceFrom']) and isset($this->request->get['PriceTo'])) {
            //dd($this->request->get);
            $PriceFrom = $this->request->get['PriceFrom'];
            $PriceTo = $this->request->get['PriceTo'];
        } else {
            $PriceFrom = '';
            $PriceTo = '';
        }

        if (isset($this->request->get['WeightFrom']) and isset($this->request->get['WeightTo'])) {
            //dd($this->request->get);
            $WeightFrom = $this->request->get['WeightFrom'];
            $WeightTo = $this->request->get['WeightTo'];
        } else {
            $WeightFrom = '';
            $WeightTo = '';
        }




        $gemston_filter_stone_type = null;
        if (isset($this->request->get['stone_type_gem']) AND $this->request->get['stone_type_gem'] !== 0) {
            $gemston_filter_stone_type = $this->request->get['stone_type_gem'];
        }

        $gemston_filter_shape = null;
        if (isset($this->request->get['shape_gem']) AND $this->request->get['shape_gem'] !== 0) {
            $gemston_filter_shape = $this->request->get['shape_gem'];
        }

        $gemston_primary_color = null;
        if (isset($this->request->get['primary_color_gem']) AND $this->request->get['primary_color_gem'] !== 0) {
            $gemston_primary_color = $this->request->get['primary_color_gem'];
        }




		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['limit'])) {
			$limit = (int)$this->request->get['limit'];
		} else {
			$limit = $this->config->get('config_product_limit');
		}


		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

        $data['count_compare'] = isset($this->session->data['compare']) ? count($this->session->data['compare']): null;

		if (isset($this->request->get['path'])) {
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => ucfirst(strtolower($category_info['name'])),
						'href' => $this->url->link('product/category', 'path=' . $path . $url)
					);
				}
			}
		} else {
			$category_id = 0;
		}

		$category_info = $this->model_catalog_category->getCategory($category_id);



        $general_cat = !empty($path) ? $path : $category_id;

        if (isset($this->request->get['sort'])) {
            $sort = $this->request->get['sort'];
        } else {
            if ($general_cat != 82 and $general_cat != 94) {

                $sort = 'p.best_order';
            } else {
                $sort = 'p.price';
            }
        }

        if (isset($this->request->get['order'])) {
            $order = $this->request->get['order'];
        } else {
            if ($general_cat != 82 and $general_cat != 94) {
                $order = 'DESC';
            } else {
                $order = 'ASC';
            }
        }


		if ($category_info) {
			$this->document->setTitle($category_info['meta_title']);
			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);

			$data['heading_title'] = $category_info['name'];

			$data['text_refine'] = $this->language->get('text_refine');
			$data['text_empty'] = $this->language->get('text_empty');
			$data['text_quantity'] = $this->language->get('text_quantity');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_price'] = $this->language->get('text_price');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$data['text_sort'] = $this->language->get('text_sort');
			$data['text_limit'] = $this->language->get('text_limit');

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['button_list'] = $this->language->get('button_list');
			$data['button_grid'] = $this->language->get('button_grid');

			// Set the last category breadcrumb
			$data['breadcrumbs'][] = array(
				'text' =>  ucfirst(strtolower($category_info['name'])),
				//'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'])
			);

			if ($category_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
			} else {
				$data['thumb'] = '';
			}

			$data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
			$data['compare'] = $this->url->link('product/compare');

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['categories'] = array();

			$results = $this->model_catalog_category->getCategories($category_id);

			foreach ($results as $result) {
				$filter_data = array(
					'filter_category_id'  => $result['category_id'],
					'filter_sub_category' => true
				);

				$data['categories'][] = array(
					'name' => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] . $url)
				);
			}

			$data['products'] = array();

            $start = ($page - 1) * $limit;

            //загрузка товаров по скролу
            if (!empty($this->request->post['startFrom'])) {
                $start = $this->request->post['startFrom'];
                $limit = 16;
            }


			$filter_data = array(
				'filter_category_id' => $category_id,
				'filter_filter'      => $filter,
                'price_filter'		 => array('min' => $PriceFrom, 'max' => $PriceTo), //добавлен фильтр по цене
                'weight_filter'		 => array('min' => $WeightFrom, 'max' => $WeightTo), //добавлен фильтр по каратам
                'gemston_filter_stone_type' => $gemston_filter_stone_type,
                'gemston_filter_shape' => $gemston_filter_shape,
                'gemston_primary_color' => $gemston_primary_color,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => $start,
				'limit'              => $limit
			);

			$product_total = $this->model_catalog_product->getTotalProducts($filter_data);

			$results = $this->model_catalog_product->getProducts($filter_data);

			foreach ($results as $result) {
				if ($result['image']) {

                    $ext = pathinfo(basename($result['image']));
                    if (!empty($ext['extension']) and $ext['extension'] == 'jpe') {
                        $image = HostSite('/image/'.$result['image']);
                    } else {

                        $image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                        if (empty($image)) {
                            $image = '/catalog/view/theme/canary/img/preloader.png';
                        }
                    }

				} else {
					//$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
					$image = '/catalog/view/theme/canary/img/preloader.png';
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate(ceil($result['price']), $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate(floor($result['special']), $result['tax_class_id'], $this->config->get('config_tax')));
					//$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}

				if (!empty($this->session->data['compare'])) {
                    if (in_array($result['product_id'], $this->session->data['compare'])) {
                        $compare = true;
                    } else {
                        $compare = false;
                    }
                } else {
                    $compare = false;
                }

				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $result['rating'],
					//'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url),
					'href'        => $this->url->link('product/product', '&product_id=' . $result['product_id']),
                    'sku'         => $result['sku'],
                    'wishlist'    => isset($this->session->data['wishlist'][$result['product_id']]) ? $this->session->data['wishlist'][$result['product_id']]: null,
                    'compare'     => $compare
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}


            //gemstones filtr
            if (isset($this->request->get['stone_type_gem'])) {
                $url .= '&stone_type_gem=' . $this->request->get['stone_type_gem'];
            }


            if (isset($this->request->get['shape_gem'])) {
                $url .= '&shape_gem=' . $this->request->get['shape_gem'];
            }


            if (isset($this->request->get['primary_color_gem'])) {
                $url .= '&primary_color_gem=' . $this->request->get['primary_color_gem'];
            }

            //todo добавляем цену к части урла который попалает в сортировку
            if (isset($this->request->get['PriceFrom']) and isset($this->request->get['PriceTo'])) {
                $url .= '&PriceFrom=' . $this->request->get['PriceFrom'].'&PriceTo=' . $this->request->get['PriceTo'];
            }

            if (isset($this->request->get['WeightFrom']) and isset($this->request->get['WeightTo'])) {
                $url .= '&WeightFrom=' . $this->request->get['WeightFrom'].'&WeightTo=' . $this->request->get['WeightTo'];
            }

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['sorts'] = array();

//			$data['sorts'][] = array(
//				'text'  => $this->language->get('text_default'),
//				'value' => 'p.sort_order-ASC',
//				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.sort_order&order=ASC' . $url)
//			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)
			);


            //dd($general_cat);
            if ($general_cat != 82 and $general_cat != 94) {
                $data['sorts'][] = array(
                    'text' => 'Best Sellers',
                    'value' => 'p.best_order-DESC',
                    'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.best_order&order=DESC' . $url)
                );
            }

			if ($this->config->get('config_review_status')) {
				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)
				);

				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=ASC' . $url)
				);
			}

//			$data['sorts'][] = array(
//				'text'  => $this->language->get('text_model_asc'),
//				'value' => 'p.model-ASC',
//				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=ASC' . $url)
//			);
//
//			$data['sorts'][] = array(
//				'text'  => $this->language->get('text_model_desc'),
//				'value' => 'p.model-DESC',
//				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=DESC' . $url)
//			);

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}


            //gemstones filtr
            if (isset($this->request->get['stone_type_gem'])) {
                $url .= '&stone_type_gem=' . $this->request->get['stone_type_gem'];
            }


            if (isset($this->request->get['shape_gem'])) {
                $url .= '&shape_gem=' . $this->request->get['shape_gem'];
            }


            if (isset($this->request->get['primary_color_gem'])) {
                $url .= '&primary_color_gem=' . $this->request->get['primary_color_gem'];
            }

            //todo добавляем цену к части урла который попалает в сортировку
            if (isset($this->request->get['PriceFrom']) and isset($this->request->get['PriceTo'])) {
                $url .= '&PriceFrom=' . $this->request->get['PriceFrom'].'&PriceTo=' . $this->request->get['PriceTo'];
            }

            if (isset($this->request->get['WeightFrom']) and isset($this->request->get['WeightTo'])) {
                $url .= '&WeightFrom=' . $this->request->get['WeightFrom'] . '&WeightTo='. $this->request->get['WeightTo'];
            }

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$data['limits'] = array();

			$limits = array_unique(array($this->config->get('config_product_limit'), 25, 50, 75, 100));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $value)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}


            //gemstones filtr
            if (isset($this->request->get['stone_type_gem'])) {
                $url .= '&stone_type_gem=' . $this->request->get['stone_type_gem'];
            }


            if (isset($this->request->get['shape_gem'])) {
                $url .= '&shape_gem=' . $this->request->get['shape_gem'];
            }


            if (isset($this->request->get['primary_color_gem'])) {
                $url .= '&primary_color_gem=' . $this->request->get['primary_color_gem'];
            }

            if (isset($this->request->get['PriceFrom']) and isset($this->request->get['PriceTo'])) {
                $url .= '&PriceFrom=' . $this->request->get['PriceFrom'].'&PriceTo=' . $this->request->get['PriceTo'];
            }

            if (isset($this->request->get['WeightFrom']) and isset($this->request->get['WeightTo'])) {
                $url .= '&WeightFrom=' . $this->request->get['WeightFrom'] . '&WeightTo='. $this->request->get['WeightTo'];
            }


			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}



            if (!empty($this->request->cookie['TableGrid'])) {
                $data['table_bloc'] = $this->request->cookie['TableGrid'];
            } else {
                $data['table_bloc'] = 'th-view';
            }

            //dd($product_total);
			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');

			$data['pagination'] = $pagination->render();

			$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

			// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
			if ($page == 1) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL'), 'canonical');
			} elseif ($page == 2) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL'), 'prev');
			} else {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page - 1), 'SSL'), 'prev');
			}

			if ($limit && ceil($product_total / $limit) > $page) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page + 1), 'SSL'), 'next');
			}

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;

			$data['continue'] = $this->url->link('common/home');

            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');


            //текущий url для фильтра(при нажатии на фильт обнулялась подкатегория теперь путь берется из скрытого поля <input type="hidden" class="w-action_page" >)
            $data['action_page'] = $this->url->link('product/category', 'path=' . $this->request->get['path']);

            if (in_ajax()) {
                if (!empty($this->request->post['startFrom'])) {
                    $data['ajax'] = true;
                }

            }

            //шаблон одиночного товара
            $product_item = $this->load->view($this->config->get('config_template') . '/template/product/category_item.tpl', $data);
            $data['product_item'] = $product_item;

			if (in_ajax()) {

                if (!empty($this->request->post['startFrom'])) {
                    echo $product_item;
                }

                if (empty($_POST['general_category']) and empty($this->request->post['startFrom'])) {
                    echo $this->load->view($this->config->get('config_template') . '/template/product/category_ajax.tpl', $data);
                } else {
                   //echo $this->load->view($this->config->get('config_template') . '/template/product/category_ajax_general.tpl', $data);
                }

			} else {
                //dd($product_item);
				$data['footer'] = $this->load->controller('common/footer');
				$data['header'] = $this->load->controller('common/header');

				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/category.tpl')) {
					$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/category.tpl', $data));
				} else {
					$this->response->setOutput($this->load->view('default/template/product/category.tpl', $data));
				}
			}
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
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

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/category', $url)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/error/not_found.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/error/not_found.tpl', $data));
			}
		}
	}
}
