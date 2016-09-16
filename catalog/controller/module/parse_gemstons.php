<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 02.09.2016
 * Time: 17:07
 *
 * /index.php?route=module/parse_gemstons/sylviogems
 * /index.php?route=module/parse_gemstons/sylviojewelry
 */



class ControllerModuleParseGemstons extends Controller {

    private $model;
    private $sku;
    private $name;
    private $description;
    private $title_seo;
    private $description_seo;
    private $keywords_seo;
    private $metal;
    private $manufactured;
    private $dimensions;

    private $product_id_insert;
    private $price;
    private $carat;
    private $image_general;
    private $image_galery;

    private $stone_type;
    private $shape;
    private $color;

    private $filter_stone_type;
    private $filter_all;
    private $filter_shape;
    private $filter_color;
    private $filter;

    private $category;


    //gemstone jeverly изделия
    private $category_gemstone;
    private $manufactured_gemstone;
    private $metal_gemstone;



    public function __construct($registry) {
        parent::__construct($registry);


        $this->metal = 'gemstones';
        $this->manufactured = 13;
        $this->manufactured_gemstone = 14;
        $this->category[] = 94;

        /**
         * 'Price' => 4,
        'Weight' => 58,
        'Stone_type_all' => 55,
        'Shape_all' => 56,
        'Primary_color_all' => 57,
         */
        $this->filter_all = array(4,58,55,56,57);

        $this->filter_stone_type = array(
            'SA' => 17,
            'RU' => 18,
            'EM' => 19,
            'YS' => 20,
            'PS' => 21,
            'GS' => 22,
            'LV' => 23,
            'PAD' => 24,
            'OS' => 25,
            'AQ' => 26,
            'PA' => 27,
            'TZ' => 28
        );

        $this->stone_type = array(
            'SA' => 'Sapphire',
            'RU' => 'Ruby',
            'EM' => 'Emerald',
            'YS' => 'Yellow Sapphire',
            'PS' => 'Pink Sapphire',
            'GS' => 'Green Sapphire',
            'LV' => 'Green Sapphire',
            'PAD' => 'Padparacha Sapphire',
            'OS' => 'Orange Sapphire',
            'AQ' => 'Aquamarine',
            'PA' => 'Paraiba Tourmaline',
            'TZ' => 'Tanzanite'
        );

        $this->filter_shape = array(
            'Cab' => 30,
            'CU' => 31,
            'EC' => 32,
            'FY' => 33,
            'HS' => 34,
            'MQ' => 35,
            'MIX' => 36,
            'OV' => 37,
            'PR' => 38,
            'PS' => 39,
            'RAD' => 40,
            'RD' => 41,
            'SQ' => 42
        );

        $this->shape = array(
            'Cab' => 'Cabochon',
            'CU' => 'Cushion Cut',
            'EC' => 'Emerald Cut',
            'FY' => 'Fancy Cut',
            'HS' => 'Heart Shape',
            'MQ' => 'Marquise',
            'MIX' => 'Mixed Cut',
            'OV' => 'Oval Cut',
            'PR' => 'Princess Cut',
            'PS' => 'Pear Shape',
            'RAD' => 'Radiant Cut',
            'RD' => 'Round Cut',
            'SQ' => 'Square Cut'
        );

        $this->filter_color = array(
            'BG' => 43,
            'BLU' => 44,
            'Blue' => 44,
            'Green' => 45,
            'GRN' => 45,
            'LAV' => 47,
            'LBL' => 48,
            'Pink' => 50,
            'PNK' => 50,
            'RED' => 52,
            'White' => 53,
            'Yellow' => 54
        );

        $this->color = array(
            'BG' => 'Blue Green',
            'BLU' => 'Blue',
            'Blue' => 'Blue',
            'Green' => 'Green',
            'GRN' => 'Green',
            'LAV' => 'Lavender',
            'LBL' => 'Light Blue',
            'Pink' => 'Pink',
            'PNK' => 'Pink',
            'RED' => 'Red',
            'White' => 'White',
            'Yellow' => 'Yellow'
        );










        $this->category_gemstone = array(
            'BNGL' => 93, //'Gemstone Bracelets',
            'ERNG' => 87, //'Gemstone Earrings',
            'NL' => 91, //'Gemstone Pendants',
            'PDT' => 91, //'Gemstone Pendants',
            'RG' => 90, //'Gemstone Rings',
            'STU' => 87, //'Gemstone Earrings',
            'TNSB' => 93 //'Gemstone Bracelets'
        );

        $this->metal_gemstone = array(
            '14K ROSE' => 'rose_gold_14',
            '14KTT' => 'two_tone_14',
            '14KW'  => 'white_gold_14',
            '18KP'  => 'rose_gold_14', // ? не уверен что выставлен нужный метал
            '18KTT' => 'two_tone_18',
            '18KW'  => 'white_gold_18',
            '18KY'  =>  'yellow_gold_18',
            '2T14K' => 'two_tone_14',
            'PL18K' => 'platinum',
            'PLAT/18K' => 'platinum',
            'PLTN'  => 'palladium'
        );





    }


    /**
     * [0] => Supplier ID
    [1] => Stone Type
    [2] => Shape
    [3] => Carat Weight
    [4] => Primary Color
    [5] => Price per Carat
    [6] => Stock #
    [7] => Color System
    [8] => Stone Image
    [9] => Certificate Image
    [10] => Additional Image
    [11] => Dimensions
    [12] => Availability
    [13] => Origin
    [14] => Description
    [15] => Treatment Notes
    [16] => Lab
    [17] => Certificate ID
     */


    public function sylviogems () {

        $this->deleteProduct();
        //$filePath = '/home/canary/www/sylviogems.csv';
        $filePath = '/home/brilliantcanary/gems_pars/sylviogems.csv';
        $delimiter = ',';
        $file = new SplFileObject($filePath, 'r');
        $file->setFlags(SplFileObject::READ_CSV);
        $file->setCsvControl($delimiter);
        dd($file->current());
        $file->seek(2);
        //dd($file->current());



        while (!$file->eof()) {


            $this->filter = array();
            $this->image_galery = array();
            $curent = $file->current();

            if ($curent[8] AND $curent[2] !== 'CC' AND $curent[2] !== 'TR' AND $curent[2] !== 'TRAP' AND $curent[2] !== 'STB' AND $curent[1] !== 'WS' AND $curent[5] != 0) {

                //dd($curent);


                $this->sku = $curent[6];
                $this->model = $this->sku;
                $this->carat = $curent[3];
                $this->price = floor(($this->carat * $curent[5]) * 2);
                $this->name = $this->color[$curent[4]].' '.$this->shape[$curent[2]].' '.$this->stone_type[$curent[1]].' '.$curent[3];



                $this->description = $this->name;
                $this->title_seo = $this->name.' | '. $this->sku;
                $this->description_seo = $this->name.' '. $this->sku;
                $this->keywords_seo = $this->color[$curent[4]].', '.$this->shape[$curent[2]].', '.$this->stone_type[$curent[1]].', '.$curent[3].', Carat';

                $this->filter = $this->filter_all;
                $this->filter[] = $this->filter_stone_type[$curent[1]];
                $this->filter[] = $this->filter_shape[$curent[2]];
                $this->filter[] = $this->filter_color[$curent[4]];

                //размеры
                $this->dimensions = $this->parseDimensions($curent[11]);


                $this->image_general = 'catalog/img_gemstones/'.$curent[8];
                $this->image_galery[] = 'catalog/img_gemstones/'.$curent[8];
                $this->copyImage($curent[8]);


                $this->product_id_insert = $this->addProduct();
                $this->addFilters();
                $this->addDescription();
                $this->addUrl();
                $this->addStore();
                $this->addCategory();
                $this->addGalery();

                dd($this->product_id_insert);

            }

            $file->next();
        }

    }


    /**
     *  [0] => Vendor SKU
    [1] => Category
    [2] => Center Stone Type
    [3] => Center Stone Shape
    [4] => Center Stone Color
    [5] => # of Center Stones
    [6] => Center Stone Measurements
    [7] => Center Stone Weight
    [8] => Total Diamond Weight
    [9] => # of side Diamonds
    [10] => Color of Side diamonds
    [11] => Clarity of Side diamonds
    [12] => # of Pave Diamonds
    [13] => Color of Pave diamonds
    [14] => Clarity of Pave Diamonds
    [15] => Metal
    [16] => Ring Size
    [17] => Item Name
    [18] => R2Net Cost
    [19] => Suggested Retail
    [20] => Shank Width in MM
    [21] => Shank Height
    [22] => Image Name
    [23] => Long Description
     */
    public function sylviojewelry () {

        $filePath = '/home/canary/www/sylviojewelry.csv';
        $delimiter = ',';
        $file = new SplFileObject($filePath, 'r');
        $file->setFlags(SplFileObject::READ_CSV);
        $file->setCsvControl($delimiter);
        dd($file->current());
        $file->seek(2);
        //dd($file->current());
        $rert = array();
        while (!$file->eof()) {

            $curent = $file->current();

           if ((!empty($curent[2]) OR !empty($curent[3]) OR !empty($curent[4])) and  !empty($this->category_gemstone[$curent[1]])) {


               $this->sku = $curent[0];
               $this->model = $this->sku;

               if ($curent[18] <= 5999) {
                   $this->getPrice($curent[18], 15);

               } elseif ($curent[18] >= 5000 AND $curent[18] <= 16999) {
                   $this->getPrice($curent[18], 20);

               } elseif ($curent[18] >= 17000) {
                   $this->getPrice($curent[18], 25);
               }

               //dd($curent);

               //$this->name =

               if ($curent[15]) {
                    $rert[$curent[15]] = $curent[15];
               }

               //$this->name = $curent[4].' '.$this->shape[$curent[2]].' '.$this->stone_type[$curent[1]].' '.$curent[3];


           }

            dd($curent);
            $file->next();
        }
        dd($rert);
    }


    /**
     * расчет цены
     */
    public function getPrice ($price, $percent) {
        $this->price = $price * 2;
        $tmp_price = ($price * $percent)/100;
        $this->price = $this->price - $tmp_price;
    }


































    public function deleteProduct() {

        $query = $this->db->query("SELECT product_id FROM " . DB_PREFIX . "product WHERE manufacturer_id = ".$this->manufactured." AND metal = 'gemstones'");

        $arr_id_product = array();
        $in_product = null;

        if (!empty($query->rows)) {

            foreach ($query->rows as $row) {
                $arr_id_product[] = $row['product_id'];
            }

            $in_product = implode(',', $arr_id_product);

            $this->db->query("DELETE FROM " . DB_PREFIX . "product WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_attribute WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_description WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_discount WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_filter WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_image WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_option WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_option_value WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_related WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_related WHERE related_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_reward WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_special WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_to_category WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_to_download WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_to_layout WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_to_store WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "product_recurring WHERE product_id IN (" . $in_product . ")");
            $this->db->query("DELETE FROM " . DB_PREFIX . "review WHERE product_id IN (" . $in_product . ")");

            foreach ($arr_id_product as $item) {
                $this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'product_id=" . $item . "'");
            }

            $this->cache->delete('product');
        }
    }


    private function copyImage ($img) {
        $gems_pars = '/home/brilliantcanary/gems_pars/'.$img;
        $img_gemstones = '/home/brilliantcanary/htdocs/image/catalog/img_gemstones/'.$img;

        if (file_exists($gems_pars)) {
            copy($gems_pars, $img_gemstones);
        }
    }


    private function parseDimensions ($dimens) {

        $pieces = explode("|", trim($dimens));
        if (empty($pieces)) {
            $pieces[0] = 0.00000000;
            $pieces[1] = 0.00000000;
            $pieces[2] = 0.00000000;
        } else {
            if (empty($pieces[1])) {
                $pieces[1] = 0.00000000;
            } elseif (empty($pieces[2])) {
                $pieces[2] = 0.00000000;
            }
        }

        return $pieces;
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
            weight = '" . $this->carat . "', 
            weight_class_id = '" . 2 . "', 
            length = '" . $this->dimensions[0] . "', 
            width = '" . $this->dimensions[1] . "', 
            height = '" . $this->dimensions[2] . "', 
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

    private function addStore () {

        $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_store SET 
        product_id = '" . (int)$this->product_id_insert . "', 
        store_id = '" . 0 . "'");

    }

    private function addGalery (){
        foreach ($this->image_galery as $product_image) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "product_image SET 
            product_id = '" . (int)$this->product_id_insert . "', 
            image = '" . $this->db->escape($product_image) . "', 
            sort_order = '" . 0 . "'");
        }
    }

}