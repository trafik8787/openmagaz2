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
    private $category_tmp;
    private $filter;

    private $width;
    private $status;
    private $tag;
    private $special_price;
    private $matching_id;
    private $error_text_validation;
    private $option_size; //1 или 0
    private $product_id_insert_added;

    private $image_general;
    private $image_galery;

    private $array_product;

    private $price;
    private $file_path;
    private $name_file;


    private $fields_tmp;
    private $category_list_arr;

    public function __construct($registry){
        parent::__construct($registry);

        $this->category_list_arr = array(
            'ENGAGEMENT_RINGS' => 20,
            'ENGAGEMENT RINGS' => 20,
            'Three-stone' => 63,
            'Three stone' => 63,
            'THREE STONE' => 63,
            'THREE-STONE' => 63,
            'Vintage' => 66,
            'VINTAGE' => 66,
            'Bezel set' => 64,
            'Bezel Set' => 64,
            'BEZEL SET' => 64,
            'Halo' => 65,
            'HALO' => 65,
            'Bypass' => 62,
            'BYPASS' => 62,
            'Pave' => 60,
            'PAVE' => 60,
            'Solitaire' => 59,
            'SOLITAIRE' => 59,
            'Modern'    => 89,
            'MODERN'    => 89,
            'Channel Set' => 61,
            'CHANNEL SET' => 61,
            'JEWELRY_&_GIFTS' => 82,
            'JEWELRY & GIFTS' => 82,
            'Diamond Bracelets' => 85,
            'DIAMOND BRACELETS' => 85,
            'Diamond Earrings' => 84,
            'DIAMOND EARRINGS' => 84,
            'Diamond Pendant' => 86,
            'DIAMOND PENDANT' => 86,
            'Diamond Rings' => 88,
            'DIAMOND RINGS' => 88,
            'Diamond Studs' => 83,
            'DIAMOND STUDS' => 83,
            'Diamond Necklaces' => 97,
            'DIAMOND NECKLACES' => 97,
            'Fashion Necklace' => 92,
            'FASHION NECKLACE' => 92,
            'Gemstone Bracelets' => 93,
            'GEMSTONE BRACELETS' => 93,
            'Gemstone Earrings' => 87,
            'GEMSTONE EARRINGS' => 87,
            'Gemstone Pendants' => 91,
            'GEMSTONE PENDANTS' => 91,
            'Gemstone Rings' => 90,
            'GEMSTONE RINGS' => 90,
            'WEDDING RINGS' => 69,
            'ALL WOMAN' => 96,
            'Classic Woman' => 77,
            'CLASSIC WOMAN' => 77,
            'Stackable Woman' => 78,
            'STACKABLE WOMAN' => 78,
            'Eternity Woman' => 81,
            'ETERNITY WOMAN' => 81,
            'Diamond Woman' => 79,
            'DIAMOND WOMAN' => 79,
            'ALL MAN' => 95,
            'Modern Man' => 75,
            'MODERN MAN' => 75,
            'Diamond Man' => 74,
            'DIAMOND MAN' => 74,
            'Classic Man' => 72,
            'CLASSIC MAN' => 72,
            'Carved Man' => 73,
            'CARVED MAN' => 73

        );

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
        //dd($_SERVER['DOCUMENT_ROOT']);
        //подключаем языковой файл
        $this->load->language('module/exel_parser');
        //Выводим имя модуля в списке модулей
        $this->document->setTitle($this->language->get('heading_title'));
        //подключаем файл модели
        $this->load->model('setting/setting');


        if (!empty($this->request->post['generate_csv'])) {
            $this->generate_csv();

        }

//        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate() && !$this->request->post['parsing_success']) {
//
//            // dd($this->request->post, true);
//            $this->model_setting_setting->editSetting('exel_parser', $this->request->post);
//
//            $this->session->data['success'] = $this->language->get('text_success');
//
//            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
//        }


        if (!empty($this->request->post['parsing_success'])) {
            $info = new SplFileInfo($_FILES['file_data_parsing']['name']);

            $data['progres'] = 'Syccess';
            $this->name_file = basename($_FILES['file_data_parsing']['tmp_name']).'.'.$info->getExtension();
            //$this->file_path = $_FILES['file_data_parsing']['tmp_name'].'.'.$info->getExtension();
            $uploadfile = $_SERVER['DOCUMENT_ROOT'].'/'.$this->name_file;
            if (move_uploaded_file($_FILES['file_data_parsing']['tmp_name'], $uploadfile)) {
                $this->file_path = $_SERVER['DOCUMENT_ROOT'].'/'.$this->name_file;
            }


            $this->fixParse();


                $data['eror_text'] = !empty($this->error_text_validation) ? implode("<br>", $this->error_text_validation) : null;
                $data['added_text'] = !empty($this->product_id_insert_added) ? implode("<br>", $this->product_id_insert_added) : null;

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

        //$filePath = '/home/canary/www/website.csv';

        //$filePath = '/home/brilliantcanary/htdocs/Stuller Classic Bands Mens.csv';

        //$filePath = $_SERVER['DOCUMENT_ROOT'].'/'.trim($this->file_path);



        $filePath = $this->file_path;

        $delimiter = ',';
        $file = new SplFileObject($filePath, 'r');
        $file->setFlags(SplFileObject::READ_CSV);
        $file->setCsvControl($delimiter);
        //dd($file->current());
        $file->seek(1);

//        dd($file->current(), true);
        $i = 1;
        while (!$file->eof()) {

            $i++;

            $err = null;
            $metal = null;
            $this->filter = array();
            $name_file_general_img = null;
            //$this->category = $this->category_tmp;
            $this->category = array();
            $curent = $file->current();

            //update если нету product_id то добавление нового товара
            if (!empty($curent[0])) {

                $err = $this->validationUpdate($curent, $i);
                //если ошибок нет
                if (!$err) {

                    //dd($curent);
                    //metal
                    $metal = trim($curent[9]);
                    $this->sku = trim($curent[1]);
                    $this->special_price = $curent[12];
                    //filters
                    $this->filter[] = $this->list_filtr['Price'];
                    $this->filter[] = $this->list_filtr['All metals'];

                    //METAL
                    if ($metal == '14K White Gold' OR $metal == '14k White Gold') {
                        $this->metal = $this->list_metal['14K White Gold'];
                        $this->filter[] = $this->list_filtr['14K White Gold'];

                    } elseif ($metal == '14K Yellow Gold' OR $metal == '14k Yellow Gold') {
                        $this->metal = $this->list_metal['14K Yellow Gold'];
                        $this->filter[] = $this->list_filtr['14K Yellow Gold'];

                    } elseif ($metal == '14K Rose Gold' OR $metal == '14k Rose Gold') {
                        $this->metal = $this->list_metal['14K Rose Gold'];
                        $this->filter[] = $this->list_filtr['14K Rose Gold'];

                    } elseif ($metal == '18K White Gold' OR $metal == '18k White Gold') {
                        $this->metal = $this->list_metal['18K White Gold'];
                        $this->filter[] = $this->list_filtr['18K White Gold'];

                    } elseif ($metal == '18K Yellow Gold' OR $metal == '18k Yellow Gold') {
                        $this->metal = $this->list_metal['18K Yellow Gold'];
                        $this->filter[] = $this->list_filtr['18K Yellow Gold'];

                    } elseif ($metal == '18K Rose Gold' OR $metal == '18k Rose Gold') {
                        $this->metal = $this->list_metal['18K Rose Gold'];
                        $this->filter[] = $this->list_filtr['18K Rose Gold'];

                    } elseif ($metal == 'Platinum' OR $metal == 'platinum') {
                        $this->metal = $this->list_metal['Platinum'];
                        $this->filter[] = $this->list_filtr['Platinum'];

                    } elseif ($metal == 'Palladium' or $metal == 'palladium') {
                        $this->metal = $this->list_metal['Palladium'];
                        $this->filter[] = $this->list_filtr['Palladium'];

                    }

                    //galery image
                    //$this->GaleryUrlImg($metal, $this->sku);


                    if (!empty($curent[16])) {
                        $this->category[] = $this->category_list_arr[trim($curent[16])];
                    }
                    if (!empty($curent[17])) {
                        $this->category[] = $this->category_list_arr[trim($curent[17])];
                    }
                    if (!empty($curent[18])) {
                        $this->category[] = $this->category_list_arr[trim($curent[18])];
                    }
                    if (!empty($curent[19])) {
                        $this->category[] = $this->category_list_arr[trim($curent[19])];
                    }

                    //image general
                    //$this->image_general = 'catalog/galery_rings2/'.$name_file_general_img;
                    //$this->image_general = '';


                    $this->model = $this->sku;

                    $this->name = $curent[2];
                    $this->description = $curent[3];
                    $this->title_seo = $curent[4];
                    $this->description_seo = $curent[5];
                    $this->keywords_seo = $curent[6];
                    $this->tag = $curent[7];
                    $this->width = $curent[8];
                    $this->matching_id = $curent[13];
                    $this->option_size = $curent[15];
                    $this->status = $curent[14];

                    if (!empty($curent[10])) {
                        $this->manufactured = $this->list_manufactured[trim($curent[10])];
                    } else {
                        $this->manufactured = '';
                    }


                    //$this->width = substr($curent[8],0,-2);

                    //atribute
                    $this->list_atribute[15] = $curent[20];//19
                    $this->list_atribute[16] = $curent[21];//20
                    $this->list_atribute[17] = $curent[22];//21
                    $this->list_atribute[18] = $curent[23];//22


                    $tmp_price = strripos($curent[11], '$');

                    if ($tmp_price === false) {
                        $this->price = $curent[11];
                    } else {
                        $this->price = (int)substr(str_replace(" ", "", $curent[11]), 1);
                    }

                    $this->UpdateProduct($curent[0]);
                    $this->UpdateDescription($curent[0]);
                    $this->UpdateCategory($curent[0]);
                    $this->UpdateFilters($curent[0]);
                    $this->UpdateAtribute($curent[0]);
                    $this->UpdateDiscount($curent[0]);
                    $this->UpdateOptions($curent[0]);

                    //если при валидации возникли ошибки
                } else {

                    $this->error_text_validation[] = $err;

                }





            } else { //insert













               // если нет названия товара то загрузка не осуществляется
                if (!empty($curent[1])) {
                    $err = $this->validationUpdate($curent, $i);

                    if (!$err) {

                        //metal
                        $metal = trim($curent[9]);
                        $sku = trim($curent[1]);
                        //filters
                        $this->filter[] = $this->list_filtr['Price'];
                        $this->filter[] = $this->list_filtr['All metals'];

                        //METAL
                        if ($metal == '14K White Gold' OR $metal == '14k White Gold') {
                            $this->metal = $this->list_metal['14K White Gold'];
                            $this->sku = $curent[1] . '-W14';
                            $this->filter[] = $this->list_filtr['14K White Gold'];

                            if (file_exists($this->request->server['DOCUMENT_ROOT'] . '/image/catalog/galery_rings2/' . $sku . '_w_1.jpg')) {
                                $name_file_general_img = $sku . '_w_1.jpg';
                            }

                        } elseif ($metal == '14K Yellow Gold' OR $metal == '14k Yellow Gold') {
                            $this->metal = $this->list_metal['14K Yellow Gold'];
                            $this->sku = $curent[1] . '-Y14';
                            $this->filter[] = $this->list_filtr['14K Yellow Gold'];

                            if (file_exists($this->request->server['DOCUMENT_ROOT'] . '/image/catalog/galery_rings2/' . $sku . '_y_1.jpg')) {
                                $name_file_general_img = $sku . '_y_1.jpg';
                            }

                        } elseif ($metal == '14K Rose Gold' OR $metal == '14k Rose Gold') {
                            $this->metal = $this->list_metal['14K Rose Gold'];
                            $this->sku = $curent[1] . '-R14';
                            $this->filter[] = $this->list_filtr['14K Rose Gold'];

                            if (file_exists($this->request->server['DOCUMENT_ROOT'] . '/image/catalog/galery_rings2/' . $sku . '_r_1.jpg')) {
                                $name_file_general_img = $sku . '_r_1.jpg';
                            }

                        } elseif ($metal == '18K White Gold' OR $metal == '18k White Gold') {
                            $this->metal = $this->list_metal['18K White Gold'];
                            $this->sku = $curent[1] . '-W18';
                            $this->filter[] = $this->list_filtr['18K White Gold'];

                            if (file_exists($this->request->server['DOCUMENT_ROOT'] . '/image/catalog/galery_rings2/' . $sku . '_w_1.jpg')) {
                                $name_file_general_img = $sku . '_w_1.jpg';
                            }

                        } elseif ($metal == '18K Yellow Gold' OR $metal == '18k Yellow Gold') {
                            $this->metal = $this->list_metal['18K Yellow Gold'];
                            $this->sku = $curent[1] . '-Y18';
                            $this->filter[] = $this->list_filtr['18K Yellow Gold'];

                            if (file_exists($this->request->server['DOCUMENT_ROOT'] . '/image/catalog/galery_rings2/' . $sku . '_y_1.jpg')) {
                                $name_file_general_img = $sku . '_y_1.jpg';
                            }

                        } elseif ($metal == '18K Rose Gold' OR $metal == '18k Rose Gold') {
                            $this->metal = $this->list_metal['18K Rose Gold'];
                            $this->sku = $curent[1] . '-R18';
                            $this->filter[] = $this->list_filtr['18K Rose Gold'];

                            if (file_exists($this->request->server['DOCUMENT_ROOT'] . '/image/catalog/galery_rings2/' . $sku . '_r_1.jpg')) {
                                $name_file_general_img = $sku . '_r_1.jpg';
                            }

                        } elseif ($metal == 'Platinum' OR $metal == 'platinum') {
                            $this->metal = $this->list_metal['Platinum'];
                            $this->sku = $curent[1] . '-PL';
                            $this->filter[] = $this->list_filtr['Platinum'];

                            if (file_exists($this->request->server['DOCUMENT_ROOT'] . '/image/catalog/galery_rings2/' . $sku . '_w_1.jpg')) {
                                $name_file_general_img = $sku . '_w_1.jpg';
                            }

                        } elseif ($metal == 'Palladium' or $metal == 'palladium') {
                            $this->metal = $this->list_metal['Palladium'];
                            $this->sku = $curent[1] . '-PA';
                            $this->filter[] = $this->list_filtr['Palladium'];

                            if (file_exists($this->request->server['DOCUMENT_ROOT'] . '/image/catalog/galery_rings2/' . $sku . '_w_1.jpg')) {
                                $name_file_general_img = $sku . '_w_1.jpg';
                            }

                        }

                        //galery image
                        $this->GaleryUrlImg($metal, $sku);


                        //ENGAGEMENT RINGS
                        //$this->category[] = 20;

                        //WEDDING RINGS
                        //$this->category[] = 69;
                        //WOMAN
                        //$this->category[] = 96;

                        //FINE JEWERLY
                        //$this->category[] = 82;


                        if (!empty($curent[16])) {
                            $this->category[] = $this->category_list_arr[trim($curent[16])];
                        }
                        if (!empty($curent[17])) {
                            $this->category[] = $this->category_list_arr[trim($curent[17])];
                        }
                        if (!empty($curent[18])) {
                            $this->category[] = $this->category_list_arr[trim($curent[18])];
                        }
                        if (!empty($curent[19])) {
                            $this->category[] = $this->category_list_arr[trim($curent[19])];
                        }

                        //image general
                        $this->image_general = 'catalog/galery_rings2/' . $name_file_general_img;
                        //$this->image_general = '';


                        $this->model = $this->sku;

                        $this->name = $curent[2];
                        $this->description = $curent[3];
                        $this->title_seo = $curent[4];
                        $this->description_seo = $curent[5];
                        $this->keywords_seo = $curent[6];
                        $this->tag = $curent[7];
                        $this->width = $curent[8];
                        $this->matching_id = $curent[13];
                        $this->option_size = $curent[15];
                        $this->status = $curent[14];

                        if (!empty($curent[10])) {
                            $this->manufactured = $this->list_manufactured[trim($curent[10])];
                        } else {
                            $this->manufactured = '';
                        }


                        //$this->width = substr($curent[8], 0, -2);

                        //atribute
                        $this->list_atribute[15] = $curent[20];//19
                        $this->list_atribute[16] = $curent[21];//20
                        $this->list_atribute[17] = $curent[22];//21
                        $this->list_atribute[18] = $curent[23];//22

                        $tmp_price = strripos($curent[11], '$');

                        if ($tmp_price === false) {
                            $this->price = $curent[11];
                        } else {
                            $this->price = (int)substr(str_replace(" ", "", $curent[11]), 1);
                        }

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
                        $this->product_id_insert_added[] = '<span style="color: green">Added ID - '.$this->product_id_insert.'</span>';
                        //dd($this->product_id_insert);
                    }
                }
            }

            $file->next();
        }

        //проверка масива добавленных строк хранит индекси product_id для метода добавления продуктов других металов
        if (!empty($this->product_id_insert_arr)) {
            $this->addProductMetal();
        }

    }


    public function generate_csv () {

        $title_list = array('Product_ID',
            'SKU',
            'Product Name',
            'Description',
            'Meta Tag Title',
            'Meta Tag Description',
            'Meta Tag Keywords',
            'Product Tags',
            'Width',
            'Metal',
            'Manufacturer',
            'Price',
            'Discount Price',
            'Maching ID',
            'Status',
            'Option Size',
            'Category1',
            'Category2',
            'Category3',
            'Category4',
            'CARAT WEIGHT', //15
            'NUMBER OF DIAMONDS', //16
            'AVERAGE COLOR', //17
            'AVERAGE CLARITY' //18
        );

        $category = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_category");
        $product_atribute = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_attribute");

        $result =  $this->db->query("SELECT pr.product_id, pr.sku, pd.name, pd.description, pd.meta_title, 
                pd.meta_description,
                pd.meta_keyword,
                pd.tag,
                pr.width,
                pr.metal,
                pr.manufacturer_id,
                pr.price,
                ps.price as specialPrice,
                pr.matching_id,
                pr.status,
                po.option_id 
                    FROM " . DB_PREFIX . "product as pr 
                    LEFT JOIN " . DB_PREFIX . "product_description as pd ON (pr.product_id = pd.product_id)
                    LEFT JOIN " . DB_PREFIX . "product_special as ps ON (pr.product_id = ps.product_id)
                    LEFT JOIN " . DB_PREFIX . "product_option as po ON (pr.product_id = po.product_id)
                    WHERE manufacturer_id NOT IN (14,13) ORDER BY pr.product_id ASC");
       // dd($result->rows, true);
       // dd('sdf', true);

        $delimiter = ',';
        $file = new SplFileObject($_SERVER['DOCUMENT_ROOT']."/uploddata/data.csv", 'w');
        $file->setCsvControl($delimiter);

        $file->fputcsv($title_list);

        $manufacture = array_flip($this->list_manufactured);
        $metal = array_flip($this->list_metal);
        $category_list_id = array_flip($this->category_list_arr);


        foreach ($result->rows as $fields) {

            $this->fields_tmp = $fields;
            $cat = array_filter($category->rows, function ($innerArray){
                return ($innerArray['product_id'] == $this->fields_tmp['product_id']);
            });


            $cat = array_values($cat);

            $fields['metal'] = $metal[$fields['metal']];
            $fields['manufacturer_id'] = !empty($manufacture[$fields['manufacturer_id']]) ? $manufacture[$fields['manufacturer_id']] : null;

            //atribute
            $atribut = array_filter($product_atribute->rows, function ($innerArray){

                return ($innerArray['product_id'] == $this->fields_tmp['product_id']);
            });

            $c_tmp = null;
            $n_f_d = null;
            $a_col = null;
            $a_clar = null;

            foreach ($atribut as $item) {
               switch ($item['attribute_id']) {
                   case 15:
                       $c_tmp = $item['text'];
                       break;
                   case 16:
                       $n_f_d = $item['text'];
                       break;
                   case 17:
                       $a_col = $item['text'];
                       break;
                   case 18:
                       $a_clar = $item['text'];
                       break;
               }
            }

            //dd($cat);


            if (!empty($cat[0]['category_id']) and !empty($category_list_id[$cat[0]['category_id']])) {
                $fields['Category1'] = $category_list_id[$cat[0]['category_id']];
            } else {
                $fields['Category1'] = null;
            }
            if (!empty($cat[1]['category_id']) and !empty($category_list_id[$cat[1]['category_id']])) {
                $fields['Category2'] = $category_list_id[$cat[1]['category_id']];
            } else {
                $fields['Category2'] = null;
            }
            if (!empty($cat[2]['category_id']) and !empty($category_list_id[$cat[2]['category_id']])) {
                $fields['Category3'] = $category_list_id[$cat[2]['category_id']];
            } else {
                $fields['Category3'] = null;
            }
            if (!empty($cat[3]['category_id']) and !empty($category_list_id[$cat[3]['category_id']])) {
                $fields['Category4'] = $category_list_id[$cat[3]['category_id']];
            } else {
                $fields['Category4'] = null;
            }

            if (!empty($fields['option_id'])) {
                $fields['option_id'] = 1;
            } else {
                $fields['option_id'] = 0;
            }

            $fields['CARAT WEIGHT'] = $c_tmp;
            $fields['NUMBER OF DIAMONDS'] = $n_f_d;
            $fields['AVERAGE COLOR'] = $a_col;
            $fields['AVERAGE CLARITY'] = $a_clar;



            $file->fputcsv($fields);
        }

        header('Content-Type: text/csv');
        header('Content-Disposition: Attachment; filename=data.csv');
        readfile($_SERVER['DOCUMENT_ROOT']."/uploddata/data.csv");
        exit();
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
            status = '" . $this->status . "', 
            tax_class_id = '" . 0 . "', 
            sort_order = '" . 0 . "', 
            date_added = NOW()");

        return $this->db->getLastId();
    }


    private function UpdateProduct($product_id) {

        $query = $this->db->query("UPDATE " . DB_PREFIX . "product
            SET 
            metal = '".$this->db->escape($this->metal)."', 
            model = '" . $this->db->escape($this->model) . "', 
            sku = '" . $this->db->escape($this->sku) . "', 
            manufacturer_id = '" . $this->manufactured . "',
            matching_id = '".$this->matching_id."',
            price = '" . $this->price . "', 
            width = '" . $this->width . "',
            status = '" . $this->status . "'
                WHERE product_id = '".$product_id."'");
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

    private function UpdateDescription($product_id) {
        $this->db->query("UPDATE " . DB_PREFIX . "product_description SET 
            name = '" . $this->name . "', 
            description = '" . $this->description . "', 
            tag = '" . $this->tag . "', 
            meta_title = '" . $this->title_seo . "', 
            meta_description = '" . $this->description_seo . "', 
            meta_keyword = '" . $this->keywords_seo . "' WHERE product_id = '".$product_id."'");
    }

    private function addCategory (){

        foreach ($this->category as $category_id) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET 
            product_id = '" . (int)$this->product_id_insert . "', 
            category_id = '" . (int)$category_id . "'");
        }

    }

    private function UpdateCategory ($product_id) {

        $this->db->query("DELETE FROM " . DB_PREFIX . "product_to_category WHERE product_id = ".$product_id);

        foreach ($this->category as $category_id) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET 
                product_id = '" . $product_id . "', 
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


    private function UpdateFilters ($product_id){

        $this->db->query("DELETE FROM " . DB_PREFIX . "product_filter WHERE product_id = ".$product_id);

        foreach ($this->filter as $filter_id) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "product_filter SET 
            product_id = '" . $product_id . "', 
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

    private function UpdateOptions($product_id) {

        $this->db->query("DELETE FROM " . DB_PREFIX . "product_option WHERE product_id = ".$product_id);
        $this->db->query("DELETE FROM " . DB_PREFIX . "product_option_value WHERE product_id = ".$product_id);

        if ($this->option_size == 1) {

            $this->db->query("INSERT INTO " . DB_PREFIX . "product_option SET
            product_id = '" . $product_id . "',
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

    private function UpdateAtribute ($product_id) {

        foreach ($this->list_atribute as $key => $product_attribute) {

            $this->db->query("UPDATE " . DB_PREFIX . "product_attribute SET  
            text = '" .  $this->db->escape($product_attribute) . "' 
            WHERE attribute_id = '" . (int)$key . "' AND product_id = ".$product_id);

        }
    }

    private function UpdateDiscount ($product_id) {
        //$this->special_price
        $this->db->query("DELETE FROM " . DB_PREFIX . "product_special WHERE product_id = ".$product_id);

        if (!empty($this->special_price)) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "product_special SET
            product_id = '".$product_id."',
            customer_group_id = 1,
            priority = 0,
            price = '" . $this->special_price . "',
            date_start = '0000-00-00',
            date_end = '0000-00-00'");
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

        $dir_img = 'catalog/galery_rings2/';

        $i = array(1,2,3,4);

        foreach ($i as $item) {

            if ($metal == '14K White Gold' OR $metal == '14k White Gold') {

                if (file_exists($this->request->server['DOCUMENT_ROOT'].'/image/'. $dir_img . $sku . '_w_'.$item.'.jpg')) {
                    $this->image_galery[] = $dir_img . $sku . '_w_' . $item . '.jpg';
                }

            } elseif ($metal == '14K Yellow Gold' OR $metal == '14k Yellow Gold') {

                if (file_exists($this->request->server['DOCUMENT_ROOT'].'/image/'. $dir_img . $sku . '_y_'.$item.'.jpg')) {
                    $this->image_galery[] = $dir_img . $sku . '_y_' . $item . '.jpg';
                }


            } elseif ($metal == '14K Rose Gold' OR $metal == '14k Rose Gold') {

                if (file_exists($this->request->server['DOCUMENT_ROOT'].'/image/'. $dir_img . $sku . '_r_'.$item.'.jpg')) {
                    $this->image_galery[] = $dir_img . $sku . '_r_' . $item . '.jpg';
                }

            } elseif ($metal == '18K White Gold' OR $metal == '18k White Gold') {

                if (file_exists($this->request->server['DOCUMENT_ROOT'].'/image/'. $dir_img . $sku . '_w_'.$item.'.jpg')) {
                    $this->image_galery[] = $dir_img . $sku . '_w_' . $item . '.jpg';
                }

            } elseif ($metal == '18K Yellow Gold' OR $metal == '18k Yellow Gold') {

                if (file_exists($this->request->server['DOCUMENT_ROOT'].'/image/'. $dir_img . $sku . '_y_'.$item.'.jpg')) {
                    $this->image_galery[] = $dir_img . $sku . '_y_' . $item . '.jpg';
                }

            } elseif ($metal == '18K Rose Gold' OR $metal == '18k Rose Gold') {

                if (file_exists($this->request->server['DOCUMENT_ROOT'].'/image/'. $dir_img . $sku . '_r_'.$item.'.jpg')) {
                    $this->image_galery[] = $dir_img . $sku . '_r_' . $item . '.jpg';
                }

            } elseif ($metal == 'Platinum') {

                if (file_exists($this->request->server['DOCUMENT_ROOT'].'/image/'. $dir_img . $sku . '_w_'.$item.'.jpg')) {
                    $this->image_galery[] = $dir_img . $sku . '_w_' . $item . '.jpg';
                }

            } elseif ($metal == 'Palladium') {

                if (file_exists($this->request->server['DOCUMENT_ROOT'].'/image/'. $dir_img . $sku . '_w_'.$item.'.jpg')) {
                    $this->image_galery[] = $dir_img . $sku . '_w_' . $item . '.jpg';
                }

            }
        }

    }

    //метод валидации при обновлении
    private function validationUpdate ($curent, $i) {

        $tmp_str_eror = null;

        //SKU
        if (empty($curent[1])) {
            $tmp_str_eror = ' Err:SKU ';
        }
        //Product Name
        if (empty($curent[2])) {
            $tmp_str_eror .= ' Err:ProductName ';
        }
        //Width
        //dd((int)$curent[8]);
        if (is_string((int)$curent[8])) {
            $tmp_str_eror .= ' Err:Width ';
        }
        //Metal
        if (empty($this->list_metal[$curent[9]])) {
            $tmp_str_eror .= ' Err:Metal ';
        }
        //Manufacturer
        if (empty($this->list_manufactured[$curent[10]])) {
            $tmp_str_eror .= ' Err:Manufacturer ';
        }
        //Price
        if (is_string((int)$curent[11])) {
            $tmp_str_eror .= ' Err:Price ';
        }
        //Discount Price
        if (is_string((int)$curent[12])) {
            $tmp_str_eror .= ' Err:DiscountPrice ';
        }
        //Maching ID
        if (is_string((int)$curent[13])) {
            $tmp_str_eror .= ' Err:Maching ';
        }
        //Status
        if ((is_string((int)$curent[14])) and ($curent[14] != 0 or $curent[14] != 1)) {
            $tmp_str_eror .= ' Err:Status ';
        }
        //Option Size
        if ((is_string((int)$curent[15])) and ($curent[15] != 0 or $curent[15] != 1)) {
            $tmp_str_eror .= ' Err:Status ';
        }
        //Category1
        if (!empty($curent[16])) {
            if (empty($this->category_list_arr[$curent[16]])) {
                $tmp_str_eror .= ' Err:Category1 ';
            }
        } else {
            $tmp_str_eror .= ' Err:not category ';
        }
        //Category2
        if (!empty($curent[17])) {
            if (empty($this->category_list_arr[$curent[17]])) {
                $tmp_str_eror .= ' Err:Category2 ';
            }
        }
        //Category3
        if (!empty($curent[18])) {
            if (empty($this->category_list_arr[$curent[18]])) {
                $tmp_str_eror .= ' Err:Category3 ';
            }
        }
        //Category4
        if (!empty($curent[19])) {
            if (empty($this->category_list_arr[$curent[19]])) {
                $tmp_str_eror .= ' Err:Category4 ';
            }
        }


        if (!empty($tmp_str_eror)) {
            return 'Line:'.$i.':'.$tmp_str_eror;
        } else {
            //если нет ошибок
            return false;
        }

    }

}