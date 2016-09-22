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
    <script src="/catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/font-awesome.min.css">
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/normalize.css"/>
    <link rel="stylesheet" href="/catalog/view/javascript/jquery/magnific/magnific-popup.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/vendor/slickslider/slick.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/vendor/jquery-ui/jquery-ui.min.css"/>
    <link href="/catalog/view/theme/canary/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="/catalog/view/theme/canary/vendor/owl.carousel/owl.carousel.css"/>
    <link rel="stylesheet" href="/catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/vendor/select2/dist/css/select2.min.css">
    <link rel="stylesheet" href="/catalog/view/theme/canary/vendor/jquery.sliderPro/slider-pro.min.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/style.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/w_style.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/easydropdown.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/jquery.bxslider.min.css"/>

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">

    <script type="text/javascript" src="/catalog/view/theme/canary/vendor/jquery-ui/jquery-ui.min.js"></script>


</head>
<body class="static-page">
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-PHJ8N6"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-PHJ8N6');</script>
<!-- End Google Tag Manager -->
<div class="menu-mobile-l">
    <div class="login-menu">
        <a href="#">Login/Sign in</a>
    </div>
    <div class="panel-group brilliant-panel-main" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m1" aria-expanded="false">
                        <?php echo $categories[0]['name']?>
                    </a>
                </h4>
            </div>
            <div id="collapse-m1" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <ul class="brilliant-style clearfix">
                        <li>
                            <a href="/diamonds?&shape=Round" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s1"></i></span><span>Round Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Princess" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s2"></i></span><span>Princess Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Emerald" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s10"></i></i></span><span>Emerald Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Asscher" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s3"></i></span><span>Asscher Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Oval" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s6"></i></span><span>Oval Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Radiant" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s7"></i></span><span>Radiant Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Pear" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s8"></i></span><span>Pear Shaped</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Heart" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s9"></i></span><span>Heart Shaped</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Marquise" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s5"></i></span><span>Marquise Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Cushion" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s4"></i></span><span>Cushion Cut</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m2" aria-expanded="false">
                        <?php echo $categories[1]['name']?><!--*ENGAGEMENT RINGS*-->
                    </a>
                </h4>
            </div>
            <div id="collapse-m2" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <ul class="brilliant-style">

                        <li>
                            <a href="<?php echo $categories[1]['children'][0]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s1"></i></span><span><?php echo $categories[1]['children'][0]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][1]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s2"></i></span><span><?php echo $categories[1]['children'][1]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][2]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s7"></i></span><span><?php echo $categories[1]['children'][2]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][3]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s5"></i></span><span><?php echo $categories[1]['children'][3]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][4]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s8"></i></span><span><?php echo $categories[1]['children'][4]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][5]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s3"></i></span><span><?php echo $categories[1]['children'][5]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][6]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s6"></i></span><span><?php echo $categories[1]['children'][6]['name']?></span></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m3" aria-expanded="false">
                        WEDDING RINGS
                    </a>
                </h4>
            </div>
            <div id="collapse-m3" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <div class="title">woman</div>
                    <ul class="brilliant-style brilliant-style-long ul-first-drop clearfix">
                        <li>
                            <a href="#"><i class="wedding1"></i>classik</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding2"></i>carved</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding3"></i>diamond</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding4"></i>aniversary</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding5"></i>eternity</a>
                        </li>
                    </ul>
                    <div class="title">man</div>
                    <ul class="brilliant-style brilliant-style-long ul-first-drop clearfix">
                        <li>
                            <a href="#"><i class="wedding1"></i>classik</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding6"></i>carved</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding3"></i>diamond</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding7"></i>alternative</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m4" aria-expanded="false">
                        FINE JEWELRY
                    </a>
                </h4>
            </div>
            <div id="collapse-m4" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <div class="title">EARRINGS</div>
                    <ul class="style-br-long ul-first-drop fine-jewerly-ul">

                        <li>
                            <a href="<?php echo $categories[3]['children'][0]['href']?>"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-15"></i></span> <span><?php echo $categories[3]['children'][0]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][1]['href']?>"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-9"></i></span> <span><?php echo $categories[3]['children'][1]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][2]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-earring"></i></span> <span><?php echo $categories[3]['children'][2]['name']?></span></a>
                        </li>

                    </ul>
                    <div class="title">Necklaces</div>
                    <ul class="style-br-long ul-first-drop fine-jewerly-ul">

                        <li>
                            <a href="<?php echo $categories[3]['children'][5]['href']?>" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-14" ></i></span> <span><?php echo $categories[3]['children'][5]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][6]['href']?>&filter=7" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-12" ></i></span> <span><?php echo $categories[3]['children'][6]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][7]['href']?>" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-fashion-necklace" ></i></span> <span><?php echo $categories[3]['children'][7]['name']?></span></a>
                        </li>

                    </ul>

                    <div class="title">Rings</div>
                    <ul class="style-br-long ul-first-drop fine-jewerly-ul">

                        <li>
                            <a href="<?php echo $categories[3]['children'][3]['href']?>"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-13"></i></span> <span><?php echo $categories[3]['children'][3]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][4]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-gemstone-ring"></i></span> <span><?php echo $categories[3]['children'][4]['name']?></span></a>
                        </li>

                    </ul>
                    <div class="title">Bracelets</div>
                    <ul class="style-br-long ul-first-drop fine-jewerly-ul">

                        <li>
                            <a href="<?php echo $categories[3]['children'][8]['href']?>"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-diamond-bracelet"></i></span> <span><?php echo $categories[3]['children'][8]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][9]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-gemstone-bracelet"></i></span> <span><?php echo $categories[3]['children'][9]['name']?></span></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>



        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m6" aria-expanded="false">
                        <?php echo $categories[4]['name']?>
                    </a>
                </h4>
            </div>
            <div id="collapse-m6" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
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
            </div>
        </div>


    </div>
    <ul class="mobile-link-menu">
        <li><a href="/education">EDUCATION</a></li>
        <li><a href="/faq">FAQ</a></li>
        <li><a href="/about_us">ABOUT</a></li>
    </ul>
    <div class="newsletter-main clearfix">
        <div class="newsletter-form">
            <div class="wrapper-form">
                <div class="title">
                    NEWSLETTER
                </div>
                <div class="text">
                    This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.<br>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat i
                </div>
                <form action="" class="form-nl">
                    <div class="gender clearfix">
                        <div class="one-block active">
                            <i class="fa fa-venus"></i> woman
                        </div>
                        <div class="one-block">
                            <i class="fa fa-mars"></i> man
                        </div>
                    </div>
                    <div class="clearfix">
                        <input type="text" placeholder="Enter your email adress...">
                        <button class="form-brand">subscribe</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="bg-right"></div>
    </div>
    <div class="copyright">
        ©2016.
    </div>
</div>
<div class="wrapper-page">
    <header>
        <div class="user-line">
            <div class="center-bl clearfix">
                <button class="menu-l-open"><i class="fa fa-bars"></i></button>
                <a href="/" class="logo w-general-category">
                    <img src="/catalog/view/theme/canary/img/logo.png" alt="logo">
                </a>
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

                        <a href="<?php echo $login; ?>" class="w-general-category">
                            <i class="man-ico"></i>
                            <span><?php echo $text_login; ?></span>
                        </a>
                        <?php } ?>

                    </li>
                    <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" class="w-general-category" title="<?php echo $text_wishlist; ?>"><i class="heart-ico"></i><span><?php echo $text_wishlist; ?></span></a></li>
                    <li><a href="/compare" data-placement="bottom" class="w-compare-popower" data-timeout="2000"  data-content="Product added to comparison"><i class="fa fa-exchange" style="color: #f9d35a;"></i><span>Compare</span></a></li>
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
                <button class="menu-l-open"><i class="fa fa-bars"></i></button>
                <a href="/" class="logo">
                    <img src="/catalog/view/theme/canary/img/logo.png" alt="logo">
                    <span class="text-down-logo">Beyong Brilliant</span>
                </a>
                <ul>
                    <li class="dropdown-b" data-target="menu1">
                        <a href="<?php echo $categories[0]['href']?>" class="w-general-category"><?php echo $categories[0]['name']?></a><!--DIAMONDS-->
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
                    <li class="dropdown-b" data-target="menu2"><!--ENGAGEMENT RINGS-->
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
                                <!--<div class="col-md-5 col-sm-5 col-xs-5">
                                    <div class="title">designer  preset colections</div>
                                    <ul class="style-br-long">
                                        <li>
                                            <a href="#"><i class="brilliant-ico brilliant-s7"></i> <span>Designer  preset colections</span></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="brilliant-ico brilliant-s7"></i> <span>Designer  preset colections</span></a>
                                        </li>
                                    </ul>
                                </div>-->
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

                                    <div class="title">WOMAN</div><!--woman-->
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

                                    <div class="title">MAN</div><!--man-->
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
                                            <a href="/gemstones&stone_type=1" class="w-general-category"><i class="gemstones gemstones1"></i><span>blue sapphire</span></a>
                                        </li>
                                        <li>
                                            <a href="/gemstones&stone_type=5" class="w-general-category"><i class="gemstones gemstones2"></i><span>pink sapphire</span></a>
                                        </li>
                                        <li>
                                            <a href="/gemstones&stone_type=4" class="w-general-category"><i class="gemstones gemstones3"></i><span>yellow sapphire</span></a>
                                        </li>
                                        <li>
                                            <a href="/gemstones&stone_type=2" class="w-general-category"><i class="gemstones gemstones4"></i><span>red ruby</span></a>
                                        </li>
                                        <li>
                                            <a href="/gemstones&stone_type=3" class="w-general-category"><i class="gemstones gemstones5"></i><span>green emerald</span></a>
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
                        <a href="/education" class="w-general-category">EDUCATION</a>
                    </li>

                </ul>
            </div>
        </div>
    </header>