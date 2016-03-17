<?php
class ControllerModuleRapnet extends Controller {

    private $color_arr;
    private $shapes_arr;
    private $clarity_arr;
    private $cut_arr;
    private $polish_arr;
    private $symmetry_arr;
    private $labs_all;
    private $fluorescence_intensities_arr;
    private $url_paginate;


    function __construct($registry) {
        parent::__construct($registry);

        $this->shapes_arr = array(
            'Round', 'Pear', 'Princess', 'Marquise', 'Oval', 'Radiant', 'Emerald', 'Heart', 'Cushion', 'Asscher'
        );

        $this->color_arr = array(
            'K','J','I','H','G','F','E','D'
        );

        $this->clarity_arr = array(
            'SI3','SI2','SI1','VS2','VS1','VVS2','VVS1','IF'
        );

        $this->cut_arr = array(
            'Fair','Good','Very Good','Excellent'
        );

        $this->polish_arr = array(
            'Fair','Good','Very Good','Excellent'
        );

        $this->symmetry_arr = array(
            'Fair','Good','Very Good','Excellent'
        );

        $this->labs_all = array(
            'GIA','IGI','AGS','HRD','EGL_USA', 'NONE'
        );

        $this->fluorescence_intensities_arr = array(
            "Very Slight", "Faint", "Medium", "Slight", "Strong", "Very Strong","None"
        );

        //sort
        $this->show = 15;
    }

	public function index($setting) {
        $data = array();

       // dd($this->request->get);

        if (!empty($this->request->get['_route_'])) {
            $data['seo'] = '?';
        } else {
            $data['seo'] = '';
        }

        $data['action'] = str_replace('&amp;', '&', $this->url->link('product/category', 'path=' . $this->request->get['path']));

        $decod_json = json_decode($this->parse());

        if ($decod_json->response->header->error_code == 0) {


            $data_diamonds = $decod_json->response->body->diamonds;

            if (!empty($data_diamonds)) {
                $result['data'] = array_chunk($data_diamonds, 4);
            } else {
                $result['data'] = array();
            }


            if (isset($this->request->get['page'])) {
                $page = $this->request->get['page'];
            } else {
                $page = 1;
            }


            $pagination = new Pagination();
            $pagination->total = $decod_json->response->body->search_results->total_diamonds_found;
            $pagination->page = $page;
            $pagination->limit = $decod_json->response->body->search_results->diamonds_returned;
            $pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $this->url_paginate . '&page={page}');


            $result['pagination'] = $pagination->render();

        } elseif ($decod_json->response->header->error_code == 4001) {
            $result['data_error'] = $decod_json->response->header->error_message;
        }

        $data['data'] = $this->load->view($this->config->get('config_template') . '/template/module/rapnet_show.tpl', $result);



        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/rapnet.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/rapnet.tpl', $data);
        } else {
            return $this->load->view(dd($data));
        }


	}


     public function getjson () {

         if (in_ajax()) {
             //dd($this->request->get);
             //$json['action'] = str_replace('&amp;', '&', $this->url->link('product/category', 'path=' . $this->request->get['path']));

             $json = $this->parse();

             $decod_json = json_decode($json);

             if ($decod_json->response->header->error_code == 0) {

                 $data_diamonds = $decod_json->response->body->diamonds;


                 if (isset($this->request->get['page'])) {
                     $page = $this->request->get['page'];
                 } else {
                     $page = 1;
                 }


                 $pagination = new Pagination();
                 $pagination->total = $decod_json->response->body->search_results->total_diamonds_found;
                 $pagination->page = $page;
                 $pagination->limit = $decod_json->response->body->search_results->diamonds_returned;
                 $pagination->url = $this->url->link('product/category', $this->url_paginate . '&page={page}');


                 $data['pagination'] = $pagination->render();

                 $data['data'] = array_chunk($data_diamonds, 4);

             } elseif ($decod_json->response->header->error_code == 4001) {
                 $data['data_error'] = $decod_json->response->header->error_message;
             }
             //$this->response->addHeader('Content-Type: application/json');
             $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/module/rapnet_show.tpl', $data));
         }
    }



    private function parse () {


        if (!empty($this->request->get['shape'])) {
            $shape = array($this->request->get['shape']);
            $this->url_paginate .= '&shape='.$this->request->get['shape'];
        } else {
            $shape = $this->shapes_arr;
        }
        
        
        if (!empty($this->request->get['color'])) {
            $this->url_paginate .= '&color='.$this->request->get['color'];
            $color_ex = explode(',', $this->request->get['color']);
            $color_from = $this->color_arr[$color_ex[0]];
            $color_to = $this->color_arr[$color_ex[1]-1];
        } else {
            $color_from = $this->color_arr[0];
            $color_to = $this->color_arr[7];
        }


        if (!empty($this->request->get['clarity'])) {
            $this->url_paginate .= '&clarity='.$this->request->get['clarity'];
            $clarity_ex = explode(',', $this->request->get['clarity']);
            $clarity_from = $this->clarity_arr[$clarity_ex[0]];
            $clarity_to = $this->clarity_arr[$clarity_ex[1]-1];
        } else {
            $clarity_from = $this->clarity_arr[0];
            $clarity_to = $this->clarity_arr[7];
        }

        if (!empty($this->request->get['cut'])) {
            $this->url_paginate .= '&cut='.$this->request->get['cut'];
            $cut_ex = explode(',', $this->request->get['cut']);
            $cut_from = $this->cut_arr[$cut_ex[0]];
            $cut_to = $this->cut_arr[$cut_ex[1]-1];
        } else {
            $cut_from = $this->cut_arr[0];
            $cut_to = $this->cut_arr[3];
        }

        if (!empty($this->request->get['carat'])) {
            $this->url_paginate .= '&carat='.$this->request->get['carat'];
            $carat_ex = explode(',', $this->request->get['carat']);
            $carat_from = $carat_ex[0];
            $carat_to = $carat_ex[1];
        } else {
            $carat_from = 0.5;
            $carat_to = 15;
        }

        if (!empty($this->request->get['price'])) {
            $this->url_paginate .= '&price='.$this->request->get['price'];
            $price_ex = explode(',', $this->request->get['price']);
            $price_from = $price_ex[0];
            $price_to = $price_ex[1];
        } else {
            $price_from = 200;
            $price_to = 999000;
        }



        //advensend

        if (!empty($this->request->get['polish'])) {
            $this->url_paginate .= '&polish='.$this->request->get['polish'];
            $polish_ex = explode(',', $this->request->get['polish']);
            $polish_from = $this->polish_arr[$polish_ex[0]];
            $polish_to = $this->polish_arr[$polish_ex[1]-1];
        } else {
            $polish_from = $this->polish_arr[0];
            $polish_to = $this->polish_arr[3];
        }

        if (!empty($this->request->get['symmetry'])) {
            $this->url_paginate .= '&symmetry='.$this->request->get['symmetry'];
            $symmetry_ex = explode(',', $this->request->get['symmetry']);
            $symmetry_from = $this->symmetry_arr[$symmetry_ex[0]];
            $symmetry_to = $this->symmetry_arr[$symmetry_ex[1]-1];
        } else {
            $symmetry_from = $this->symmetry_arr[0];
            $symmetry_to = $this->symmetry_arr[3];
        }


        if (!empty($this->request->get['labs'])) {
            $this->url_paginate .= '&labs='.$this->request->get['labs'];
            $labs_ex = explode(',', $this->request->get['labs']);
            $labs_arr = $labs_ex;
        } else {
            $labs_arr = $this->labs_all;
        }


        if (!empty($this->request->get['depth'])) {
            $this->url_paginate .= '&depth='.$this->request->get['depth'];
            $depth_ex = explode(',', $this->request->get['depth']);
            $depth_from = $depth_ex[0];
            $depth_to = $depth_ex[1];
        } else {
            $depth_from = 45;
            $depth_to = 80;
        }


        if (!empty($this->request->get['table'])) {
            $this->url_paginate .= '&table='.$this->request->get['table'];
            $table_ex = explode(',', $this->request->get['table']);
            $table_from = $table_ex[0];
            $table_to = $table_ex[1];
        } else {
            $table_from = 50;
            $table_to = 83;
        }


        if (!empty($this->request->get['fluorescence_intensities'])) {
            $this->url_paginate .= '&fluorescence_intensities='.$this->request->get['fluorescence_intensities'];
            $fluorescence_intensities_ex = explode(',', $this->request->get['fluorescence_intensities']);
            $fluorescence_intensities_arr = $fluorescence_intensities_ex;
        } else {
            $fluorescence_intensities_arr = $this->fluorescence_intensities_arr;
        }


        //sort
        if (!empty($this->request->get['show'])) {
            $this->url_paginate .= '&show='.$this->request->get['show'];
            $show = $this->request->get['show'];
        } else {
            $show = $this->show;
        }


        if (!empty($this->request->get['sortby'])) {
            $this->url_paginate .= '&sortby='.$this->request->get['sortby'];
            $sortby_ex = explode('_', $this->request->get['sortby']);
            //dd($sortby_ex);
            $sort_by = $sortby_ex[0];
            $sort_direction = $sortby_ex[1];
        } else {
            $sort_by = 'Price';
            $sort_direction = 'Asc';
        }




        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }


        $data = array('request' => array('header' => array('username' => $this->config->get('rapnet_name'), 'password' => $this->config->get('rapnet_pass')),
            'body' => array(
//             'search_type' => 'White',
             'shapes' => $shape,
            'size_from' => $carat_from,
            'size_to' => $carat_to,
            'color_from' => $color_from,
            'color_to' => $color_to,
//             'fancy_colors' => array('Yellow', 'Pink', 'Orange', 'Green', 'Gray', 'Brown', 'Blue'),
//            'fancy_color_intensity_from' => 'Fancy Dark',
//            'fancy_color_intensity_to' => 'Light',
            'fluorescence_intensities' => $fluorescence_intensities_arr,
            'clarity_from' => $clarity_from,
            'clarity_to' => $clarity_to,
            'cut_from' => $cut_from,
            'cut_to' => $cut_to,
            'polish_from' => $polish_from,
            'polish_to' => $polish_to,
            'symmetry_from' => $symmetry_from,
            'symmetry_to' => $symmetry_to,
            'price_total_from' => $price_from,
            'price_total_to' => $price_to,
            'labs' => $labs_arr,
            'depth_percent_from' => $depth_from,
            'depth_percent_to' => $depth_to,
            'table_percent_from' => $table_from,
            'table_percent_to' => $table_to,
            'page_number' =>  $page,
            'page_size' => $show,
            'sort_by' => $sort_by,
            'sort_direction' => $sort_direction)
        ));

        //d($data);

        $auth_url = "https://technet.rapaport.com/HTTP/JSON/RetailFeed/GetDiamonds.aspx";
        $request = curl_init($auth_url);
        curl_setopt($request, CURLOPT_HEADER, 0); // set to 0 to eliminate header info from response
        curl_setopt($request, CURLOPT_RETURNTRANSFER, 1); // Returns response data instead of TRUE(1)
        curl_setopt($request, CURLOPT_POSTFIELDS, json_encode($data)); // use HTTP POST to send form data
        curl_setopt($request, CURLOPT_SSL_VERIFYPEER, FALSE); // uncomment this line if you get no gateway res

        $response = curl_exec($request);


        return $response;

    }


    public function getproduct (){
        dd( $this->request->get);
    }



}