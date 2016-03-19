<?php
function token($length = 32) {
	// Create token to login with
	$string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
	
	$token = '';
	
	for ($i = 0; $i < $length; $i++) {
		$token .= $string[mt_rand(0, strlen($string) - 1)];
	}	
	
	return $token;
}

function dd($message, $die = false, $title = false, $access = true, $color = '#008B8B')
{

	?>
<table border="0" cellpadding="5" cellspacing="0" style="border:1px solid <?= $color ?>;margin:2px; text-align: left;">
	<tr>
		<td>
			<?

			if (strlen($title) > 0) {
				echo '<p style="color:' . $color . ';font-size:11px;font-family:Verdana;">[' . $title . ']</p>';
			}

			if (is_array($message) || is_object($message)) {
				echo '<pre style="color:' . $color . ';font-size:11px;font-family:Verdana;">';
				print_r($message);
				echo '</pre>';
			} else {
				echo '<p style="color:' . $color . ';font-size:11px;font-family:Verdana;">' . var_dump($message) . '</p>';
			}
			echo '</td></tr><tr><td>';
			echo '<div style="font-family:verdana; font-size: 10px; font-weight: normal">';
			$a = debug_backtrace();
			$a = $a[0];
			echo "{$a['file']}: {$a['line']}";
			echo '</div>';
			if ($die === true) {
				die();
			}
			?></td>
	</tr></table><?
}


function in_ajax () {
	if (isset($_SERVER['HTTP_X_REQUESTED_WITH']) && !empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
		return true;
	} else {
		return false;
	}
}


function HostSite ($link = null)
{
    $str_link = 'http://' . $_SERVER['HTTP_HOST'];
    if ($link != null) {
        $str_link = 'http://' . $_SERVER['HTTP_HOST'] . $link;
    }

    return $str_link;
}

function RecuestUri () {
    return 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
}


function rapnet2() {
    //1 - Authenticate with TechNet. The authentication ticket will be stored in $auth_ticket. Note this MUST be HTTPS.
    $auth_url = "https://technet.rapaport.com/HTTP/Authenticate.aspx";
    $post_string = "username=zn7icxaklugys4qryk3dxkryf0irr1&password=" . urlencode("dXrmnFIx");

//create HTTP POST request with curl:
    $request = curl_init($auth_url); // initiate curl object
    curl_setopt($request, CURLOPT_HEADER, 0); // set to 0 to eliminate header info from response
    curl_setopt($request, CURLOPT_RETURNTRANSFER, 1); // Returns response data instead of TRUE(1)
    curl_setopt($request, CURLOPT_POSTFIELDS, $post_string); // use HTTP POST to send form data
    curl_setopt($request, CURLOPT_SSL_VERIFYPEER, FALSE); // uncomment this line if you get no gateway response.
    $auth_ticket = curl_exec($request); // execute curl post and store results in $auth_ticket
    curl_close ($request);


//2 - prepare HTTP request for data.

    $feed_url = "http://technet.rapaport.com/HTTP/DLS/GetFile.aspx";
    $feed_url .= "?ticket=".$auth_ticket; //add authentication ticket:


//prepare to save response as file.
    $fp = fopen($_SERVER['DOCUMENT_ROOT'].'/image/rapnetfeed.csv', 'wb');
    if ($fp == FALSE)
    {
        echo "File not opened";
        exit;
    }

//create HTTP GET request with curl
    $request = curl_init($feed_url); // initiate curl object
    curl_setopt($request, CURLOPT_FILE, $fp); //Ask cURL to write the contents to a file
    curl_setopt($request, CURLOPT_HEADER, 0); // set to 0 to eliminate header info from response
    curl_setopt($request, CURLOPT_TIMEOUT, 300); //set timeout to 5 mins
    curl_exec($request); // execute curl post
// additional options may be required depending upon your server configuration
// you can find documentation on curl options at http://www.php.net/curl_setopt
    curl_close ($request); // close curl object
    fclose($fp); //close file;
}


function rapnet () {
//    $client = new SoapClient("https://technet.rapaport.com/webservices/prices/rapaportprices.asmx?wsdl", array('trace' => 1));
//
//    $params = array('Username'=>'zn7icxaklugys4qryk3dxkryf0irr1', 'Password'=>'dXrmnFIx');
//    $client->Login($params);
//    $auth_ticket = $client->__getLastResponse();
//    $ticket_xml = simplexml_load_string($auth_ticket);
//
//    $ticket_xml->registerXPathNamespace('technet', "http://technet.rapaport.com/");
//    $ticket = $ticket_xml->xpath('//technet:Ticket');
//    $ticket_hash = (string)$ticket[0];
//
//    dd(getPrice($ticket_hash, $client));





    $client = new SoapClient("https://technet.rapaport.com/WebServices/RetailFeed/Feed.asmx?WSDL",
        array( "trace" => 1, "exceptions" => 0, "cache_wsdl" => 0) );

    $params = array('Username'=>'zn7icxaklugys4qryk3dxkryf0irr1', 'Password'=>'dXrmnFIx');
    $client->__soapCall("Login", array($params), NULL, NULL, $output_headers);
    $ticket = $output_headers["AuthenticationTicketHeader"]->Ticket;


    $client1 = new SoapClient("https://technet.rapaport.com/WebServices/RetailFeed/Feed.asmx?WSDL", array( "trace" => 1, "exceptions" => 0, "cache_wsdl" => 0) );

    $ns = "http://technet.rapaport.com/";
    $headerBody = array("Ticket" => $ticket);
    $header = new SoapHeader($ns, 'AuthenticationTicketHeader', $headerBody);
    $client1->__setSoapHeaders($header);


    $searchParams = array(
        "ShapeCollection" => array("ROUND"),
        "LabCollection" => array("GIA"),
        "ColorFrom" => "D",
        "ColorTo" => "J",
        "ClarityFrom" => "IF",
        "ClarityTo" => "I1",
        "SizeFrom" => "0.3",
        "SizeTo" => "1.5",
        "CutFrom" => "EXCELLENT",
        "CutTo" => "GOOD",
        "GirdleSizeMin" => "EXTR_THICK",
        "GirdleSizeMax" => "SLIGHTLY_THICK",
        "TablePercentFrom" => "48.2",
        "TablePercentTo" => "73.4",
        "DepthPercentFrom" => "33.86",
        "DepthPercentTo" => "73.8",
        "MeasLengthFrom" => "3.7",
        "MeasLengthTo" => "6.4",
        "MeasWidthFrom" => "2.8",
        "MeasWidthTo" => "7.9",
        "MeasDepthFrom" => "2.7",
        "MeasDepthTo" =>"3.86",
        "PriceFrom" => "1",
        "PriceTo" => "999999",
        "PageNumber" => 1,
        "PageSize" => 25,
        "SortDirection" => "ASC",
        "SortBy" => "PRICE"
    );


    $params1 = array("SearchParams" => $searchParams, "DiamondsFound" => 0);

    $results = $client1->__soapCall("GetDiamonds", array($params1), NULL, NULL, $output_headers);

    dd($results);

}


function rapnet3 (){


    $data = array('request' => array('header' => array('username' => 'j9b27z4rgb7rlkrcrd9lv8lhvcfdwe', 'password' => 'OTnJOdA0'),
        'body' => array(
//            'diamond_id' => 68317143)
//             'search_type' => 'White',
//             'shapes' => array('round','Princess','pear'),
//            'size_from' => 0.2,
//            'size_to' => 15.3,
//            'color_from' => 'D',
//            'color_to' => 'K',
//             'fancy_colors' => array('Yellow', 'Pink', 'Orange', 'Green', 'Gray', 'Brown', 'Blue'),
//            'fancy_color_intensity_from' => 'Fancy Dark',
//            'fancy_color_intensity_to' => 'Light',
//            'clarity_from' => 'IF',
//            'clarity_to' => 'VS2',
//            'cut_from' => 'Excellent',
//            'cut_to' => 'Fair',
//            'polish_from' => 'Excellent',
//            'polish_to' => 'Fair',
//            'symmetry_from' => 'Excellent',
//            'symmetry_to' => 'Fair',
//            'price_total_from' => 100,
//            'price_total_to' => 1500000,
//            'labs' => array('GIA','IGI'),
//            'table_percent_from' => 26.0,
//            'table_percent_to' => 66.0,
            'page_number' => 2,
            'page_size' => 15,
            'sort_by' => 'price',
            'sort_direction' => 'Asc')
    ));



    $auth_url = "https://technet.rapaport.com/HTTP/JSON/RetailFeed/GetDiamonds.aspx";
    $request = curl_init($auth_url);
    curl_setopt($request, CURLOPT_HEADER, 0); // set to 0 to eliminate header info from response
    curl_setopt($request, CURLOPT_RETURNTRANSFER, 1); // Returns response data instead of TRUE(1)
    curl_setopt($request, CURLOPT_POSTFIELDS, json_encode($data)); // use HTTP POST to send form data
    curl_setopt($request, CURLOPT_SSL_VERIFYPEER, FALSE); // uncomment this line if you get no gateway res

    $response = curl_exec($request);


    $response = json_decode($response);
    dd($response);


}


function setDiamondParams($shape, $size, $color, $clarity)
{
    // If shape isn't Round set to Pear
    $shape = ($shape != 'Round' ? 'Pear' : 'Round');
    // FL doesn't exist, set to IF, or leave the same
    $clarity = ($clarity == 'FL' ? 'IF' : $clarity);
    // Set N or FANCY to M color
    if ($color == "N" || $color == "FANCY") {
        $color = "M";
    }
    // Anything larger than 9.99 is calculated as 10
    $size = ($size > 9.99 ? 10 : $size);

    // Anything between 6 and 9.99 is priced at 5.01
    if (($size > 5.99) && ($size < 10)) {
        $size = 5.01;
    }
    // If Pear shaped and less than .18 carat, set to .18
    if ($shape == "Pear" && $size < 0.18) {
        $size = 0.18;
    }

    return array('shape' => $shape, 'size' => $size, 'color' => $color, 'clarity' => $clarity);
}


 function getPrice($ticket_hash, $client) {



     $header = new SOAPHeader(
         "http://technet.rapaport.com/", 'AuthenticationTicketHeader', ['Ticket' => $ticket_hash]
     );
     $client->__setSoapHeaders($header);



     $client->GetPrice(setDiamondParams('Round', 6, 'H', 'VS2'));


     $price_result = $client->__getLastResponse();
     $price_xml = simplexml_load_string($price_result);
     $price_xml->registerXPathNamespace('technet', "http://technet.rapaport.com/");
     $price_array = $price_xml->xpath('//technet:GetPriceResult');

     return $price_array;
 }



 function imageDiamont ($shapes) {

     if ($shapes == 'Round') {
        return '/image/catalog/shapes/round.jpg';
     } elseif ($shapes == 'Pear') {
         return '/image/catalog/shapes/pear.jpg';
     } elseif ($shapes == 'Princess') {
         return '/image/catalog/shapes/princess.jpg';
     } elseif ($shapes == 'Marquise') {
         return '/image/catalog/shapes/marquise.jpg';
     } elseif ($shapes == 'Oval') {
         return '/image/catalog/shapes/oval.jpg';
     } elseif ($shapes == 'Radiant') {
         return '/image/catalog/shapes/radiant.jpg';
     } elseif ($shapes == 'Emerald') {
         return '/image/catalog/shapes/emerald.jpg';
     } elseif ($shapes == 'Heart') {
         return '/image/catalog/shapes/heart.jpg';
     } elseif ($shapes == 'Cushion Modified') {
         return '/image/catalog/shapes/cushion.jpg';
     } elseif ($shapes == 'Asscher') {
         return '/image/catalog/shapes/asscher.jpg';
     }


 }