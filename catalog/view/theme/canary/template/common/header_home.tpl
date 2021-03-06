<!doctype html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">


    <title><?php echo $title; ?></title>



    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>

    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>



    <link rel="stylesheet" href="/catalog/view/theme/canary/css/font-awesome.min.css">
    <link href="/catalog/view/theme/canary/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/normalize.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/vendor/jquery-ui/jquery-ui.min.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/vendor/owl.carousel/owl.carousel.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/vendor/jquery.sliderPro/slider-pro.min.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/style.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/w_style.css"/>

    <script src="/catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/catalog/view/theme/canary/vendor/jquery-ui/jquery-ui.min.js"></script>

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">

    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
</head>



<?//dd($categories)?>

<body>
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-PHJ8N6"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-PHJ8N6');</script>
<!-- End Google Tag Manager -->
<header>
    <div class="user-line index-page">
        <div class="center-bl clearfix">
            <a href="/" class="logo w-general-category"><img src="/catalog/view/theme/canary/img/logo.png" alt="logo"></a>
            <div class="telephone">
                <i class="ico-telephone"></i>
                <span><?php echo $telephone; ?> | 24/7</span>
            </div>
            <ul class="top-menu-b main-page">

                <li>
                    <?php if ($logged) { ?>
                        <a href="<?php echo $account; ?>" class="w-general-category">
                            <i class="man-ico"></i>
                            <span><?php echo $text_account; ?></span>
                        </a>
                    <?php } else { ?>

                        <a href="<?php echo $login; ?>"  class="w-general-category">
                            <i class="man-ico"></i>
                            <span><?php echo $text_login; ?></span>
                        </a>
                    <?php } ?>
                </li>
                <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" class="w-general-category" title="<?php echo $text_wishlist; ?>"><i class="heart-ico"></i><span><?php echo $text_wishlist; ?></span></a></li>
                <li><a href="/compare"><i class="fa fa-exchange" style="color: #f9d35a;"></i><span>Compare</span></a></li>
                <li class="cart-bl">
                    <?php echo $cart; ?>
                </li>
                <!--*<li class="triangle"><a href="#">currency usd</a></li>*-->
            </ul>

            <?php echo $search; ?>

        </div>
    </div>
    <div class="center-bl">
        <div class="menu">
            <a href="/" class="logo"><img src="/catalog/view/theme/canary/img/logo.png" alt="logo"></a>
            <ul>
                <li class="dropdown-b"><!--*DIAMONDS*-->
                    <a href="<?php echo $categories[0]['href']?>" class="w-general-category"><?php echo $categories[0]['name']?></a>
                    <div class="dropdown-inside">
                        <div class="title">search diamond gallery</div>
                        <ul class="brilliant-style">
                            <li>
                                <a href="/diamonds?&shape=Round" class="w-general-category"><i class="brilliant-ico2 brilliant-s1"></i><br/>Round Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Princess" class="w-general-category"><i class="brilliant-ico2 brilliant-s2"></i><br/>Princess Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Emerald" class="w-general-category"><i class="brilliant-ico2 brilliant-s10"></i><br/>Emerald Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Asscher" class="w-general-category"><i class="brilliant-ico2 brilliant-s3"></i><br/>Asscher Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Oval" class="w-general-category"><i class="brilliant-ico2 brilliant-s6"></i><br/>Oval Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Radiant" class="w-general-category"><i class="brilliant-ico2 brilliant-s7"></i><br/>Radiant Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Pear" class="w-general-category"><i class="brilliant-ico2 brilliant-s8"></i><br/>Pear Shaped</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Heart" class="w-general-category"><i class="brilliant-ico2 brilliant-s9"></i><br/>Heart Shaped</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Marquise" class="w-general-category"><i class="brilliant-ico2 brilliant-s5"></i><br/>Marquise Cut</a>
                            </li>
                            <li>
                                <a href="/diamonds?&shape=Cushion" class="w-general-category"><i class="brilliant-ico2 brilliant-s4"></i><br/>Cushion Cut</a>
                            </li>
                        </ul>
                        <div class="row clearfix">
                            <div class="col-md-5 col-sm-5 col-xs-5">
                                <div class="title">desighn your own</div>
                                <ul class="style-br-long">
                                    <li>
                                        <a href="/engagement-rings" class="w-general-category"><span class="wrap-ico"><i class="own-b own-b-7"></i></span> <span>Diamond engagement rings</span></a>
                                    </li>
                                    <li>
                                        <a href="/fine_jeverly/diamond_studs" class="w-general-category"><span class="wrap-ico"><i class="own-b own-b-1"></i></span> <span>Diamond studs</span></a>
                                    </li>
                                    <li>
                                        <a href="/fine_jeverly/diamond_pendants" class="w-general-category"><span class="wrap-ico"><i class="own-b own-b-4"></i></span> <span>Diamond pendant</span></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-7 text-right">
                                <img src="/catalog/view/theme/canary/img/img14.png" alt="img" class="img-under-style">
                            </div>
                        </div>
                    </div>
                </li>
                <li class="dropdown-b"><!--engagement rings-->
                    <a href="<?php echo $categories[1]['href']?>" class="w-general-category"><?php echo $categories[1]['name']?></a>
                    <div class="dropdown-inside">
                        <div class="title">engagement setting rings</div>
                        <ul class="brilliant-style">


                            <li>
                                <a href="<?php echo $categories[1]['children'][0]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s1"></i><br/><?php echo $categories[1]['children'][0]['name']?></a>
                            </li>
                            <li>
                                <a href="<?php echo $categories[1]['children'][1]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s2"></i><br/><?php echo $categories[1]['children'][1]['name']?></a>
                            </li>
                            <li>
                                <a href="<?php echo $categories[1]['children'][2]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s7"></i><br/><?php echo $categories[1]['children'][2]['name']?></a>
                            </li>
                            <li>
                                <a href="<?php echo $categories[1]['children'][3]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s5"></i><br/><?php echo $categories[1]['children'][3]['name']?></a>
                            </li>
                            <li>
                                <a href="<?php echo $categories[1]['children'][4]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s8"></i><br/><?php echo $categories[1]['children'][4]['name']?></a>
                            </li>
                            <li>
                                <a href="<?php echo $categories[1]['children'][5]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s3"></i><br/><?php echo $categories[1]['children'][5]['name']?></a>
                            </li>
                            <li>
                                <a href="<?php echo $categories[1]['children'][6]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s6"></i><br/><?php echo $categories[1]['children'][6]['name']?></a>
                            </li>
                        </ul>
                        <div class="row clearfix">
                            <!--*<div class="col-md-5 col-sm-5 col-xs-5">
                                <div class="title">designer  preset colections</div>
                                <ul class="style-br-long">
                                    <li>
                                        <a href="#"><i class="brilliant-ico brilliant-s7"></i> <span>Designer  preset colections</span></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="brilliant-ico brilliant-s7"></i> <span>Designer  preset colections</span></a>
                                    </li>
                                </ul>
                            </div>*-->
                            <div class="col-md-7 col-sm-7 col-xs-7 text-right">
                                <img src="/catalog/view/theme/canary/img/img13.png" alt="img" class="img-under-style">
                            </div>
                        </div>
                        <!--*<div class="clearfix link-drop-menu">
                            <div class="pull-left">
                                <a href="#">START WITH A SETTING </a>
                                <a href="#">START WITH A DIAMOND</a>
                            </div>
                            <div class="pull-right">
                                <a href="#">inspiration gallery</a>
                            </div>

                        </div>*-->
                    </div>
                </li>

                <li class="dropdown-b"><!--*WEDDING RINGS*-->
                    <a href="<?php echo $categories[2]['href']?>" class="w-general-category"><?php echo $categories[2]['name']?></a>
                    <div class="dropdown-inside">
                        <div class="row clearfix">
                            <div class="col-md-8 col-sm-8 col-xs-8">

                                <div class="title">WOMAN</div><!--*woman*-->
                                <ul class="brilliant-style brilliant-style-long ul-first-drop">


                                    <li>
                                        <a href="<?php echo $categories[2]['children'][0]['href']?>" class="w-general-category"><i class="wedding1"></i><br/><?php echo $categories[2]['children'][0]['name']?></a>
                                    </li>

                                    <li>
                                        <a href="<?php echo $categories[2]['children'][1]['href']?>" class="w-general-category"><i class="wedding3"></i><br/><?php echo $categories[2]['children'][1]['name']?></a>
                                    </li>

                                    <li>
                                        <a href="<?php echo $categories[2]['children'][2]['href']?>" class="w-general-category"><i class="wedding5"></i><br/><?php echo $categories[2]['children'][2]['name']?></a>
                                    </li>

                                    <li>
                                        <a href="<?php echo $categories[2]['children'][3]['href']?>" class="w-general-category"><i class="wedding2"></i><br/><?php echo $categories[2]['children'][3]['name']?></a>
                                    </li>


                                </ul>


                                <div class="title">MAN</div><!--*man*-->
                                <ul class="brilliant-style brilliant-style-long ul-first-drop" style="width: 73%">

                                    <?if (!empty($categories[2]['children'][4])):?>
                                        <li>
                                            <a href="<?php echo $categories[2]['children'][4]['href']?>" class="w-general-category"><i class="wedding1"></i><br/><?php echo $categories[2]['children'][4]['name']?></a>
                                        </li>
                                    <?endif?>
                                    <?if (!empty($categories[2]['children'][5])):?>
                                        <li>
                                            <a href="<?php echo $categories[2]['children'][5]['href']?>" class="w-general-category"><i class="wedding3"></i><br/><?php echo $categories[2]['children'][5]['name']?></a>
                                        </li>
                                    <?endif?>
                                    <?if (!empty($categories[2]['children'][6])):?>
                                        <li>
                                            <a href="<?php echo $categories[2]['children'][6]['href']?>" class="w-general-category"><i class="wedding7"></i><br/><?php echo $categories[2]['children'][6]['name']?></a>
                                        </li>
                                    <?endif?>


                                </ul>


                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4 text-right">
                                <img src="/catalog/view/theme/canary/img/img17.png" alt="img" class="img-under-style">
                            </div>
                        </div>
                    </div>
                </li>




                <li class="dropdown-b">
                    <a href="<?php echo $categories[3]['href']?>" class="w-general-category"><?php echo $categories[3]['name']?></a>
                    <div class="dropdown-inside">
                        <div class="row clearfix">
                            <div class="col-md-5 col-sm-5 col-xs-5">

                                <div class="title">EARRINGS</div>
                                <ul class="style-br-long ul-first-drop">
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][0]['href']?>"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-16" style="background-position-y: 0;" ></i></span> <span><?php echo $categories[3]['children'][0]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][1]['href']?>"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-9" style="background-position-y: 1px;"></i></span> <span><?php echo $categories[3]['children'][1]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][2]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-earring" style="background-position-y: -12px;"></i></span> <span><?php echo $categories[3]['children'][2]['name']?></span></a>
                                    </li>
                                </ul>

                                <div class="title">Necklaces</div>
                                <ul class="style-br-long w-margin-li">
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][5]['href']?>" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-14" style="background-position-y: -5px;"></i></span> <span><?php echo $categories[3]['children'][5]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][6]['href']?>&filter=7" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-fashion-necklace" style="background-position-y: -8px;"></i></span> <span><?php echo $categories[3]['children'][6]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][7]['href']?>" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-12" style="background-position-y: -7px;"></i></span> <span><?php echo $categories[3]['children'][7]['name']?></span></a>
                                    </li>
                                </ul>

                            </div>

                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <div class="title">Rings</div>
                                <ul class="style-br-long">
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][3]['href']?>"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-13" style="background-position-y: 10px;"></i></span> <span><?php echo $categories[3]['children'][3]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][4]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-15" style="background-position-y: 5px; background-position-x: -4px;"></i></span> <span><?php echo $categories[3]['children'][4]['name']?></span></a>
                                    </li>
                                </ul>

                                <div class="title">Bracelets</div>
                                <ul class="style-br-long">
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][8]['href']?>"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-diamond-bracelet"></i></span> <span><?php echo $categories[3]['children'][8]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][9]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-gemstone-bracelet"></i></span> <span><?php echo $categories[3]['children'][9]['name']?></span></a>
                                    </li>
                                </ul>

                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4 text-right">
                                <img src="/catalog/view/theme/canary/img/img16.png" alt="img" class="img-under-style">
                            </div>
                        </div>

                    </div>
                </li>


                <li class="dropdown-b" data-target="menu4">
                    <a href="/gemstones" class="w-general-category"><?php echo $categories[4]['name']?></a>
                    <div class="dropdown-inside">
                        <div class="row clearfix">
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <div class="title">Search Gemstones Gallery</div>
                                <ul class="brilliant-style gemstones-box">
                                    <li>
                                        <a href="/gemstones&stone_type=1"><i class="gemstones gemstones1"></i><span>blue sapphire</span></a>
                                    </li>
                                    <li>
                                        <a href="/gemstones&stone_type=5"><i class="gemstones gemstones2"></i><span>pink sapphire</span></a>
                                    </li>
                                    <li>
                                        <a href="/gemstones&stone_type=4"><i class="gemstones gemstones3"></i><span>yellow sapphire</span></a>
                                    </li>
                                    <li>
                                        <a href="/gemstones&stone_type=2"><i class="gemstones gemstones4"></i><span>red ruby</span></a>
                                    </li>
                                    <li>
                                        <a href="/gemstones&stone_type=3"><i class="gemstones gemstones5"></i><span>green emerald</span></a>
                                    </li>

                                </ul>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <div class="title">Gemstone Jewelry</div>
                                <ul class="style-br-long ul-first-drop">
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][6]['href']?>&filter=7" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-fashion-necklace" style="background-position-y: -8px;background-position-x: 3px;"></i></span> <span><?php echo $categories[3]['children'][6]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][4]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-15" style="background-position-y: 6px;"></i></span> <span><?php echo $categories[3]['children'][4]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][2]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-earring" style="background-position-y: -12px;"></i></span> <span><?php echo $categories[3]['children'][2]['name']?></span></a>
                                    </li>
                                    <li>
                                        <a href="<?php echo $categories[3]['children'][9]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-gemstone-bracelet"></i></span> <span><?php echo $categories[3]['children'][9]['name']?></span></a>
                                    </li>
                                </ul>
                            </div>

                            <img src="/catalog/view/theme/canary/img/img18.png" alt="img" class="img-under-style">
                        </div>
                    </div>
                </li>


                <li class="bord-l"></li>
                <li>
                    <a href="/education"  class="w-general-category">EDUCATION</a>
                </li>

            </ul>
        </div>
    </div>
</header>