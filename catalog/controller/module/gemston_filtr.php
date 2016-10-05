<?php
class ControllerModuleGemstonFiltr extends Controller {
	public function index() {

        if (isset($this->request->get['path'])) {
            $parts = explode('_', (string)$this->request->get['path']);
        } else {
            $parts = array();
        }

        $category_id = end($parts);

        $data = array();

        $price = $this->model_catalog_category->getPriceProduct($category_id);
        $weight = $this->model_catalog_category->getWeightProduct($category_id);


        if (isset($this->request->get['stone_type'])) {

            $data['stone_type'] = explode(',', $this->request->get['stone_type']);


        } else {
            $data['stone_type'][] = 0;
        }

        //dd($data['stone_type']);

        if (isset($this->request->get['shape'])) {
            $data['shape'] = explode(',', $this->request->get['shape']);
        } else {
            $data['shape'][] = 0;
        }

        if (isset($this->request->get['primary_color'])) {

            $data['primary_color'] = explode(',', $this->request->get['primary_color']);
        } else {
            $data['primary_color'][] = 0;
        }


        if (isset($this->request->get['PriceFrom']) and isset($this->request->get['PriceTo'])) {
            $data['PriceFrom'] = $this->request->get['PriceFrom'];
            $data['PriceTo'] = $this->request->get['PriceTo'];
        } else {
            $data['PriceFrom'] = $price['min'];
            $data['PriceTo'] = $price['max'];
        }

        if (isset($this->request->get['WeightFrom']) and isset($this->request->get['WeighteTo'])) {
            $data['WeightFrom'] = $this->request->get['WeightFrom'];
            $data['WeighteTo'] = $this->request->get['WeighteTo'];
        } else {
            $data['WeightFrom'] = $weight['min'];
            $data['WeighteTo'] = $weight['max'];
        }


		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/gemston_filtr.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/gemston_filtr.tpl', $data);
		} else {
			return $this->load->view('No page');
		}
	}
}