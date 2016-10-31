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
    $http = 'http';
    if (!empty($_SERVER['HTTPS'])) {
        $http = 'https';
    }

    $str_link = $http.'://' . $_SERVER['HTTP_HOST'];
    if ($link != null) {
        $str_link = $http.'://' . $_SERVER['HTTP_HOST'] . $link;
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





 function imageDiamont ($shapes) {

     if ($shapes == 'Round') {
        return '/image/catalog/shapes/round.png';
     } elseif ($shapes == 'Pear') {
         return '/image/catalog/shapes/pear.png';
     } elseif ($shapes == 'Princess') {
         return '/image/catalog/shapes/princess.png';
     } elseif ($shapes == 'Marquise') {
         return '/image/catalog/shapes/marquise.png';
     } elseif ($shapes == 'Oval') {
         return '/image/catalog/shapes/oval.png';
     } elseif ($shapes == 'Radiant') {
         return '/image/catalog/shapes/radiant.png';
     } elseif ($shapes == 'Emerald') {
         return '/image/catalog/shapes/emerald.png';
     } elseif ($shapes == 'Heart') {
         return '/image/catalog/shapes/heart.png';
     } elseif ($shapes == 'Cushion Modified') {
         return '/image/catalog/shapes/cushion.png';
     } elseif ($shapes == 'Cushion') {
         return '/image/catalog/shapes/cushion.png';
     } elseif ($shapes == 'Asscher') {
         return '/image/catalog/shapes/asscher.png';
     }


 }


function imageDiamontIcon ($shapes) {

    if ($shapes == 'Round') {
        return '/catalog/view/theme/canary/img/diamant-1.png';
    } elseif ($shapes == 'Pear') {
        return '/catalog/view/theme/canary/img/diamant-8.png';
    } elseif ($shapes == 'Princess') {
        return '/catalog/view/theme/canary/img/diamant-2.png';
    } elseif ($shapes == 'Marquise') {
        return '/catalog/view/theme/canary/img/diamant-5.png';
    } elseif ($shapes == 'Oval') {
        return '/catalog/view/theme/canary/img/diamant-6.png';
    } elseif ($shapes == 'Radiant') {
        return '/catalog/view/theme/canary/img/diamant-7.png';
    } elseif ($shapes == 'Emerald') {
        return '/catalog/view/theme/canary/img/diamant-10.png';
    } elseif ($shapes == 'Heart') {
        return '/catalog/view/theme/canary/img/diamant-9.png';
    } elseif ($shapes == 'Cushion Modified') {
        return '/catalog/view/theme/canary/img/diamant-4.png';
    } elseif ($shapes == 'Cushion') {
        return '/catalog/view/theme/canary/img/diamant-4.png';
    } elseif ($shapes == 'Asscher') {
        return '/catalog/view/theme/canary/img/diamant-3.png';
    }


}


function rating($id) {
    $rend = '';
    for ($i = 1; $i <= 5; $i++) {
        if ($id < $i) {
            $rend .= '<i class="star"></i>';
        } else {

            $rend .= '<i class="star active"></i>';
        }
    }
    return $rend;
}


function list_metal ($value = null) {

    $arr = array(
        'white_gold_14' => '14K White Gold',
        'yellow_gold_14' => '14K Yellow Gold',
        'rose_gold_14' => '14K Rose Gold',
        'white_gold_18' => '18K White Gold',
        'yellow_gold_18' => '18K Yellow Gold',
        'rose_gold_18' => '18K Rose Gold',
        'platinum' => 'Platinum',
        'palladium' => 'Palladium',
        'two_tone_14' => '14K Two Tone',
        'two_tone_18' => '18K Two Tone',
        'gemstones' => 'GEMSTONES'
    );

    if ($value !== null) {
        if (!empty($arr[$value])) {
            return $arr[$value];
        } else {
            return '';
        }

    } else {
        return $arr;
    }
}



function arr_filtr_stone_type ($value = null) {

    $arr = array(
        1 => 'Sapphire',
        2 => 'Ruby',
        3 => 'Emerald',
        4 => 'Yellow Sapphire',
        5 => 'Pink Sapphire',
        6 => 'Green Sapphire',
        7 => 'Lavender Sapphire',
        8 => 'Padparacha Sapphire',
        9 => 'Orange Sapphire',
        10 => 'Aquamarine',
        11 => 'Paraiba Tourmaline',
        12 => 'Tanzanite'
    );

    if ($value !== null) {
        if (!empty($arr[$value])) {
            return $arr[$value];
        } else {
            return '';
        }

    } else {
        return $arr;
    }
}



function arr_filtr_shape ($value = null) {

    $arr = array(
        1 => array('Cabochon', 'brilliant-ico2 brilliant-s6'),
        2 => array('Cushion Cut', 'brilliant-ico2 brilliant-s4'),
        3 => array('Emerald Cut', 'brilliant-ico2 brilliant-s10'),
        4 => array('Fancy Cut','brilliant-ico2 brilliant-s7'),
        5 => array('Heart Shape','brilliant-ico2 brilliant-s9'),
        6 => array('Marquise','brilliant-ico2 brilliant-s5'),
        7 => array('Mixed Cut','brilliant-ico2 brilliant-s7'),
        8 => array('Oval Cut','brilliant-ico2 brilliant-s6'),
        9 => array('Princess Cut','brilliant-ico2 brilliant-s2'),
        10 => array('Pear Shape','brilliant-ico2 brilliant-s8'),
        11 => array('Radiant Cut','brilliant-ico2 brilliant-s7'),
        12 => array('Round Cut','brilliant-ico2 brilliant-s1'),
        13 => array('Square Cut','brilliant-ico2 brilliant-s2')
    );

    if ($value !== null) {
        if (!empty($arr[$value])) {
            return $arr[$value];
        } else {
            return '';
        }

    } else {
        return $arr;
    }

}

function arr_primary_color ($value = null) {

    $arr = array(
        1 => array('Blue Green', '#3bb3c2'),
        2 => array('Blue', '#0093dd'),
        3 => array('Green', '#66b82e'),
        4 => array('Greenish Blue', '#3CB371'),
        5 => array('Lavender', '#32CD32'),
        6 => array('Light Blue', '#87CEEB'),
        7 => array('Orange', '#FFA500'),
        8 => array('Pink', '#e97695'),
        9 => array('Purple', '#800080'),
        10 => array('Red', '#da251d'),
        11 => array('White', '#F0FFF0'),
        12 => array('Yellow', '#FFFF33')
    );

    if ($value !== null) {
        if (!empty($arr[$value])) {
            return $arr[$value];
        } else {
            return '';
        }

    } else {
        return $arr;
    }

}


//генерация случайного вывода банеров
function get_baners_top_random () {

    $arr = array(
        '/image/baners-top/baner1.jpg',
        '/image/baners-top/baner2.jpg',
        '/image/baners-top/baner3.jpg',
        '/image/baners-top/baner4.jpg',
        '/image/baners-top/baner5.jpg'
    );
    $key = array_rand($arr, 1);

    return $arr[$key];
}



