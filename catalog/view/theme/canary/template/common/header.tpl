<!doctype html>
<html lang="en-US">
<head>
    <!-- Google Tag Manager -->
    <script async="async" type="text/javascript">(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-PHJ8N6');</script>
    <!-- End Google Tag Manager -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width">
    <?if (!empty($meta)):?>
        <?foreach ($meta as $option => $row):?>
            <meta property="<?=$option?>" content="<?=$row?>"/>
        <?endforeach?>
    <?endif?>

    <title><?php echo $title; ?></title>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <script async="async" type="text/javascript">
        window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
                d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
        _.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
            $.src="//v2.zopim.com/?4M8liu0cc8LxpPuHuyEXmPGmiS7VjRPM";z.t=+new Date;$.
                    type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
    </script>
    <?=$stylelink?>
    <link href="/catalog/view/theme/canary/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/style-1480021565530.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/w_style-1480414222877.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/desktop-1480446257646.css"/>
    <style media="print" rel="stylesheet" type="text/css">
        .w-bredcrum-border, .static-page .w-blocs-complects, .product-need-help, .product-advantages, .include-section, .similar-section, footer, header {  display: none  }
    </style>
    <script type="text/javascript" src="/catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/catalog/view/theme/canary/vendor/jquery-ui/jquery-ui.min.js"></script>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <?php foreach ($analytics as $analytic) { ?>
        <?php echo $analytic; ?>
    <?php } ?>
    <?//dd($categories)?>
</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PHJ8N6"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<header>
    <div class="user-line index-page">
        <div class="center-bl top-header clearfix">
            <div class="col-md-4 col-sm-3 block-phone-header">
                <a href="/" class="logo w-general-category"><img src="/catalog/view/theme/canary/img/logo.png" alt="briliantcanary"></a>
                <div class="telephone font-montserrat-regular"><span><?php echo $telephone; ?> <span style="opacity: 0.7;">|</span> 24/7</span></div>
            </div>
            <div class="col-md-6 col-sm-7">
                <a class="w-tel-xs" href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?> | 24/7</a>
                <ul class="top-menu-b main-page">
                    <li <?if ($_route_ == 'login'):?>class="active"<?endif?>>
                        <?php if ($logged) { ?>
                        <a href="<?php echo $account; ?>" class="w-general-category">
                            <i class="icons-login_icon"></i>
                            <span class="span1"><?php echo $text_account; ?></span>
                        </a>
                        <?php } else { ?>
                        <a href="<?php echo $login; ?>"  class="w-general-category">
                            <i class="icons-login_icon"></i>
                            <span class="span1"><?php echo $text_login; ?></span>
                        </a>
                        <?php } ?>
                    </li>
                    <li <?if ($_route_ == 'wishlist'):?>class="active"<?endif?>>
                        <a href="<?php echo $wishlist; ?>" id="wishlist-total" class="w-general-category" title="<?php echo $text_wishlist; ?>">
                            <i class="icons-wishlist_icon"></i>
                            <?if (!empty($text_wishlist_count)):?>
                            <span class="w-count-circle"><?=$text_wishlist_count?></span>
                            <?endif?>
                            <span class="span1">Wish List</span>
                        </a>
                    </li>
                    <li <?if ($_route_ == 'compare'):?>class="active"<?endif?>>
                        <a href="/compare" id="compare-total">
                            <i class="icons-compare_icon"></i>
                                <?if (!empty($count_compare)):?>
                                    <span class="w-count-circle"><?=$count_compare?></span>
                                <?endif?>
                            <span class="span1">Compare</span>
                        </a>
                    </li>
                    <li class="cart-bl">
                        <?php echo $cart; ?>
                    </li>
                </ul>
            </div>
            <div class="col-md-2 col-sm-2">
                <?php echo $search; ?>
            </div>
        </div>
    </div>
    <div class="center-bl">
        <div class="row top-header-bloc-meny">
            <div class="mobile-menu visible-xs">
                <div class="mobile-menu-btn"><i class="menu-button"></i></div>
                <div class="dropdown-menu-mobile">
                    <div class="panel-group" id="MenuMobile">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#MenuMobile" href="#MenuMobile1">
                                        <?php echo $categories[1]['name']?>
                                    </a>
                                </h4>
                            </div>
                            <div id="MenuMobile1" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="main-rubric">
                                        <li><a href="<?php echo $categories[1]['children'][0]['href']?>"><?php echo $categories[1]['children'][0]['name']?></a></li>
                                        <li><a href="<?php echo $categories[1]['children'][1]['href']?>"><?php echo $categories[1]['children'][1]['name']?></a></li>
                                        <li><a href="<?php echo $categories[1]['children'][2]['href']?>"><?php echo $categories[1]['children'][2]['name']?></a></li>
                                        <li><a href="<?php echo $categories[1]['children'][3]['href']?>"><?php echo $categories[1]['children'][3]['name']?></a></li>
                                        <li><a href="<?php echo $categories[1]['children'][4]['href']?>"><?php echo $categories[1]['children'][4]['name']?></a></li>
                                        <li><a href="<?php echo $categories[1]['children'][5]['href']?>"><?php echo $categories[1]['children'][5]['name']?></a></li>
                                        <li><a href="<?php echo $categories[1]['children'][6]['href']?>"><?php echo $categories[1]['children'][6]['name']?></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#MenuMobile" href="#MenuMobile2">
                                        <?php echo $categories[2]['name']?>
                                    </a>
                                </h4>
                            </div>
                            <div id="MenuMobile2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <div class="panel-group" id="rubricMenu-woman">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#rubricMenu-woman" href="#rubricMenu2">
                                                        WEDDING RINGS FOR WOMAN
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="rubricMenu2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <ul class="main-rubric">
                                                        <li><a href="<?php echo $categories[2]['children'][2]['href']?>">CLASSIC</a></li>
                                                        <li><a href="<?php echo $categories[2]['children'][3]['href']?>">DIAMOND</a></li>
                                                        <li><a href="<?php echo $categories[2]['children'][4]['href']?>">ETERNITY</a></li>
                                                        <li><a href="<?php echo $categories[2]['children'][5]['href']?>">STACKABLE</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-group" id="rubricMenu-man">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#rubricMenu-man" href="#rubricMenu1">
                                                        WEDDING RINGS FOR MEN
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="rubricMenu1" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <ul class="main-rubric">
                                                        <li><a href="<?php echo $categories[2]['children'][6]['href']?>">CLASSIC</a></li>
                                                        <li><a href="<?php echo $categories[2]['children'][7]['href']?>">DIAMOND</a></li>
                                                        <li><a href="<?php echo $categories[2]['children'][8]['href']?>">MODERN</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#MenuMobile" href="#MenuMobile3">
                                        <?php echo $categories[0]['name']?>
                                    </a>
                                </h4>
                            </div>
                            <div id="MenuMobile3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="main-rubric">
                                        <li><a href="/diamonds?&shape=Round">Round Cut</a></li>
                                        <li><a href="/diamonds?&shape=Princess">Princess Cut</a></li>
                                        <li><a href="/diamonds?&shape=Emerald">Emerald Cut</a></li>
                                        <li><a href="/diamonds?&shape=Asscher">Asscher Cut</a></li>
                                        <li><a href="/diamonds?&shape=Oval">Oval Cut</a></li>
                                        <li><a href="/diamonds?&shape=Radiant">Radiant Cut</a></li>
                                        <li><a href="/diamonds?&shape=Pear">Pear Shaped</a></li>
                                        <li><a href="/diamonds?&shape=Heart">Heart Shaped</a></li>
                                        <li><a href="/diamonds?&shape=Marquise">Marquise Cut</a></li>
                                        <li><a href="/diamonds?&shape=Cushion">Cushion Cut</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a href="<?php echo $categories[4]['href']?>">
                                        <?php echo $categories[4]['name']?>
                                    </a>
                                </h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#MenuMobile" href="#MenuMobile4">
                                        <?php echo $categories[3]['name']?>
                                    </a>
                                </h4>
                            </div>
                            <div id="MenuMobile4" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="main-rubric">
                                        <li><a href="<?php echo $categories[3]['children'][6]['href']?>&filter=7"><?php echo $categories[3]['children'][6]['name']?></a></li>
                                        <li><a href="<?php echo $categories[3]['children'][4]['href']?>&filter=7"><?php echo $categories[3]['children'][4]['name']?></a></li>
                                        <li><a href="<?php echo $categories[3]['children'][2]['href']?>&filter=7"><?php echo $categories[3]['children'][2]['name']?></a></li>
                                        <li><a href="<?php echo $categories[3]['children'][9]['href']?>&filter=7"><?php echo $categories[3]['children'][9]['name']?></a></li>
                                        <li><a href="<?php echo $categories[3]['children'][7]['href']?>"><?php echo $categories[3]['children'][7]['name']?></a></li>
                                        <li><a href="<?php echo $categories[3]['children'][3]['href']?>"><?php echo $categories[3]['children'][3]['name']?></a></li>
                                        <li><a href="<?php echo $categories[3]['children'][0]['href']?>"><?php echo $categories[3]['children'][0]['name']?></a></li>
                                        <li><a href="<?php echo $categories[3]['children'][1]['href']?>"><?php echo $categories[3]['children'][1]['name']?></a></li>
                                        <li><a href="<?php echo $categories[3]['children'][8]['href']?>"><?php echo $categories[3]['children'][8]['name']?></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--*<div class="panel panel-default">*-->
                            <!--*<div class="panel-heading">*-->
                                <!--*<h4 class="panel-title">*-->
                                    <!--*<a href="/education">*-->
                                        <!--*INFO*-->
                                    <!--*</a>*-->
                                <!--*</h4>*-->
                            <!--*</div>*-->
                        <!--*</div>*-->
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <a href="/" class="logo"><img src="/catalog/view/theme/canary/img/logo_new_header.png" alt="logo"></a>
            </div>
            <div class="col-md-8 col-sm-8">
                <?=$top_meny?>
            </div>
        </div>
    </div>
</header>