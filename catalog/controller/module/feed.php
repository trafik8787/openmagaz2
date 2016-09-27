<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 21.09.2016
 * Time: 10:57
 */

class ControllerModuleFeed extends Controller {

    private $arrUrlQuery;
    private $arr_color;

    public function __construct($registry) {
        parent::__construct($registry);

        $this->arr_color = array(
            'white_gold_14' => 'White&#47;Gold',
            'yellow_gold_14' => 'Yellow&#47;Gold',
            'rose_gold_14' => 'Rose&#47;Gold',
            'white_gold_18' => 'White&#47;Gold',
            'yellow_gold_18' => 'Yellow&#47;Gold',
            'rose_gold_18' => 'Rose&#47;Gold',
            'platinum' => 'White',
            'palladium' => 'White',
            'two_tone_14' => 'White&#47;Rose&#47;Yellow',
            'two_tone_18' => 'White&#47;Rose&#47;Yellow',
            'gemstones' => 'Red&#47;Pink&#47;Blue'
        );

        $this->getUrl();
    }

    public function index() {

        $this->load->model('tool/image');

        $results = $this->getProduct();

        $xml = new DomDocument('1.0','utf-8');
        $rss = $xml->createElement("rss");
        $rss->setAttribute("version","2.0");
        $rss->setAttribute("xmlns:g","http://base.google.com/ns/1.0");
        $rss_node = $xml->appendChild($rss);
        $channel = $rss_node->appendChild($xml->createElement('channel'));
        $title = $channel->appendChild($xml->createElement('title'));
        $link = $channel->appendChild($xml->createElement('link'));
        $description = $channel->appendChild($xml->createElement('description'));

        $title->appendChild($xml->createTextNode('Diamonds and Jewelry'));
        $link->appendChild($xml->createTextNode(HostSite()));
        $description->appendChild($xml->createTextNode('Diamonds, engagement rings, wedding rings, jewelry, gemstones, earrings, necklaces, rings, bands, bracelets, studs'));
        //dd($_SERVER['DOCUMENT_ROOT'], true);
        foreach ($results as $rows) {

            if (!empty($rows['image'] AND !empty($this->arr_color[$rows['metal']])) ) {

                $image = $this->model_tool_image->resize($rows['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                if (!empty($image)) {

                    $item = $channel->appendChild($xml->createElement('item'));
                    $item_title = $item->appendChild($xml->createElement('title'));
                    $item_link = $item->appendChild($xml->createElement('link'));
                    $item_description = $item->appendChild($xml->createElement('description'));
                    $item_gId = $item->appendChild($xml->createElement('g:id'));
                    $item_gPrice = $item->appendChild($xml->createElement('g:price'));
                    $item_gCondition = $item->appendChild($xml->createElement('g:condition'));
                    $item_gAvailability = $item->appendChild($xml->createElement('g:availability'));
                    $item_gIdentifier_exists = $item->appendChild($xml->createElement('g:identifier_exists'));
                    $item_gBrand = $item->appendChild($xml->createElement('g:brand'));
                    $item_gMpn = $item->appendChild($xml->createElement('g:mpn'));
                    $item_gAge_group = $item->appendChild($xml->createElement('g:age_group'));
                    $item_gGender = $item->appendChild($xml->createElement('g:gender'));
                    $item_gColor = $item->appendChild($xml->createElement('g:color'));

                    $item_gGoogle_product_category = $item->appendChild($xml->createElement('g:google_product_category'));

                    $item_gTax = $item->appendChild($xml->createElement('g:tax'));
                        $gTax_gCountry = $item_gTax->appendChild($xml->createElement('g:country'));
                        $gTax_gRegion = $item_gTax->appendChild($xml->createElement('g:region'));
                        $gTax_gRate = $item_gTax->appendChild($xml->createElement('g:rate'));
                        $gTax_gTax_ship = $item_gTax->appendChild($xml->createElement('g:tax_ship'));


                    //$item_gProduct_type = $item->appendChild($xml->createElement('g:product_type'));
                    $item_gImage_link = $item->appendChild($xml->createElement('g:image_link'));


                    $item_title->appendChild($xml->createTextNode($rows['name']));
                    $item_link->appendChild($xml->createTextNode($this->generateUrl($rows['product_id'])));
                    $item_description->appendChild($xml->createTextNode($rows['description']));
                    $item_gId->appendChild($xml->createTextNode($rows['product_id']));
                    $item_gPrice->appendChild($xml->createTextNode($rows['price'] . ' USD'));
                    $item_gCondition->appendChild($xml->createTextNode('new'));
                    $item_gAvailability->appendChild($xml->createTextNode('in stock'));
                    $item_gIdentifier_exists->appendChild($xml->createTextNode('FALSE'));
                    $item_gBrand->appendChild($xml->createTextNode($rows['manufacture']));
                    $item_gMpn->appendChild($xml->createTextNode($rows['sku']));
                    $item_gAge_group->appendChild($xml->createTextNode('adult'));
                    $item_gGender->appendChild($xml->createTextNode('unisex'));
                    $item_gColor->appendChild($xml->createTextNode($this->arr_color[$rows['metal']]));

                    $item_gGoogle_product_category->appendChild($xml->createTextNode('200'));


                    $gTax_gCountry->appendChild($xml->createTextNode('US'));
                    $gTax_gRegion->appendChild($xml->createTextNode('TN'));
                    $gTax_gRate->appendChild($xml->createTextNode('9.25'));
                    $gTax_gTax_ship->appendChild($xml->createTextNode('n'));

                    //$item_gProduct_type->appendChild($xml->createTextNode('available for order'));

                    $item_gImage_link->appendChild($xml->createTextNode($image));

                }

            }
        }

        $xml->formatOutput = true;
        $xml->save($_SERVER['DOCUMENT_ROOT'].'/brilliantcanary.xml');
    }


    private function getProduct () {

        $query = $this->db->query("SELECT p.product_id, p.sku, p.model, p.image, p.metal, p.price, man.name as manufacture, pd.name, pd.description, ptc.category_id FROM ". DB_PREFIX . "product p INNER JOIN ".DB_PREFIX."manufacturer man ON (p.manufacturer_id = man.manufacturer_id) LEFT JOIN ".DB_PREFIX."product_description pd  ON (p.product_id = pd.product_id) 
        LEFT JOIN ".DB_PREFIX."product_to_category ptc ON (p.product_id = ptc.product_id)");
        $CoupTmp = array();
        $result = array();

        foreach ($query->rows as $item) {

            $CoupTmp[$item['product_id']][] = $item['category_id'];

        }

        foreach ($query->rows as $item) {
            //$item['arr_category'] = $CoupTmp;

            if (!empty($CoupTmp[$item['product_id']])) {
                $item['arr_category'] = implode("_", $CoupTmp[$item['product_id']]);
                $result[$item['product_id']] = $item;
            }
        }

        return $result;
    }


    private function getUrl() {

        $query = $this->db->query("SELECT * FROM ".DB_PREFIX."url_alias");
        $result = array();
        foreach ($query->rows as $row) {
            $result[$row['query']] = $row['keyword'];
        }

        $this->arrUrlQuery = $result;
    }


    private function generateUrl ($cat) {
        return HostSite('/'.$this->arrUrlQuery['product_id='.$cat]);
    }

}