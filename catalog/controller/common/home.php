<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}


        // Menu for mobile
        $this->load->model('catalog/category');
        $data['categories'] = $this->model_catalog_category->getCategoriesNew(true);



		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');


        $data['home_search_for_diamond'] = $this->load->view($this->config->get('config_template') . '/template/common/home_search_for_diamond.tpl');
        $data['home_best_quality_and_service'] = $this->load->view($this->config->get('config_template') . '/template/common/home_best_quality_and_service.tpl');
        $data['home_banner'] = $this->load->view($this->config->get('config_template') . '/template/common/home_banner.tpl');
        $data['home_top_slider'] = $this->load->view($this->config->get('config_template') . '/template/common/home_top_slider.tpl', $data);
        $data['home_bloc_category'] = $this->load->view($this->config->get('config_template') . '/template/common/home_bloc_category.tpl');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}
	}
}