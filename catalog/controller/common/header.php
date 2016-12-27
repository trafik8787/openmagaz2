<?php
class ControllerCommonHeader extends Controller {
    public function index() {
        // Analytics
        $this->load->model('extension/extension');

        $data['analytics'] = array();

        $analytics = $this->model_extension_extension->getExtensions('analytics');

        foreach ($analytics as $analytic) {
            if ($this->config->get($analytic['code'] . '_status')) {
                $data['analytics'][] = $this->load->controller('analytics/' . $analytic['code']);
            }
        }

        if ($this->request->server['HTTPS']) {
            $server = $this->config->get('config_ssl');
        } else {
            $server = $this->config->get('config_url');
        }

        if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
            $this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
        }

        $data['title'] = $this->document->getTitle();
        $data['stylelink'] = $this->GetStyle();

        //$data['base'] = $server;
        $data['description'] = $this->document->getDescription();
        $data['keywords'] = $this->document->getKeywords();
        //$data['links'] = $this->document->getLinks();
        //$data['styles'] = $this->document->getStyles();
        //$data['scripts'] = $this->document->getScripts();
        //$data['lang'] = $this->language->get('code');
        //$data['direction'] = $this->language->get('direction');

        $data['name'] = $this->config->get('config_name');

        if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
            $data['logo'] = $server . 'image/' . $this->config->get('config_logo');
        } else {
            $data['logo'] = '';
        }

        $this->load->language('common/header');

        $data['text_home'] = $this->language->get('text_home');

        // Wishlist
        if ($this->customer->isLogged()) {
            $this->load->model('account/wishlist');

            $data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
            $data['text_wishlist_count'] = $this->model_account_wishlist->getTotalWishlist();
        } else {

            if (!empty($this->session->data['wishlist']) AND empty($this->session->data['wishlist_diamond'])) {
                $coun_wishlist = count($this->session->data['wishlist']);
            } elseif (!empty($this->session->data['wishlist_diamond']) AND empty($this->session->data['wishlist'])) {
                $coun_wishlist = count($this->session->data['wishlist_diamond']);
            } elseif (!empty($this->session->data['wishlist']) AND !empty($this->session->data['wishlist_diamond'])) {
                $coun_wishlist = count($this->session->data['wishlist']) + count($this->session->data['wishlist_diamond']);
            } else {
                $coun_wishlist = 0;
            }

            $data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), ($coun_wishlist));
            $data['text_wishlist_count'] = $coun_wishlist;

        }

        $data['count_compare'] = isset($this->session->data['compare']) ? count($this->session->data['compare']): null;

        $data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
        $data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));

        $data['text_account'] = $this->language->get('text_account');
        $data['text_register'] = $this->language->get('text_register');
        $data['text_login'] = $this->language->get('text_login');
        $data['text_order'] = $this->language->get('text_order');
        $data['text_transaction'] = $this->language->get('text_transaction');
        $data['text_download'] = $this->language->get('text_download');
        $data['text_logout'] = $this->language->get('text_logout');
        $data['text_checkout'] = $this->language->get('text_checkout');
        $data['text_category'] = $this->language->get('text_category');
        $data['text_all'] = $this->language->get('text_all');

        $data['home'] = $this->url->link('common/home');
        $data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
        $data['logged'] = $this->customer->isLogged();
        $data['account'] = $this->url->link('account/account', '', 'SSL');
        $data['register'] = $this->url->link('account/register', '', 'SSL');
        $data['login'] = $this->url->link('account/login', '', 'SSL');
        $data['order'] = $this->url->link('account/order', '', 'SSL');
        $data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
        $data['download'] = $this->url->link('account/download', '', 'SSL');
        $data['logout'] = $this->url->link('account/logout', '', 'SSL');
        $data['shopping_cart'] = $this->url->link('checkout/cart');
        $data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
        $data['contact'] = $this->url->link('information/contact');
        $data['telephone'] = $this->config->get('config_telephone');

        $status = true;

        if (isset($this->request->server['HTTP_USER_AGENT'])) {
            $robots = explode("\n", str_replace(array("\r\n", "\r"), "\n", trim($this->config->get('config_robots'))));

            foreach ($robots as $robot) {
                if ($robot && strpos($this->request->server['HTTP_USER_AGENT'], trim($robot)) !== false) {
                    $status = false;

                    break;
                }
            }
        }

        // Menu
        $this->load->model('catalog/category');

        $this->load->model('catalog/product');

        $this->load->model('catalog/information');

        $data['categories'] = array();

        //$categories = $this->model_catalog_category->getCategories(0);
        $categories2 = $this->model_catalog_category->getCategoriesNew(true);

        $data['categories'] = $categories2;

        if (!empty($this->request->get['_route_'])) {
            $data['_route_'] = $this->request->get['_route_'];
        } else {
            $data['_route_'] = null;
        }

        if (!empty($this->request->get['path'])) {
            $data['path'] = $this->request->get['path'];
        } else {
            $data['path'] = null;
        }

        $ert = array();
        foreach ($categories2 as $row) {

            if (!empty($this->request->get['path']) and $this->request->get['path'] == $row['path']) {
                $row['class_activ'] = 'w-menu-activ';
            } else {
                $row['class_activ'] = ' ';
            }

            $ert[] = $row;
        }

        $data['categories'] = $ert;
//        $data['categories'] = $categories2;
        //dd($this->request->get['path']);
        $data['top_meny'] = $this->load->view($this->config->get('config_template').'/template/common/top_meny.tpl', $data);


        $data['informations'] = array();

        foreach ($this->model_catalog_information->getInformations() as $result) {
            if ($result['bottom']) {
                $data['informations'][] = array(
                    'title' => $result['title'],
                    'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
                );
            }
        }

        $data['language'] = $this->load->controller('common/language');
        $data['currency'] = $this->load->controller('common/currency');
        $data['search'] = $this->load->controller('common/search');
        $data['cart'] = $this->load->controller('common/cart');

        // For page specific css
        if (isset($this->request->get['route'])) {
            if (isset($this->request->get['product_id'])) {
                $class = '-' . $this->request->get['product_id'];
            } elseif (isset($this->request->get['path'])) {
                $class = '-' . $this->request->get['path'];
            } elseif (isset($this->request->get['manufacturer_id'])) {
                $class = '-' . $this->request->get['manufacturer_id'];
            } else {
                $class = '';
            }

            $data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
        } else {
            $data['class'] = 'common-home';
        }

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/common/header.tpl', $data);
        } else {
            return $this->load->view('default/template/common/header.tpl', $data);
        }
    }


    private function GetStyle() {
        $style = array(
            '/catalog/view/theme/canary/css/font-awesome.min.css',
            '/catalog/view/theme/canary/vendor/slickslider/slick.css',
//            '/catalog/view/theme/canary/vendor/bootstrap/css/bootstrap.min.css',
            '/catalog/view/theme/canary/vendor/jquery-ui/jquery-ui.min.css',
            '/catalog/view/theme/canary/vendor/owl.carousel/owl.carousel-1480427970000.css',
            '/catalog/view/theme/canary/vendor/jquery.sliderPro/slider-pro.min.css',
            '/catalog/view/javascript/jquery/magnific/magnific-popup.css',
            '/catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css',
            '/catalog/view/theme/canary/vendor/select2/dist/css/select2.min.css',
            '/catalog/view/theme/canary/css/easydropdown.css',
//            '/catalog/view/theme/canary/css/style-1480021565518.css',
            //'/catalog/view/theme/canary/stylesheet/stylesheet-1457910874844.css',
//            '/catalog/view/theme/canary/css/w_style-1480414222869.css',
//            '/catalog/view/theme/canary/css/desktop-1480446257643.css'
        );
        $string = '';

        if (!empty($this->cache->get('stylelink'))) {
            return $this->cache->get('stylelink');
        } else {
            foreach ($style as $item) {
                $file_content = file_get_contents($this->request->server['DOCUMENT_ROOT'].$item);
                $string .= '<style type="text/css">'.$file_content.'</style>';
            }
            $this->cache->set('stylelink', $string);
            return $string;
        }
    }

}
