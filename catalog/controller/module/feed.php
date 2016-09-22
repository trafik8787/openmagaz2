<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 21.09.2016
 * Time: 10:57
 */

class ControllerModuleFeed extends Controller {

    private $arrUrlQuery;

    public function __construct($registry) {
        parent::__construct($registry);
        $this->getUrl();
    }

    public function index() {

        $this->load->model('tool/image');


        $results = $this->getProduct();
       // dd($this->arrUrlQuery, true);

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

        foreach ($results as $rows) {


            $item = $channel->appendChild($xml->createElement('item'));
            $item_link = $item->appendChild($xml->createElement('link'));
            $item_gId = $item->appendChild($xml->createElement('g:id'));
            $item_gPrice = $item->appendChild($xml->createElement('g:price'));
            $item_gCondition = $item->appendChild($xml->createElement('g:condition'));
            $item_gAvailability = $item->appendChild($xml->createElement('g:availability'));
            //$item_gProduct_type = $item->appendChild($xml->createElement('g:product_type'));
            $item_gImage_link = $item->appendChild($xml->createElement('g:image_link'));
            $item_title = $item->appendChild($xml->createElement('title'));
            $item_description = $item->appendChild($xml->createElement('description'));


            $item_link->appendChild($xml->createTextNode($this->generateUrl($rows['product_id'])));
            $item_gId->appendChild($xml->createTextNode($rows['product_id']));
            $item_gPrice->appendChild($xml->createTextNode($rows['price'].' USD'));
            $item_gCondition->appendChild($xml->createTextNode('new'));
            $item_gAvailability->appendChild($xml->createTextNode('available for order'));
            //$item_gProduct_type->appendChild($xml->createTextNode('available for order'));
            $image = $this->model_tool_image->resize($rows['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
            $item_gImage_link->appendChild($xml->createTextNode($image));
            $item_title->appendChild($xml->createTextNode($rows['name']));
            $item_description->appendChild($xml->createTextNode($rows['description']));
        }
        $xml->formatOutput = true;
        $xml->save($_SERVER['DOCUMENT_ROOT'].'/feed.xml');
    }


    private function getProduct () {

        $query = $this->db->query("SELECT p.product_id, p.model, p.image, p.price, pd.name, pd.description, ptc.category_id FROM ". DB_PREFIX . "product p LEFT JOIN ".DB_PREFIX."product_description pd  ON (p.product_id = pd.product_id) 
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