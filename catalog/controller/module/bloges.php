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


        if (empty($this->cache->get('bloges'))) {

            $rss = new DOMDocument();
            $rss->load($this->config->get('bloges_url'));

            foreach ($rss->getElementsByTagName('item') as $node) {

                $url = $node->getElementsByTagName('content')->item(0)->getAttribute('url');
                $name_img = basename($url);
                $url_img = copy($url, $_SERVER['DOCUMENT_ROOT'].'/image/bloges_img_tmp/'.$name_img);

                if ($url_img === true) {
                    $url = '/image/bloges_img_tmp/'.$name_img;
                }

                $result_arr[] = array(
                    'title' => $node->getElementsByTagName('title')->item(0)->nodeValue,
                    'link' => $node->getElementsByTagName('link')->item(0)->nodeValue,
                    'date_m' => date('M', strtotime($node->getElementsByTagName('pubDate')->item(0)->nodeValue)),
                    'date_d' => date('d', strtotime($node->getElementsByTagName('pubDate')->item(0)->nodeValue)),
                    'desk' => text::limit_chars(strip_tags($node->getElementsByTagName('encoded')->item(0)->nodeValue), 160 , null, true),
                    'img' => $url
                );
                //dd($node->getElementsByTagName('content')->item(0)->getAttribute('url'));
                //dd($this->model_tool_image->resize($node->getElementsByTagName('content')->item(0)->getAttribute('url'), 285, 173));
            }

            $this->cache->set('bloges', $result_arr);

        } else {
            $result_arr = $this->cache->get('bloges');
        }

       // dd($result_arr, true);
        //dd(phpinfo(), true);

        return $result_arr;

    }

}