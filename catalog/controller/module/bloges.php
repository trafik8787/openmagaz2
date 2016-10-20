<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 20.10.2016
 * Time: 23:59
 */

class ControllerModuleBloges extends Controller {

    public function index() {

        $data = array();
        $result_arr = array();

//        $rss = new DOMDocument();
//        $rss->load($this->config->get('bloges_url'));
//
//        foreach ($rss->getElementsByTagName('item') as $node) {
//
//            $result_arr[] = array(
//                'title' => $node->getElementsByTagName('title')->item(0)->nodeValue,
//                'link' => $node->getElementsByTagName('link')->item(0)->nodeValue,
//                'date_m' => date('M', strtotime($node->getElementsByTagName('pubDate')->item(0)->nodeValue)),
//                'date_d' => date('d', strtotime($node->getElementsByTagName('pubDate')->item(0)->nodeValue))
//
//            );
//            dd($node->getElementsByTagName('encoded')->item(0)->nodeValue);
//        }


//        dd($movies->channel);
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/bloges.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/bloges.tpl', $data);
        } else {
            return $this->load->view('No page');
        }
    }

}