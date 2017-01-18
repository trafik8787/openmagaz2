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

        $result_arr = array();
        $this->load->model('tool/image');

        $rss = new DOMDocument();
        $rss->load($this->config->get('bloges_url'));

        if (empty($this->cache->get('bloges'))) {

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