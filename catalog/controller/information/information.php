<?php
class ControllerInformationInformation extends Controller {

    private $data;

	public function index() {
		$this->load->language('information/information');

		$this->load->model('catalog/information');

		$this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}
        //dd($information_id);
        //dd($information_id);
		if($this->getInformrendering($information_id) === false) {

            $this->data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('information/information', 'information_id=' . $information_id)
			);

            $this->document->setTitle($this->language->get('text_error'));

            $this->data['heading_title'] = $this->language->get('text_error');

            $this->data['text_error'] = $this->language->get('text_error');

            $this->data['button_continue'] = $this->language->get('button_continue');

            $this->data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');


            $this->data['column_left'] = $this->load->controller('common/column_left');
            $this->data['column_right'] = $this->load->controller('common/column_right');
            $this->data['content_top'] = $this->load->controller('common/content_top');
            $this->data['content_bottom'] = $this->load->controller('common/content_bottom');
            $this->data['footer'] = $this->load->controller('common/footer');
            $this->data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/error/not_found.tpl', $this->data));
			} else {
				$this->response->setOutput($this->load->view('default/template/error/not_found.tpl', $this->data));
			}
		}
	}

	public function agree() {
		$this->load->model('catalog/information');

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$output = '';

		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info) {
			$output .= html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8') . "\n";
		}

		$this->response->setOutput($output);
	}

    public function privacyPolicy () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $this->getInformrendering(3);
	}


    public function DeliveryPolicy (){
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $this->getInformrendering(6);
	}

    public function ReturnPolicy (){
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $this->getInformrendering(27);
	}

    public function TermsConditions () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(5);

    }

    public function CookiePolicy (){
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(14);
    }

    public function Quality () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(28);
    }

    public function MilitaryDiscount () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(26);
    }

    public function HelpingOthers () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(16);
    }

    public function ConflictFreeDiamonds () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(29);
    }

    public function FreeAndInsuredShipping () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(21);
    }

    public function CertifiedGemologistAppraisals () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(30);
    }

    public function PriceMatchGuarantee () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(31);
    }

    public function LifetimeWarranty () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(32);
    }

    public function FreeRingResizing () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(33);
    }

    public function FreeEngraving () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(11);
    }

    public function MadeInUSA () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(34);
    }

    public function WhyPickBrilliantCanary () {
        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $this->getInformrendering(35);
    }

    private function getInformrendering($information_id) {


        $information_info = $this->model_catalog_information->getInformation($information_id);

        if ($information_info) {
            $this->document->setTitle($information_info['meta_title']);
            $this->document->setDescription($information_info['meta_description']);
            $this->document->setKeywords($information_info['meta_keyword']);

            $this->data['breadcrumbs'][] = array(
                'text' => $information_info['title'],
                //'href' => $this->url->link('information/information', 'information_id=' .  $information_id)
            );

            $this->data['action'] = $this->url->link('information/contact', '', 'SSL');

            $this->data['heading_title'] = $information_info['title'];

            $this->data['button_continue'] = $this->language->get('button_continue');

            $this->data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');

            $this->data['continue'] = $this->url->link('common/home');

            $this->data['column_left'] = $this->load->controller('common/column_left');
            $this->data['column_right'] = $this->load->controller('common/column_right');
            $this->data['content_top'] = $this->load->controller('common/content_top');
            $this->data['content_bottom'] = $this->load->controller('common/content_bottom');


            $this->data['information_meny'] = $this->load->view($this->config->get('config_template') . '/template/information/information_meny.tpl', array('bloges' => array_slice($this->load->controller('module/bloges/getBloges'),0,2)));


            if (!in_ajax()) {
                $this->data['footer'] = $this->load->controller('common/footer');
                $this->data['header'] = $this->load->controller('common/header');
            }

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/information.tpl')) {
                $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/information.tpl', $this->data));
            } else {
                $this->response->setOutput($this->load->view('default/template/information/information.tpl', $this->data));
            }

        } else {
            return false;
        }
	}
}