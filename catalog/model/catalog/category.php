<?php
class ModelCatalogCategory extends Model {

    private $url3 = array();

	public function getCategory($category_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row;
	}

	public function getCategories($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "'  AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.name)");

		return $query->rows;
	}


    public function getCategoryProductId($product_id){
        //$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id)");
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c INNER JOIN " . DB_PREFIX . "product_to_category ptc ON (c.category_id = ptc.category_id) WHERE c.parent_id = 0 AND ptc.product_id = ".(int)$product_id);
        return $query->row;
	}

    /**
     * @param bool $flag
     * @return array|null
     * todo  getCategoriesNew()
     */
    public function getCategoriesNew($flag = false) {

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "'  AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.name)");

        $cats = array();
        foreach ($query->rows as $cat) {
            $cats[$cat['parent_id']][$cat['category_id']] = $cat;
        }

        $result = $this->build_tree($cats, 0, false, $flag);
        return $result;
    }


    /**
     * @param $cats
     * @param $parent_id
     * @param bool $only_parent
     * @param bool $flag
     * @return array|null
     * todo function recurs category
     */
    private function build_tree($cats,$parent_id,$only_parent = false, $flag = false) {
        if(is_array($cats) and isset($cats[$parent_id])){

            if($only_parent==false){
                $url2 = array();
                foreach($cats[$parent_id] as $cat){
                    if ($flag === false) {
                        $tree[$cat['category_id']] = $cat;
                        $tree[$cat['category_id']]['children'] = self::build_tree($cats, $cat['category_id']);
                    } else {

                        if ($cat['parent_id'] == 0) {
                            $url =  $this->url->link('product/category', 'path=' . $cat['category_id']);
                        } else {
                            $url = $this->url->link('product/category', 'path=' . $cat['parent_id'] .'_'.$cat['category_id']);
                        }

                        $tree[] = array(
                            'name' => $cat['name'],
                            'children' => self::build_tree($cats, $cat['category_id'],false, $flag) ? self::build_tree($cats, $cat['category_id'],false, $flag) : array(),
                            'column' => $cat['column'] ? $cat['column'] : 1,
                            'href' => $url
                        );
                    }
                }
            }
        } else {
            return null;
        }

        return $tree;
    }


	public function getCategoryFilters($category_id) {
		$implode = array();

		$query = $this->db->query("SELECT filter_id FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$implode[] = (int)$result['filter_id'];
		}

		$filter_group_data = array();

		if ($implode) {
            //добавлено AND fgd.dop_filter = ''
            $filter_group_query = $this->db->query("SELECT DISTINCT f.filter_group_id, fgd.name, fgd.type_control, fg.sort_order FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_group fg ON (f.filter_group_id = fg.filter_group_id) LEFT JOIN " . DB_PREFIX . "filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND fgd.dop_filter = '' AND fgd.language_id = '" . (int)$this->config->get('config_language_id') . "' GROUP BY f.filter_group_id ORDER BY fg.sort_order, LCASE(fgd.name)");

			foreach ($filter_group_query->rows as $filter_group) {
				$filter_data = array();

				$filter_query = $this->db->query("SELECT DISTINCT f.filter_id, fd.name FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_description fd ON (f.filter_id = fd.filter_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND f.filter_group_id = '" . (int)$filter_group['filter_group_id'] . "' AND fd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY f.sort_order, LCASE(fd.name)");

				foreach ($filter_query->rows as $filter) {
					$filter_data[] = array(
						'filter_id' => $filter['filter_id'],
						'name'      => $filter['name']
					);
				}

				if ($filter_data) {
					$filter_group_data[] = array(
						'filter_group_id' => $filter_group['filter_group_id'],
						'name'            => $filter_group['name'],
                        'type_control'    => $filter_group['type_control'],
						'filter'          => $filter_data
					);
				}
			}
		}


        //дополнительные фильтры
        $dop_filtr = $this->getFilterDop($category_id);
        //сливаем масивы дополнительный фильтров с стандартными
        $filter_group_data = array_merge($filter_group_data, $dop_filtr);

		return $filter_group_data;
	}

	public function getCategoryLayoutId($category_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");

		if ($query->num_rows) {
			return $query->row['layout_id'];
		} else {
			return 0;
		}
	}

	public function getTotalCategoriesByCategoryId($parent_id = 0) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row['total'];
	}













    /**
     * @param $category_id
     * @return array
     * todo получаем дополнительные фильтры
     */
    public function getFilterDop ($category_id) {

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_filter catf  INNER JOIN ". DB_PREFIX ."filter f ON (catf.filter_id = f.filter_id) INNER JOIN ". DB_PREFIX . "filter_group_description fgd ON (f.filter_group_id = fgd.filter_group_id) WHERE fgd.dop_filter <> '' AND catf.category_id = '" . (int)$category_id . "' AND fgd.language_id = '" .(int)$this->config->get('config_language_id'). "'");

        if (!empty($query)) {
            $result = array();
            //dd($query->rows);
            foreach ($query->rows as $item) {


                if ($item['dop_filter'] === 'price_filtr') {
                    $price = $this->getPriceProduct($category_id);
                    $result[] = array('filter_group_id' => $item['filter_group_id'],
                        'name' => $item['name'],
                        'dop_filter' => $price);
                }

                if ($item['dop_filter'] === 'weight_filtr') {
                    $weight = $this->getWeightProduct($category_id);
                    $result[] = array('filter_group_id' => $item['filter_group_id'],
                        'name' => $item['name'],
                        'dop_filter' => $weight);
                }

            }

        }
        //dd($result);
        return $result;
    }


    /**
     * @return array
     * todo получаем наибольшую и наименьшую цену
     */
    public function getPriceProduct ($category_id) {
        $max = $this->db->query("SELECT MAX(price) maxprice FROM " . DB_PREFIX . "product pr INNER JOIN ". DB_PREFIX ."product_to_category ptc ON(pr.product_id = ptc.product_id) WHERE ptc.category_id = ".$category_id);
        $min = $this->db->query("SELECT MIN(price) minprice FROM " . DB_PREFIX . "product pr INNER JOIN ". DB_PREFIX ."product_to_category ptc ON(pr.product_id = ptc.product_id) WHERE ptc.category_id = ".$category_id);

        if ($min->row['minprice'] == 0) {
            $min->row['minprice'] = 100;
        }

        return array('min' => $min->row['minprice'], 'max' => $max->row['maxprice']);
    }

    public function getWeightProduct ($category_id) {
        $max = $this->db->query("SELECT MAX(weight) maxweight FROM " . DB_PREFIX . "product pr INNER JOIN ". DB_PREFIX ."product_to_category ptc ON(pr.product_id = ptc.product_id) WHERE ptc.category_id = ".$category_id);
        $min = $this->db->query("SELECT MIN(weight) minweight FROM " . DB_PREFIX . "product pr INNER JOIN ". DB_PREFIX ."product_to_category ptc ON(pr.product_id = ptc.product_id) WHERE ptc.category_id = ".$category_id);
        return array('min' => $min->row['minweight'], 'max' => $max->row['maxweight']);
    }


}