<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>Аутентификация через Facebook</title>
</head>
<body>

<?php

//require_once('system/helper/Facebook/autoload.php');

$client_id = '1053763684686634'; // Client ID
$client_secret = 'a6a5bc19403de4e0ed6724027057b8c9'; // Client secret
$redirect_uri = 'http://canary.webremote.net/f.php'; // Redirect URIs



//
$fb = new Facebook\Facebook([
    'app_id' => '1053763684686634', // Replace {app-id} with your app id
    'app_secret' => 'a6a5bc19403de4e0ed6724027057b8c9',
    'default_graph_version' => 'v2.5'
]);




//try {
//    $accessToken = $helper->getAccessToken();
//} catch(Facebook\Exceptions\FacebookResponseException $e) {
//    // When Graph returns an error
//    echo 'Graph returned an error: ' . $e->getMessage();
//    exit;
//} catch(Facebook\Exceptions\FacebookSDKException $e) {
//    // When validation fails or other local issues
//    echo 'Facebook SDK returned an error: ' . $e->getMessage();
//    exit;
//}
//
//if (! isset($accessToken)) {
//    if ($helper->getError()) {
//        header('HTTP/1.0 401 Unauthorized');
//        echo "Error: " . $helper->getError() . "\n";
//        echo "Error Code: " . $helper->getErrorCode() . "\n";
//        echo "Error Reason: " . $helper->getErrorReason() . "\n";
//        echo "Error Description: " . $helper->getErrorDescription() . "\n";
//    } else {
//        header('HTTP/1.0 400 Bad Request');
//        echo 'Bad request';
//    }
//    exit;
//}
//
//// Logged in
//echo '<h3>Access Token</h3>';
//var_dump($accessToken->getValue());
//
//// The OAuth 2.0 client handler helps us manage access tokens
//$oAuth2Client = $fb->getOAuth2Client();
//
//// Get the access token metadata from /debug_token
//$tokenMetadata = $oAuth2Client->debugToken($accessToken);
//echo '<h3>Metadata</h3>';
//var_dump($tokenMetadata);
//
//// Validation (these will throw FacebookSDKException's when they fail)
//$tokenMetadata->validateAppId($client_id); // Replace {app-id} with your app id
//// If you know the user ID this access token belongs to, you can validate it here
////$tokenMetadata->validateUserId('123');
//$tokenMetadata->validateExpiration();
//
//if (! $accessToken->isLongLived()) {
//    // Exchanges a short-lived access token for a long-lived one
//    try {
//        $accessToken = $oAuth2Client->getLongLivedAccessToken($accessToken);
//    } catch (Facebook\Exceptions\FacebookSDKException $e) {
//        echo "<p>Error getting long-lived access token: " . $helper->getMessage() . "</p>\n\n";
//        exit;
//    }
//
//    echo '<h3>Long-lived</h3>';
//    var_dump($accessToken->getValue());
//}
//
//$_SESSION['fb_access_token'] = (string) $accessToken;


?>

</body>
</html>