<?php
class ControllerModuleWsubcat extends Controller {
	public function index() {

		$this->load->language('module/wsubcat');

        $this->load->model('catalog/category');


        $data = array();
        $parts = explode('_', (string)$this->request->get['path']);

        //передаем id подкатегории для навигации
        if (isset($parts[1])) {
            $data['child_id'] = $parts[1];
        } else {
            $data['child_id'] = 0;
        }

        $category_id = (int)array_shift($parts);



        $results = $this->model_catalog_category->getCategories($category_id);

        
        $data['category_id'] = $category_id;

        foreach ($results as $result) {

            $data['wsubcategory'][] = array(
                'name' => $result['name'],
                'image' => $result['image'],
                'cat_id' => $result['category_id'],
                'href' => $this->url->link('product/category', 'path=' . $result['parent_id'] . '_' . $result['category_id'])
            );
        }


		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/wsubcat.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/wsubcat.tpl', $data);
		} else {
			return $this->load->view('No page');
		}
	}
}