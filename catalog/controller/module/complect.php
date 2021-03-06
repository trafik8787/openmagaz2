<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 25.03.2016
 * Time: 17:25
 */
class ControllerModuleComplect extends Controller {


    public function index(){

        $data = array();

        //dd($this->request->get);

        $data = $this->getProductsCoolies();

        if (isset($this->request->get['path'])) {
            $data['path'] = $this->request->get['path'];
        }


        $render['render'] = $this->load->view($this->config->get('config_template') . '/template/module/complect_bloc.tpl', $data);

        return $this->load->view($this->config->get('config_template') . '/template/module/complect.tpl', $render);

    }






    //добавить товар в комплект
    public function add_product_complect () {

        $this->load->model('catalog/product');
        $data = array();
        $option = array();
        $CanaryDiamontCom = array();
        $CanaryProductCom = array();


       // dd($this->request->post, true);

        $data = $this->getProductsCoolies();

        if (!empty($this->request->post['product_id'])) {

            $product_info = $this->model_catalog_product->getProduct($this->request->post['product_id']);
            $data['product_info'] = $product_info;

            if (!empty($this->request->post['option'])) {
                $option = array('option' => $this->request->post['option']);
                $option = http_build_query($option);
            }


            $CanaryProductCom = array('id_product' => $product_info['product_id'],
                'name' => $product_info['name'],
                'img' => '/image/'.$product_info['image'],
                'option' => $option,
                'href' => $this->url->link('product/product',  'product_id=' . $product_info['product_id']));


            Cookie::set('CanaryProductCom', json_encode($CanaryProductCom));

            $data['CanaryProductCom'] = $CanaryProductCom;
        }

        if (!empty($this->request->post['complect_id_diamond'])) {

            $CanaryDiamontCom = array('id_product' => $this->request->post['complect_id_diamond'],
                'img' =>  imageDiamont($this->request->post['shape']),
                'href' => HostSite('/diamond_page?diamond_id='.$this->request->post['complect_id_diamond']));

            Cookie::set('CanaryDiamontCom', json_encode($CanaryDiamontCom));

            $data['CanaryDiamontCom'] = $CanaryDiamontCom;
        }

        $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/module/complect_bloc.tpl', $data));

    }


    public function getProductsCoolies (){

        $data = array();

        if (!empty(Cookie::get('CanaryProductCom'))) {

            $CanaryProductCom = json_decode(Cookie::get('CanaryProductCom'), true);

            if (!empty($CanaryProductCom)) {
                $data['CanaryProductCom'] = $CanaryProductCom;
            }
        }

        if (!empty(Cookie::get('CanaryDiamontCom'))) {

            $CanaryDiamontCom = json_decode(Cookie::get('CanaryDiamontCom'), true);
            if (!empty($CanaryDiamontCom)) {
                $data['CanaryDiamontCom'] = $CanaryDiamontCom;
            }

        }

        return $data;
    }

    /**
     *  remove
     */
    public function del_complect (){

        $data = array();

        if (!empty($this->request->post['complect_id_product'])) {
            Cookie::delete('CanaryProductCom');
        }

        if (!empty($this->request->post['complect_id_diamond'])) {
            Cookie::delete('CanaryDiamontCom');
        }


        $data = $this->getProductsCoolies();

        $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/module/complect_bloc.tpl', $data));
    }


    /**
     * страница комплекта кольца и брилианта
     */
    public function complete_diamond(){

        $data = array();
        $data_cookie = array();

        $data_cookie = $this->getProductsCoolies();
        //dd($data_cookie);
        if (empty($data_cookie)) {
            $this->response->redirect('/');
        }

        $rapnet_controller = $this->load->controller('module/rapnet/getDaimondsId', array('diamond_id' => $data_cookie['CanaryDiamontCom']['id_product']));

        $rapnet_controller = json_decode($rapnet_controller);
        $data['CanaryDiamontCom'] = $rapnet_controller->response->body->diamond;

        $this->load->model('catalog/product');

        //$this->load->model('tool/image');
        //$results_img = $this->model_catalog_product->getProductImages($data['CanaryProductCom']['id_product']);

        $data['CanaryProductCom'] = $this->model_catalog_product->getProduct($data_cookie['CanaryProductCom']['id_product']);
        $data['CanaryProductCom']['option'] = $data_cookie['CanaryProductCom']['option'];

        //$data['CanaryProductCom']['image'] = $this->model_tool_image->resize($results_img[0]['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'));

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => '/'
        );

        $data['breadcrumbs'][] = array(
            'text' => 'Complete Ring',
            'href' => '/complete_diamond'
        );

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');

        if (!in_ajax()) {
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');
        }


        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/complect_complet.tpl')) {
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/module/complect_complet.tpl', $data));
        } else {
            $this->response->setOutput(dd('NO PAGE'));
        }

    }



}
