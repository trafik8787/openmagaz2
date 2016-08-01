<?php
class ControllerModuleLoginFacebook extends Controller {

    private $fb;

    function __construct($registry){
        parent::__construct($registry);

        $this->fb = new Facebook\Facebook([
            'app_id' => $this->config->get('login_facebook_apiid'), // Replace {app-id} with your app id
            'app_secret' => $this->config->get('login_facebook_secret'),
            'default_graph_version' => 'v2.5'
        ]);
    }


	public function index($setting) {

        //dd($this->request->server['HTTP_REFERER'], true);
        $helper = $this->fb->getRedirectLoginHelper();

        try {
            $accessToken = $helper->getAccessToken();
        } catch(Facebook\Exceptions\FacebookResponseException $e) {
            // When Graph returns an error
            echo 'Graph returned an error: ' . $e->getMessage();
            exit;
        } catch(Facebook\Exceptions\FacebookSDKException $e) {
            // When validation fails or other local issues
            echo 'Facebook SDK returned an error: ' . $e->getMessage();
            exit;
        }

        try {
            // Returns a `Facebook\FacebookResponse` object
            $response = $this->fb->get('/me?fields=id,name,first_name,last_name,email,gender,location', $accessToken);
        } catch(Facebook\Exceptions\FacebookResponseException $e) {
            echo 'Graph returned an error: ' . $e->getMessage();
            exit;
        } catch(Facebook\Exceptions\FacebookSDKException $e) {
            echo 'Facebook SDK returned an error: ' . $e->getMessage();
            exit;
        }

        $user = $response->getGraphUser()->asArray();

        if (!empty($user)) {

            $this->load->model('account/customer');
            $password = $this->get_password($user['id']);

            if ($this->customer->login($user['email'], $password)) {
//                $this->response->redirect($this->url->link('account/account', '', 'SSL'));
                $this->response->redirect($this->request->server['HTTP_REFERER']);
            }


            $email_query = $this->db->query("SELECT `email` FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . $this->db->escape(strtolower($user['email'])) . "'");


            if ($email_query->num_rows) {

                $this->model_account_customer->editPassword($user['email'], $password);
                if($this->customer->login($user['email'], $password)){
                    $this->response->redirect($this->request->server['HTTP_REFERER']);
                }

            } else {
                $config_customer_approval = $this->config->get('config_customer_approval');
                $this->config->set('config_customer_approval',0);

                $this->request->post['email'] = $user['email'];

                $add_data=array();
                $add_data['email'] = $user['email'];
                $add_data['password'] = $password;
                $add_data['firstname'] = isset($user['first_name']) ? $user['first_name'] : '';
                $add_data['lastname'] = isset($user['last_name']) ? $user['last_name'] : '';
                $add_data['fax'] = '';
                $add_data['telephone'] = '';
                $add_data['company'] = '';
                $add_data['address_1'] = '';
                $add_data['address_2'] = '';
                $add_data['city'] = '';
                $add_data['postcode'] = '';
                $add_data['country_id'] = 0;
                $add_data['zone_id'] = 0;

                $this->model_account_customer->addCustomer($add_data);

                $this->config->set('config_customer_approval', $config_customer_approval);

                if($this->customer->login($user['email'], $password)){

                    unset($this->session->data['guest']);
                    $this->response->redirect($this->url->link('account/success'));

                }

            }

            $this->response->redirect($this->request->server['HTTP_REFERER']);

        }
        //dd($user);


        $_SESSION['fb_access_token'] = (string) $accessToken;

	}

    public function renderButton () {

        $helper = $this->fb->getRedirectLoginHelper();

        $permissions = ['email']; // Optional permissions
        $loginUrl = $helper->getLoginUrl(HostSite('/loginfacebook'), $permissions);

        $data = array();
        $data['href'] = htmlspecialchars($loginUrl);

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/login_facebook_button.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/module/login_facebook_button.tpl', $data);
        } else {
            return $this->load->view(dd($data));
        }

    }


    private function get_password($str) {
        $password = $this->config->get('login_facebook_secret') ? $this->config->get('login_facebook_secret') : 'fb';
        $password.=substr($this->config->get('login_facebook_apiid'),0,3).substr($str,0,3).substr($this->config->get('login_facebook_apiid'),-3).substr($str,-3);
        return strtolower($password);
    }

}