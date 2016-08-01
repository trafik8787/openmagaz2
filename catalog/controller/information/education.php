<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 20.04.2016
 * Time: 1:18
 */

class ControllerInformationEducation extends Controller {

    public function index() {

        $fb = new Facebook\Facebook([
            'app_id' => '1053763684686634', // Replace {app-id} with your app id
            'app_secret' => 'a6a5bc19403de4e0ed6724027057b8c9',
            'default_graph_version' => 'v2.5'
        ]);

        $helper = $fb->getRedirectLoginHelper();

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
//
//        if (! isset($accessToken)) {
//            if ($helper->getError()) {
//                header('HTTP/1.0 401 Unauthorized');
//                echo "Error: " . $helper->getError() . "\n";
//                echo "Error Code: " . $helper->getErrorCode() . "\n";
//                echo "Error Reason: " . $helper->getErrorReason() . "\n";
//                echo "Error Description: " . $helper->getErrorDescription() . "\n";
//            } else {
//                header('HTTP/1.0 400 Bad Request');
//                echo 'Bad request';
//            }
//            exit;
//        }
//
//        // Logged in
//        echo '<h3>Access Token</h3>';
//        dd($accessToken->getValue());
//
//        // The OAuth 2.0 client handler helps us manage access tokens
//        $oAuth2Client = $fb->getOAuth2Client();
//
//        // Get the access token metadata from /debug_token
//        $tokenMetadata = $oAuth2Client->debugToken($accessToken);
//        echo '<h3>Metadata</h3>';
//        dd($tokenMetadata);
//
//
//
//
//        // Validation (these will throw FacebookSDKException's when they fail)
//        $tokenMetadata->validateAppId('1053763684686634'); // Replace {app-id} with your app id
//        // If you know the user ID this access token belongs to, you can validate it here
//        //$tokenMetadata->validateUserId('123');
//        $tokenMetadata->validateExpiration();
//
//        if (! $accessToken->isLongLived()) {
//            // Exchanges a short-lived access token for a long-lived one
//            try {
//                $accessToken = $oAuth2Client->getLongLivedAccessToken($accessToken);
//            } catch (Facebook\Exceptions\FacebookSDKException $e) {
//                echo "<p>Error getting long-lived access token: " . $helper->getMessage() . "</p>\n\n";
//                exit;
//            }
//
//            echo '<h3>Long-lived</h3>';
//            dd($accessToken->getValue());
//        }

        try {
            // Returns a `Facebook\FacebookResponse` object
            $response = $fb->get('/me?fields=id,name,first_name,last_name,email,gender,location', $accessToken);
        } catch(Facebook\Exceptions\FacebookResponseException $e) {
            echo 'Graph returned an error: ' . $e->getMessage();
            exit;
        } catch(Facebook\Exceptions\FacebookSDKException $e) {
            echo 'Facebook SDK returned an error: ' . $e->getMessage();
            exit;
        }

        $user = $response->getGraphUser()->asArray();
        dd($user);


        $_SESSION['fb_access_token'] = (string) $accessToken;







        $data = array();
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => '/'
        );
        $data['breadcrumbs'][] = array(
            'text' => 'Education',
            'href' => $this->url->link('information/education')
        );

        $this->document->setTitle('education');
        $this->document->setDescription('education');
        $this->document->setKeywords('education');

        if (!in_ajax()) {
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');
        }


        $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/education.tpl', $data));
    }

    public function page_find (){
        $data = array();
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => '/'
        );
        $data['breadcrumbs'][] = array(
            'text' => 'Education',
            'href' => $this->url->link('information/education/education_find')
        );

        $this->document->setTitle('education');
        $this->document->setDescription('education');
        $this->document->setKeywords('education');
        if (!in_ajax()) {
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');
        }

        $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/education_find.tpl', $data));
    }

}