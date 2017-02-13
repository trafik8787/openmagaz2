<?php
class ControllerCommonSeoUrl extends Controller {

    private $url_list = array(
        'module/rapnet/getproduct' => 'diamond_page',
        'module/complect/complete_diamond' => 'complete_diamond',
        'information/faq' => 'information/faq',
        'information/contact' => 'company/contacts',
        'information/contact/success' => 'company/contacts/success',
        'information/education' => 'information/education',
        'information/education/page_find' => 'information/education_find',
        'module/login_facebook' => 'loginfacebook',
        'account/login' => 'login',
        'account/account' => 'account',
        'account/wishlist' => 'wishlist',
        'account/logout' => 'logout',
        'module/complect/del_complect' => 'del_complect',
        'product/compare' => 'compare',
        'marketing/newsletter/add' => 'newsletter_add',
        'checkout/success' => 'checkout_success',
        'checkout/cart' => 'shop-cart',
        'checkout/checkout' => 'shop-checkout',
        'product/search' => 'search',
        'account/forgotten' => 'account/forgotten',
        'information/about_us' => 'company',
        'account/unsubscribe' => 'unsubscribe',
        'feed/google_sitemap' => 'sitemap',
        'information/information/privacyPolicy' => 'information/policies/privacy-policy',
        'information/information/TermsConditions' => 'information/policies/terms-conditions',
        'information/information/CookiePolicy' => 'information/policies/cookie-policy',
        'information/information/ReturnPolicy' => 'information/policies/return-policy',
        'information/information/DeliveryPolicy' => 'information/policies/delivery-policy',
        'information/information/Quality' => 'information/about-us/quality',
        'information/information/MilitaryDiscount' => 'information/services/military-discount',
        'information/information/HelpingOthers' => 'information/services/helping-others',
        'information/information/ConflictFreeDiamonds' => 'information/policies/conflict-free-diamonds',
        'information/information/FreeAndInsuredShipping' => 'information/services/free-and-insured-shipping',
        'information/information/CertifiedGemologistAppraisals' => 'information/services/certified-gemologist-appraisals',
        'information/information/PriceMatchGuarantee' => 'information/services/price-match-guarantee',
        'information/information/LifetimeWarranty' => 'information/services/lifetime-warranty',
        'information/information/FreeRingResizing' => 'information/services/free-ring-resizing',
        'information/information/FreeEngraving' => 'information/services/free_engraving',
        'information/information/MadeInUSA' => 'information/services/made-in-usa',
        'information/information/WhyPickBrilliantCanary' => '/information/about-us/why-pick-brilliant-canary',
    );

	public function index() {
		// Add rewrite to url class
		if ($this->config->get('config_seo_url')) {
			$this->url->addRewrite($this);
		}

		// Decode URL
		if (isset($this->request->get['_route_'])) {
			$parts = explode('/', $this->request->get['_route_']);

			// remove any empty arrays from trailing
			if (utf8_strlen(end($parts)) == 0) {
				array_pop($parts);
			}

			foreach ($parts as $part) {
				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE keyword = '" . $this->db->escape($part) . "'");

				if ($query->num_rows) {
					$url = explode('=', $query->row['query']);

					if ($url[0] == 'product_id') {
						$this->request->get['product_id'] = $url[1];
					}

					if ($url[0] == 'category_id') {
						if (!isset($this->request->get['path'])) {
							$this->request->get['path'] = $url[1];
						} else {
							$this->request->get['path'] .= '_' . $url[1];
						}
					}

					if ($url[0] == 'manufacturer_id') {
						$this->request->get['manufacturer_id'] = $url[1];
					}

					if ($url[0] == 'information_id') {
						$this->request->get['information_id'] = $url[1];
					}

					if ($query->row['query'] && $url[0] != 'information_id' && $url[0] != 'manufacturer_id' && $url[0] != 'category_id' && $url[0] != 'product_id') {
						$this->request->get['route'] = $query->row['query'];
					}
				} else {
					$this->request->get['route'] = 'error/not_found';

					break;
				}
			}


            /* SEO Custom URL */
            if ( $_s = $this->setURL($this->request->get['_route_']) ) {
                $this->request->get['route'] = $_s;
            }/* SEO Custom URL */


			if (!isset($this->request->get['route'])) {
				if (isset($this->request->get['product_id'])) {
					$this->request->get['route'] = 'product/product';
				} elseif (isset($this->request->get['path'])) {
					$this->request->get['route'] = 'product/category';
				} elseif (isset($this->request->get['manufacturer_id'])) {
					$this->request->get['route'] = 'product/manufacturer/info';
				} elseif (isset($this->request->get['information_id'])) {
					$this->request->get['route'] = 'information/information';
				}
			}

			if (isset($this->request->get['route'])) {
				return new Action($this->request->get['route']);
			}
		}
	}

	public function rewrite($link) {
		$url_info = parse_url(str_replace('&amp;', '&', $link));

		$url = '';

		$data = array();

		parse_str($url_info['query'], $data);

		foreach ($data as $key => $value) {
			if (isset($data['route'])) {
				if (($data['route'] == 'product/product' && $key == 'product_id') || (($data['route'] == 'product/manufacturer/info' || $data['route'] == 'product/product') && $key == 'manufacturer_id') || ($data['route'] == 'information/information' && $key == 'information_id')) {
					$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = '" . $this->db->escape($key . '=' . (int)$value) . "'");

					if ($query->num_rows && $query->row['keyword']) {
						$url .= '/' . $query->row['keyword'];

						unset($data[$key]);
					}
				} elseif ($key == 'path') {
					$categories = explode('_', $value);

					foreach ($categories as $category) {
						$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = 'category_id=" . (int)$category . "'");

						if ($query->num_rows && $query->row['keyword']) {
							$url .= '/' . $query->row['keyword'];
						} else {
							$url = '';

							break;
						}
					}

					unset($data[$key]);
				}


                /* SEO Custom URL */
                if( $_u = $this->getURL($data['route']) ){
                    $url .= $_u;
                    unset($data[$key]);
                }/* SEO Custom URL */


            }
		}

		if ($url) {
			unset($data['route']);

			$query = '';

			if ($data) {
				foreach ($data as $key => $value) {
					$query .= '&' . rawurlencode((string)$key) . '=' . rawurlencode((string)$value);
				}

				if ($query) {
					$query = '?' . str_replace('&', '&amp;', trim($query, '&'));
				}
			}

			return $url_info['scheme'] . '://' . $url_info['host'] . (isset($url_info['port']) ? ':' . $url_info['port'] : '') . str_replace('/index.php', '', $url_info['path']) . $url . $query;
		} else {
			return $link;
		}
	}



    /* SEO Custom URL */
    public function getURL($route) {
        if( count($this->url_list) > 0) {
            foreach ($this->url_list as $key => $value) {
                if($route == $key) {
                    return '/'.$value;
                }
            }
        }
        return false;
    }
    public function setURL($_route) {
        if( count($this->url_list) > 0 ){
            foreach ($this->url_list as $key => $value) {
                if($_route == $value) {
                    return $key;
                }
            }
        }
        return false;
    }/* SEO Custom URL */


}
