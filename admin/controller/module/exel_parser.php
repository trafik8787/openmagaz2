<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 07.07.2016
 * Time: 17:07
 */

class ControllerModuleExelParser extends Controller {


    private $list_metal;
    private $list_filtr;
    private $list_options;
    private $list_atribute;
    private $list_manufactured;

    private $product_id_insert;
    private $product_id_insert_arr;


    private $model;
    private $sku;
    private $name;
    private $description;
    private $title_seo;
    private $description_seo;
    private $keywords_seo;
    private $metal;
    private $manufactured;
    private $quantity; //количество на складе
    private $subtract_stock; //вычитать со склада
    private $shipping; //доставка
    private $url_seo;
    private $category_arr;
    private $category;
    private $filter;

    private $width;

    private $image_general;
    private $image_galery;

    private $array_product;

    private $price;


    public function __construct($registry){
        parent::__construct($registry);

        $this->list_metal = array(
            '14K White Gold' => 'white_gold_14',
            '14K Yellow Gold' => 'yellow_gold_14',
            '14K Rose Gold' => 'rose_gold_14',
            '18K White Gold' => 'white_gold_18',
            '18K Yellow Gold' => 'yellow_gold_18',
            '18K Rose Gold' => 'rose_gold_18',
            'Platinum' => 'platinum',
            'Palladium' => 'palladium'
        );

        //ENGAGEMENT RINGS
        $this->category_arr = array(
            'Three-stone' => 63,
            'Three Stone' => 63,
            'Vintage' => 66,
            'Bezel set' => 64,
            'Halo' => 65,
            'Bypass' => 62,
            'Pave' => 60,
            'Solitaire' => 59,
            'Modern'    => 89,
            'Channel'   => 61,
            'Channel Set' => 61
        );

        //WOMAN WEDDING RINGS
//        $this->category_arr = array(
//            'Classic' => 77,
//            'Stackable' => 78,
//            'Eternity' => 81,
//            'Diamond' => 79
//        );

        //FINE JEWERLY
//        $this->category_arr = array(
//            'Diamond Bracelets' => 85,
//            'Diamond Earrings' => 84,
//            'Diamond Pendant' => 86,
//            'Diamond Rings' => 88,
//            'Diamond Studs' => 83,
//            'Diamond Fashion Necklace' => 92,
//            'Gemstone Bracelets' => 93,
//            'Gemstone Earrings' => 87,
//            'Gemstone Pendants' => 91,
//            'Gemstone Rings' => 90
//        );


        $this->list_filtr = array(
            'Price' => 4,
            '18K White Gold' => 5,
            '14K White Gold' => 6,
            'All metals' => 7,
            '14K Yellow Gold' => 11,
            '18K Yellow Gold' => 12,
            'Platinum' => 13,
            '14K Rose Gold' => 14,
            '18K Rose Gold' => 15,
            'Palladium' => 16
        );


        $this->list_manufactured = array(
            'Overnight' => 11,
            'Stuller' => 12
        );

        $this->list_options = array(46,47,48,55,56,57,58,59,60,68,69);


    }


    public function index (){
        //подключаем языковой файл
        $this->load->language('module/exel_parser');
        //Выводим имя модуля в списке модулей
        $this->document->setTitle($this->language->get('heading_title'));
        //подключаем файл модели
        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate() && !$this->request->post['parsing_success']) {

            // dd($this->request->post, true);
            $this->model_setting_setting->editSetting('exel_parser', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }

        if (!empty($this->request->post['parsing_success'])) {
            $data['progres'] = 'Syccess';
            $this->fixParse();
        }


        //тексты кнопок
        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');

        $data['entry_status'] = $this->language->get('entry_status');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        $data['text_none'] = $this->language->get('text_none');


        //вывод ошибок
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }


        $data['action'] = $this->url->link('module/exel_parser', 'token=' . $this->session->data['token'], 'SSL');
        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');



        //крошки
        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
        );


        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
        );


        if (isset($this->request->post['exel_parser_status'])) {
            $data['exel_parser_status'] = $this->request->post['exel_parser_status'];
        } else {
            $data['exel_parser_status'] = $this->config->get('exel_parser_status');
        }



        //виды левая колонка футер и хедер в админке
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');



        $this->response->setOutput($this->load->view('module/exel_parser.tpl', $data));

    }


    protected function validate() {
        if (!$this->user->hasPermission('modify', 'module/exel_parser')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        return !$this->error;
    }


    private function  fixParse (){

        //$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product WHERE product_id = '" . (int)$store_id ."'");
        //dd($query->rows);
        //$filePath = '/home/canary/www/website.csv';
        //$filePath = '/home/canary/www/website_weding_woman.csv';
        //$filePath = '/home/canary/www/fashion_jewelry.csv';
        //$filePath = '/home/canary/www/diamonds_rings_jewelry.csv';
        //$filePath = '/home/canary/www/new_engagement_rings.csv';
        //$filePath = '/home/canary/www/matching bands.csv';
        //$filePath = '/home/canary/www/solitaire engagement rings.csv';
        //$filePath = '/home/canary/www/Pave Engagement Rings-NO HALO.csv';
        //$filePath = '/home/canary/www/diamond hoops.csv';
        //$filePath = '/home/canary/www/diamond hoops 2.csv';
        $filePath = '/home/canary/www/channel set engagement rings-STULLER.csv';
        //$filePath = '/home/brilliantcanary/htdocs/diamond hoops 2.csv';
        //$filePath = '/home/brilliantcanary/htdocs/Copy of diamond studs.csv';
        //$filePath = '/home/brilliantcanary/htdocs/diamond hoops.csv';
        //$filePath = '/home/brilliantcanary/htdocs/Pave Engagement Rings-NO HALO.csv';
        //$filePath = '/home/brilliantcanary/htdocs/solitaire engagement rings.csv';
        //$filePath = '/home/brilliantcanary/htdocs/matching bands.csv';
        //$filePath = '/home/brilliantcanary/htdocs/new_engagement_rings.csv';
        //$filePath = '/home/brilliantcanary/htdocs/diamonds_rings_jewelry.csv';
        //$filePath = '/home/brilliantcanary/htdocs/fashion_jewelry.csv';
        //$filePath = '/home/brilliantcanary/htdocs/website_weding_woman.csv';
        //$filePath = '/home/brilliantcanary/htdocs/website.csv';
        $delimiter = ';';
        $file = new SplFileObject($filePath, 'r');
        $file->setFlags(SplFileObject::READ_CSV);
        $file->setCsvControl($delimiter);
        //dd($file->current());
        $file->seek(2);

        while (!$file->eof()) {



            $metal = null;
            $this->filter = array();
            $name_file_general_img = null;
            $this->category = array();
            $curent = $file->current();

            if (!empty($curent[0])) {
                //metal
                $metal = trim($curent[9]);
                $sku = trim($curent[0]);
                //filters
                $this->filter[] = $this->list_filtr['Price'];
                $this->filter[] = $this->list_filtr['All metals'];

                //METAL
                if ($metal == '14K White Gold' OR $metal == '14k White Gold') {
                    $this->metal = $this->list_metal['14K White Gold'];
                    $this->sku = $curent[1] . '-W14';
                    $this->filter[] = $this->list_filtr['14K White Gold'];

                    $name_file_general_img = $sku.'.jpg';


                } elseif ($metal == '14K Yellow Gold' OR $metal == '14k Yellow Gold') {
                    $this->metal = $this->list_metal['14K Yellow Gold'];
                    $this->sku = $curent[1] . '-Y14';
                    $this->filter[] = $this->list_filtr['14K Yellow Gold'];

                    $name_file_general_img = $sku.'.alt.jpg';

                } elseif ($metal == '14K Rose Gold' OR $metal == '14k Rose Gold') {
                    $this->metal = $this->list_metal['14K Rose Gold'];
                    $this->sku = $curent[1] . '-R14';
                    $this->filter[] = $this->list_filtr['14K Rose Gold'];

                    $name_file_general_img = $sku.'.alt1.jpg';

                } elseif ($metal == '18K White Gold' OR $metal == '18k White Gold') {
                    $this->metal = $this->list_metal['18K White Gold'];
                    $this->sku = $curent[1] . '-W18';
                    $this->filter[] = $this->list_filtr['18K White Gold'];

                    $name_file_general_img = $sku.'.jpg';

                } elseif ($metal == '18K Yellow Gold' OR $metal == '18k Yellow Gold') {
                    $this->metal = $this->list_metal['18K Yellow Gold'];
                    $this->sku = $curent[1] . '-Y18';
                    $this->filter[] = $this->list_filtr['18K Yellow Gold'];

                    $name_file_general_img = $sku.'.alt.jpg';

                } elseif ($metal == '18K Rose Gold' OR $metal == '18k Rose Gold') {
                    $this->metal = $this->list_metal['18K Rose Gold'];
                    $this->sku = $curent[1] . '-R18';
                    $this->filter[] = $this->list_filtr['18K Rose Gold'];

                    $name_file_general_img = $sku.'.alt1.jpg';

                } elseif ($metal == 'Platinum') {
                    $this->metal = $this->list_metal['Platinum'];
                    $this->sku = $curent[1] . '-PL';
                    $this->filter[] = $this->list_filtr['Platinum'];

                    $name_file_general_img = $sku.'.jpg';

                } elseif ($metal == 'Palladium') {
                    $this->metal = $this->list_metal['Palladium'];
                    $this->sku = $curent[1] . '-PA';
                    $this->filter[] = $this->list_filtr['Palladium'];

                    $name_file_general_img = $sku.'.jpg';

                }

                //galery image
                $this->GaleryUrlImg($metal, $sku);


                //ENGAGEMENT RINGS
                $this->category[] = 20;

                //WOMAN WEDDING RINGS
                //$this->category[] = 69;

                //FINE JEWERLY
                //$this->category[] = 82;

                if (!empty($curent[11])) {
                    $this->category[] = $this->category_arr[trim($curent[11])];
                }
                if (!empty($curent[12])) {
                    $this->category[] = $this->category_arr[trim($curent[12])];
                }
                if (!empty($curent[13])) {
                    $this->category[] = $this->category_arr[trim($curent[13])];
                }


                //image general
                $this->image_general = 'catalog/galery_rings/'.$name_file_general_img;
                //$this->image_general = '';


                $this->model = $this->sku;

                $this->name = $curent[2];
                $this->description = $curent[3];
                $this->title_seo = $curent[4];
                $this->description_seo = $curent[5];
                $this->keywords_seo = $curent[6];
                $this->manufactured = $this->list_manufactured[trim($curent[10])];

                $this->width = substr($curent[8],0,-2);

                //atribute
                $this->list_atribute[16] = $curent[14];
                $this->list_atribute[15] = $curent[15];
                $this->list_atribute[17] = $curent[16];
                $this->list_atribute[18] = $curent[17];



                $this->price = (int)substr(str_replace(" ","",$curent[18]), 1);
                //$this->price = $curent[18];

                $this->product_id_insert = $this->addProduct();
                $this->addDescription();
                $this->addCategory();
                $this->addFilters();
                $this->addUrl();
                $this->addGalery();
                $this->addStore();

                $this->addOption();
                $this->addAtribute();

                $this->product_id_insert_arr[] = $this->product_id_insert;
                dd($this->product_id_insert);
            }

            $file->next();
        }

        $this->addProductMetal();

    }


    private function addProduct() {

        $this->db->query("INSERT INTO " . DB_PREFIX . "product SET 
            metal = '".$this->db->escape($this->metal)."', 
            model = '" . $this->db->escape($this->model) . "', 
            sku = '" . $this->db->escape($this->sku) . "', 
            upc = '" . $this->db->escape('') . "', 
            ean = '" . $this->db->escape('') . "', 
            jan = '" . $this->db->escape('') . "', 
            isbn = '" . $this->db->escape('') . "', 
            mpn = '" . $this->db->escape('') . "', 
            location = '" . $this->db->escape('') . "', 
            quantity = '" . 1000 . "',
            minimum = '" . 1 . "', 
            subtract = '" . 0 . "', 
            stock_status_id = '" . 5 . "', 
            image = '" . $this->image_general . "',
            date_available = '" . date('Y-m-d') . "', 
            manufacturer_id = '" . $this->manufactured . "', 
            shipping = '" . 1 . "', 
            price = '" . $this->price . "', 
            points = '" . 0 . "', 
            weight = '" . 0.00000000 . "', 
            weight_class_id = '" . 2 . "', 
            length = '" . 0.00000000 . "', 
            width = '" . $this->width . "', 
            height = '" . 0.00000000 . "', 
            length_class_id = '" . 2 . "', 
            status = '" . 1 . "', 
            tax_class_id = '" . 0 . "', 
            sort_order = '" . 0 . "', 
            date_added = NOW()");

        return $this->db->getLastId();
    }


    private function addDescription() {

        $this->db->query("INSERT INTO " . DB_PREFIX . "product_description SET 
        product_id = '" . (int)$this->product_id_insert . "', 
        language_id = '" . 1 . "', 
        name = '" . $this->name . "', 
        description = '" . $this->description . "', 
        tag = '" . $this->db->escape('') . "', 
        meta_title = '" . $this->db->escape($this->title_seo) . "', 
        meta_description = '" . $this->db->escape($this->description_seo) . "', 
        meta_keyword = '" . $this->db->escape($this->keywords_seo) . "'");

    }

    private function addCategory (){

        foreach ($this->category as $category_id) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET 
            product_id = '" . (int)$this->product_id_insert . "', 
            category_id = '" . (int)$category_id . "'");
        }

    }


    private function addUrl() {

        $keyword = str_replace(' ', '-', strtolower(trim($this->name))).'-'.$this->sku.'-'.$this->product_id_insert;

        $this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET 
            query = 'product_id=" . (int)$this->product_id_insert . "', 
            keyword = '" . $this->db->escape($keyword) . "'");
    }

    private function addFilters (){
        foreach ($this->filter as $filter_id) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "product_filter SET 
            product_id = '" . (int)$this->product_id_insert . "', 
            filter_id = '" . (int)$filter_id . "'");
        }
    }


    private function addGalery (){
        foreach ($this->image_galery as $product_image) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "product_image SET 
            product_id = '" . (int)$this->product_id_insert . "', 
            image = '" . $this->db->escape($product_image) . "', 
            sort_order = '" . 0 . "'");
        }
    }

    private function addStore () {

        $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_store SET 
        product_id = '" . (int)$this->product_id_insert . "', 
        store_id = '" . 0 . "'");

    }


    private function addOption () {

        $this->db->query("INSERT INTO " . DB_PREFIX . "product_option SET
            product_id = '" . (int)$this->product_id_insert . "',
            option_id = '" . 11 . "',
            required = '" . 1 . "'");
        $product_option_id = $this->db->getLastId();

        foreach ($this->list_options as $product_option_value) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "product_option_value SET
            product_option_id = '" . (int)$product_option_id . "',
            product_id = '" . (int)$this->product_id_insert . "',
            option_id = '" . 11 . "',
            option_value_id = '" . (int)$product_option_value . "',
            quantity = '" . 0 . "',
            subtract = '" . 0 . "',
            price = '" . 0.0000 . "',
            price_prefix = '" . $this->db->escape('+') . "',
            points = '" . 0 . "',
            points_prefix = '" . $this->db->escape('+') . "',
            weight = '" . 0.00000000 . "',
            weight_prefix = '" . $this->db->escape('+') . "'");
        }

    }


    private function addAtribute () {

        foreach ($this->list_atribute as $key => $product_attribute) {

            $this->db->query("INSERT INTO " . DB_PREFIX . "product_attribute SET 
            product_id = '" . (int)$this->product_id_insert . "', 
            attribute_id = '" . (int)$key . "', 
            language_id = '" . 1 . "', 
            text = '" .  $this->db->escape($product_attribute) . "'");

        }
    }


    private function addProductMetal () {

        $in = implode(',',$this->product_id_insert_arr);

        $product = $this->db->query("SELECT * FROM " . DB_PREFIX . "product WHERE product_id IN (".$in.")");

        //dd($product);
        if (!empty($product->rows)) {
            foreach ($product->rows as $product_rows) {
                $sql = null;
                $curent_product = $this->parseSku($product_rows['sku']);

                foreach ($product->rows as $rows) {

                    if (($product_rows['sku'] != $rows['sku']) and ($curent_product == $this->parseSku($rows['sku']))) {
                        $sql .= '(' . $product_rows['product_id'] . ' , ' . $rows['product_id'] . '),';
                    }

                }
                $sql = substr($sql, 0, -1);
                if (!empty($sql)) {
                    $this->db->query("INSERT INTO " . DB_PREFIX . "product_metal (product_id, metal_product_id) VALUES " . $sql);
                }

            }
        }
    }


    private function parseSku ($sku) {
        $pieces = explode("-", trim($sku));
        return $pieces[0];
    }


    private function GaleryUrlImg($metal, $sku) {

        $this->image_galery = array();

        $dir_img = 'catalog/galery_rings/';

        if ($metal == '14K White Gold' OR $metal == '14k White Gold') {

            $this->image_galery[] = $dir_img.$sku.'.jpg';
            $this->image_galery[] = $dir_img.$sku.'.set.jpg';
            $this->image_galery[] = $dir_img.$sku.'.side.jpg';


        } elseif ($metal == '14K Yellow Gold' OR $metal == '14k Yellow Gold') {

            $this->image_galery[] = $dir_img.$sku.'.alt.jpg';
            $this->image_galery[] = $dir_img.$sku.'.set.alt.jpg';
            $this->image_galery[] = $dir_img.$sku.'.side.alt.jpg';

        } elseif ($metal == '14K Rose Gold' OR $metal == '14k Rose Gold') {

            $this->image_galery[] = $dir_img.$sku.'.alt1.jpg';
            $this->image_galery[] = $dir_img.$sku.'.set.alt1.jpg';
            $this->image_galery[] = $dir_img.$sku.'.side.alt1.jpg';

        } elseif ($metal == '18K White Gold' OR $metal == '18k White Gold') {

            $this->image_galery[] = $dir_img.$sku.'.jpg';
            $this->image_galery[] = $dir_img.$sku.'.set.jpg';
            $this->image_galery[] = $dir_img.$sku.'.side.jpg';

        } elseif ($metal == '18K Yellow Gold' OR $metal == '18k Yellow Gold') {

            $this->image_galery[] = $dir_img.$sku.'.alt.jpg';
            $this->image_galery[] = $dir_img.$sku.'.set.alt.jpg';
            $this->image_galery[] = $dir_img.$sku.'.side.alt.jpg';

        } elseif ($metal == '18K Rose Gold' OR $metal == '18k Rose Gold') {

            $this->image_galery[] = $dir_img.$sku.'.alt1.jpg';
            $this->image_galery[] = $dir_img.$sku.'.set.alt1.jpg';
            $this->image_galery[] = $dir_img.$sku.'.side.alt1.jpg';

        } elseif ($metal == 'Platinum') {

            $this->image_galery[] = $dir_img.$sku.'.jpg';
            $this->image_galery[] = $dir_img.$sku.'.set.jpg';
            $this->image_galery[] = $dir_img.$sku.'.side.jpg';

        } elseif ($metal == 'Palladium') {

            $this->image_galery[] = $dir_img.$sku.'.jpg';
            $this->image_galery[] = $dir_img.$sku.'.set.jpg';
            $this->image_galery[] = $dir_img.$sku.'.side.jpg';

        }

    }


}