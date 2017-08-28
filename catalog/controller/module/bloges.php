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


        $data['bloges'] = $this->getBloges();


        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/bloges.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/bloges.tpl', $data);
        } else {
            return $this->load->view('No page');
        }
    }


    public function getBloges () {


//        $ch = curl_init();
//        curl_setopt($ch, CURLOPT_FAILONERROR, 1);
//        curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
//        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
//        curl_setopt($ch, CURLOPT_ENCODING, 'gzip,deflate');
//        $headers = array( 'Expect:','Connection: Keep-Alive','Accept-Charset: utf-8,windows-1251;q=0.7,*;q=0.7' );
//        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
//        curl_setopt($ch, CURLOPT_URL, $this->config->get('bloges_url')); // Адрес RSS
//
//        $rss_str = curl_exec($ch);
//        if(!$rss_str) {
//            print "Oooops. Can't get rss stream.\n";
//            exit;
//        }
//
//        $rss = simplexml_load_string($rss_str, 'SimpleXMLElement', LIBXML_NOCDATA);
////        dd($rss, true);
//
//        foreach ($rss->channel->item as $node) {
//            $result_arr[] = array(
//                'title' => $node->title,
//                'link' => $node->link,
//                'date_m' => date('M', strtotime($node->pubDate)),
//                'date_d' => date('d', strtotime($node->pubDate)),
//                'desk' => text::limit_chars(strip_tags($node->description), 160 , null, true),
//                'img' => $node->getElementsByTagName('content')->item(0)->getAttribute('url')
//            );
//        }



        $result_arr = array();
        $this->load->model('tool/image');


        if (empty($this->cache->get('bloges'))) {

            $rss = new DOMDocument();
            $rss->load($this->config->get('bloges_url'));

            foreach ($rss->getElementsByTagName('item') as $node) {

                $result_arr[] = array(
                    'title' => $node->getElementsByTagName('title')->item(0)->nodeValue,
                    'link' => $node->getElementsByTagName('link')->item(0)->nodeValue,
                    'date_m' => date('M', strtotime($node->getElementsByTagName('pubDate')->item(0)->nodeValue)),
                    'date_d' => date('d', strtotime($node->getElementsByTagName('pubDate')->item(0)->nodeValue)),
                    'desk' => text::limit_chars(strip_tags($node->getElementsByTagName('encoded')->item(0)->nodeValue), 160 , null, true),
                    'img' => $node->getElementsByTagName('content')->item(0)->getAttribute('url')
                );
                //dd($node->getElementsByTagName('content')->item(0)->getAttribute('url'));
                //dd($this->model_tool_image->resize($node->getElementsByTagName('content')->item(0)->getAttribute('url'), 285, 173));
            }

            $this->cache->set('bloges', $result_arr);

        } else {
            $result_arr = $this->cache->get('bloges');
        }

        return $result_arr;

    }

}