<!doctype html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">


    <title><?php echo $title; ?></title>

    <base href="<?php echo $base; ?>"/>

    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>

    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>



    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="catalog/view/theme/canary/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="catalog/view/theme/canary/css/normalize.css"/>
    <link rel="stylesheet" href="catalog/view/theme/canary/vendor/jquery-ui/jquery-ui.min.css"/>
    <link rel="stylesheet" href="catalog/view/theme/canary/vendor/owl.carousel/owl.carousel.css"/>
    <link rel="stylesheet" href="catalog/view/theme/canary/vendor/jquery.sliderPro/slider-pro.min.css"/>
    <link rel="stylesheet" href="catalog/view/theme/canary/css/style.css"/>
    <link rel="stylesheet" href="catalog/view/theme/canary/css/w_style.css"/>

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="catalog/view/theme/canary/vendor/jquery-ui/jquery-ui.min.js"></script>

    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
</head>



<?//dd($categories)?>

<body>
<header>
    <div class="user-line index-page">
        <div class="center-bl clearfix">
            <a href="/" class="logo"><img src="catalog/view/theme/canary/img/logo.png" alt="logo"></a>
            <div class="telephone">
                <i class="ico-telephone"></i>
                <span><?php echo $telephone; ?> | 24/7</span>
            </div>
            <ul class="top-menu-b main-page">

                <li>
                    <?php if ($logged) { ?>
                        <a href="<?php echo $account; ?>">
                            <i class="man-ico"></i>
                            <span><?php echo $text_account; ?></span>
                        </a>
                    <?php } else { ?>

                        <a href="<?php echo $login; ?>">
                            <i class="man-ico"></i>
                            <span><?php echo $text_login; ?></span>
                        </a>
                    <?php } ?>
                </li>
                <li><a href="<?php echo $wishlist; ?>"><i class="heart-ico"></i><span><?php echo $text_wishlist; ?>     </span></a></li>
                <li class="cart-bl">
                    <a href="#"><i class="cart-ico"></i><span>cart ( 1 )</span></a>
                    <div class="cart-basket">
                        <button class="close-cart-main"></button>
                        <div class="product-box">
                            <div class="one-product clearfix">
                                <div class="box-img">
                                    <img src="catalog/view/theme/canary/img/img15.png" alt="img">
                                </div>
                                <div class="text-block">
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                    X1: <span class="red-text">$450.000</span>
                                </div>
                            </div>
                        </div>
                        <div class="wrapper-text">
                            <p>Sub-Total: $450.000</p>
                            <p>Total: $450.000</p>
                            <div class="box-btn clearfix">
                                <a href="#" class="red-btn pull-left"><i class="cart-white-ico"></i>view cart</a>
                                <a href="#" class="red-btn pull-right">checkout</a>
                            </div>
                        </div>
                    </div>
                </li>
                <!--<li class="triangle"><a href="#">currency usd</a></li>-->
            </ul>

            <?php echo $search; ?>

        </div>
    </div>
    <div class="center-bl">
        <div class="menu">
            <a href="/" class="logo"><img src="catalog/view/theme/canary/img/logo.png" alt="logo"></a>
            <ul>
                <li class="dropdown-b"><!--DIAMONDS-->
                    <a href="<?php echo $categories[0]['href']?>" class="w-general-category"><?php echo $categories[0]['name']?></a>
                    <div class="dropdown-inside">
                        <div class="title">search diamond gallery</div>
                        <ul class="brilliant-style">
                            <li>
                                <a href="/diamonds?&shape=Round"><i class="brilliant-ico2 brilliant-s1"></i><br/>Round Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Princess"><i class="brilliant-ico2 brilliant-s2"></i><br/>Princess Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Emerald"><i class="brilliant-ico2 brilliant-s3"></i><br/>Emerald Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Asscher"><i class="brilliant-ico2 brilliant-s4"></i><br/>Asscher Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Oval"><i class="brilliant-ico2 brilliant-s5"></i><br/>Oval Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Radiant"><i class="brilliant-ico2 brilliant-s6"></i><br/>Radiant Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Pear"><i class="brilliant-ico2 brilliant-s7"></i><br/>Pear Shaped</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Heart"><i class="brilliant-ico2 brilliant-s8"></i><br/>Heart Shaped</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Marquise"><i class="brilliant-ico2 brilliant-s9"></i><br/>Marquise Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Cushion"><i class="brilliant-ico2 brilliant-s10"></i><br/>Cushion Cut</a>
                            </li>
                        </ul>
                        <div class="row clearfix">
                            <div class="col-md-5 col-sm-5 col-xs-5">
                                <div class="title">desighn your own</div>
                                <ul class="style-br-long">
                                    <li>
                                        <a href="#"><span class="wrap-ico"><i class="own-b own-b-7"></i></span> <span>Diamond engagement rings</span></a>
                                    </li>
                                    <li>
                                        <a href="#"><span class="wrap-ico"><i class="own-b own-b-1"></i></span> <span>Diamond studs</span></a>
                                    </li>
                                    <li>
                                        <a href="#"><span class="wrap-ico"><i class="own-b own-b-4"></i></span> <span>Diamond pendant</span></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 text-right">
                                <img src="catalog/view/theme/canary/img/img14.png" alt="img" class="img-under-style">
                            </div>
                        </div>
                    </div>
                </li>
                <li class="dropdown-b"><!--engagement rings-->
                    <a href="<?php echo $categories[1]['href']?>" class="w-general-category"><?php echo $categories[1]['name']?></a>
                    <div class="dropdown-inside">
                        <div class="title">engagement setting rings</div>
                        <ul class="brilliant-style">
                            <?foreach ($categories[1]['children'] as $key => $row):?>
                                <li>
                                    <a href="<?php echo $row['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s<?=$key+1?>"></i><br/><?php echo $row['name']?></a>
                                </li>
                            <?endforeach?>

                        </ul>
                        <div class="row clearfix">
                            <div class="col-md-5 col-sm-5 col-xs-5">
                                <div class="title">designer  preset colections</div>
                                <ul class="style-br-long">
                                    <li>
                                        <a href="#"><i class="brilliant-ico brilliant-s7"></i> <span>Designer  preset colections</span></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="brilliant-ico brilliant-s7"></i> <span>Designer  preset colections</span></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 text-right">
                                <img src="catalog/view/theme/canary/img/img13.png" alt="img" class="img-under-style">
                            </div>
                        </div>
                        <div class="clearfix link-drop-menu">
                            <div class="pull-left">
                                <a href="#">START WITH A SETTING </a>
                                <a href="#">START WITH A DIAMOND</a>
                            </div>
                            <div class="pull-right">
                                <a href="#">inspiration gallery</a>
                            </div>

                        </div>
                    </div>
                </li>
                <li class="dropdown-b"><!--WEDDING RINGS-->
                    <a href="<?php echo $categories[2]['href']?>" class="w-general-category"><?php echo $categories[2]['name']?></a>
                    <div class="dropdown-inside">
                        <div class="row clearfix">
                            <div class="col-md-8 col-sm-8 col-xs-8">
                                <div class="title">WOMAN</div><!--woman-->
                                <ul class="brilliant-style brilliant-style-long ul-first-drop">

                                    <?php for ($x=0; $x<5; $x++) {?>
                                        <li>
                                            <a href="<?php echo $categories[2]['children'][$x]['href']?>" class="w-general-category"><i class="wedding<?=$x+1?>"></i><br/><?php echo $categories[2]['children'][$x]['name']?></a>
                                        </li>
                                    <?}?>

                                </ul>
                                <div class="title">MAN</div><!--man-->
                                <ul class="brilliant-style brilliant-style-long ul-first-drop">

                                    <li>
                                        <a href="<?php echo $categories[2]['children'][5]['href']?>" class="w-general-category"><i class="wedding1"></i><br/><?php echo $categories[2]['children'][5]['name']?></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[2]['children'][6]['href']?>" class="w-general-category"><i class="wedding6"></i><br/><?php echo $categories[2]['children'][6]['name']?></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[2]['children'][7]['href']?>" class="w-general-category"><i class="wedding3"></i><br/><?php echo $categories[2]['children'][7]['name']?></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[2]['children'][8]['href']?>" class="w-general-category"><i class="wedding7"></i><br/><?php echo $categories[2]['children'][8]['name']?></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4 text-right">
                                <img src="catalog/view/theme/canary/img/img17.png" alt="img" class="img-under-style">
                            </div>
                        </div>
                    </div>
                </li>

                <!--<li class="dropdown-b">-->
                    <!--<a href="#">GEMSTONES</a>-->
                    <!--<div class="dropdown-inside">-->
                        <!--<div class="row clearfix">-->
                            <!--<div class="col-md-4 col-sm-4 col-xs-4">-->
                                <!--<div class="title">search gemstones gallery</div>-->
                                <!--<ul class="brilliant-style gemstones-box">-->
                                    <!--<li>-->
                                        <!--<a href="#"><i class="gemstones gemstones1"></i><span>blue suphire</span></a>-->
                                    <!--</li>-->
                                    <!--<li>-->
                                        <!--<a href="#"><i class="gemstones gemstones2"></i><span>blue suphire</span></a>-->
                                    <!--</li>-->
                                    <!--<li>-->
                                        <!--<a href="#"><i class="gemstones gemstones3"></i><span>blue suphire</span></a>-->
                                    <!--</li>-->
                                    <!--<li>-->
                                        <!--<a href="#"><i class="gemstones gemstones4"></i><span>blue suphire</span></a>-->
                                    <!--</li>-->
                                    <!--<li>-->
                                        <!--<a href="#"><i class="gemstones gemstones5"></i><span>blue suphire</span></a>-->
                                    <!--</li>-->

                                <!--</ul>-->
                            <!--</div>-->
                            <!--<div class="col-md-4 col-sm-4 col-xs-4">-->
                                <!--<div class="title">desighn your own</div>-->
                                <!--<ul class="style-br-long ul-first-drop">-->
                                    <!--<li>-->
                                        <!--<a href="#"><span class="wrap-ico2"><i class="own-b own-b-13"></i></span> <span>Diamond engagement rings</span></a>-->
                                    <!--</li>-->
                                    <!--<li>-->
                                        <!--<a href="#"><span class="wrap-ico2"><i class="own-b own-b-15"></i></span> <span>Diamond studs</span></a>-->
                                    <!--</li>-->
                                    <!--<li>-->
                                        <!--<a href="#"><span class="wrap-ico2"><i class="own-b own-b-14"></i></span> <span>Diamond pendant</span></a>-->
                                    <!--</li>-->
                                    <!--<li class="last-li-destones">-->
                                        <!--<a href="#"><span class="wrap-ico2"><i class="own-b own-b-9"></i></span> <span>Matching Gemstone Pairs</span></a>-->
                                    <!--</li>-->
                                <!--</ul>-->
                            <!--</div>-->
                            <!--<div class="col-md-4 col-sm-4 col-xs-4">-->
                                <!--<div class="title">mille coeurs colections</div>-->
                                <!--<ul class="style-br-long ul-first-drop">-->
                                    <!--<li>-->
                                        <!--<a href="#"><span class="wrap-ico2"><i class="own-b own-b-11"></i></span> <span>Diamond engagement rings</span></a>-->
                                    <!--</li>-->
                                    <!--<li>-->
                                        <!--<a href="#"><span class="wrap-ico2"><i class="own-b own-b-10"></i></span> <span>Diamond studs</span></a>-->
                                    <!--</li>-->
                                    <!--<li>-->
                                        <!--<a href="#"><span class="wrap-ico2"><i class="own-b own-b-12"></i></span> <span>Diamond pendant</span></a>-->
                                    <!--</li>-->
                                <!--</ul>-->
                            <!--</div>-->
                            <!--<img src="catalog/view/theme/canary/img/img18.png" alt="img" class="img-under-style">-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</li>-->


                <li class="dropdown-b">
                    <a href="<?php echo $categories[3]['href']?>" class="w-general-category"><?php echo $categories[3]['name']?></a>
                    <div class="dropdown-inside">
                        <div class="row clearfix">
                            <div class="col-md-5 col-sm-5 col-xs-5">
                                <div class="title">studs&earrings</div>
                                <ul class="style-br-long ul-first-drop">
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][0]['href']?>"><span class="wrap-ico2"><i class="own-b own-b-15"></i></span> <span><?php echo $categories[3]['children'][0]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][1]['href']?>"><span class="wrap-ico2"><i class="own-b own-b-9"></i></span> <span><?php echo $categories[3]['children'][1]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][2]['href']?>"><span class="wrap-ico2"><i class="own-b own-b-10"></i></span> <span><?php echo $categories[3]['children'][2]['name']?></span></a>
                                    </li>
                                </ul>
                                <div class="title">rings:</div>
                                <ul class="style-br-long">
                                    <li>
                                        <a href="#"><span class="wrap-ico2"><i class="own-b own-b-13"></i></span> <span>Diamond engagement rings</span></a>
                                    </li>
                                    <li>
                                        <a href="#"><span class="wrap-ico2"><i class="own-b own-b-11"></i></span> <span>Diamond engagement rings</span></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <div class="title">desighn your own</div>
                                <ul class="style-br-long">
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][3]['href']?>"><span class="wrap-ico3"><i class="own-b own-b-14"></i></span> <span><?php echo $categories[3]['children'][3]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][4]['href']?>"><span class="wrap-ico3"><i class="own-b own-b-12"></i></span> <span><?php echo $categories[3]['children'][4]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][5]['href']?>"><span class="wrap-ico3"><i class="own-b own-b-14"></i></span> <span><?php echo $categories[3]['children'][5]['name']?></span></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4 text-right">
                                <img src="catalog/view/theme/canary/img/img16.png" alt="img" class="img-under-style">
                            </div>
                        </div>

                    </div>
                </li>

                <li class="bord-l"></li>
                <li>
                    <a href="#">EDUCATION</a>
                </li>
                <li>
                    <a href="#">FAQ</a>
                </li>
                <li>
                    <a href="#">ABOUT</a>
                </li>
            </ul>
        </div>
    </div>
</header>