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
    <link href="/catalog/view/theme/canary/vendor/slickslider/slick.css" rel="stylesheet">
    <link href="/catalog/view/theme/canary/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/normalize.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/vendor/jquery-ui/jquery-ui.min.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/vendor/owl.carousel/owl.carousel.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/vendor/jquery.sliderPro/slider-pro.min.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/style.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/w_style.css"/>
    <link rel="stylesheet" href="/catalog/view/theme/canary/css/jquery.bxslider.min.css"/>

    <script src="/catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/catalog/view/theme/canary/vendor/jquery-ui/jquery-ui.min.js"></script>

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">

    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>

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
        <div class="center-bl top-header">
            <div class="col-md-4 col-sm-3">
                <a href="/" class="logo w-general-category">
                    <img src="/catalog/view/theme/canary/img/logo.png" alt="briliantcanary">
                </a>
                <div class="telephone font-montserrat-regular">

                    <span><?php echo $telephone; ?> | 24/7</span>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
                <ul class="top-menu-b main-page">
                    <li>
                        <?php if ($logged) { ?>
                        <a href="<?php echo $account; ?>" class="w-general-category">
                            <i class="icons-login_icon"></i>
                            <span><?php echo $text_account; ?></span>
                        </a>
                        <?php } else { ?>
                        <a href="<?php echo $login; ?>"  class="w-general-category">
                            <i class="icons-login_icon"></i>
                            <span><?php echo $text_login; ?></span>
                        </a>
                        <?php } ?>
                    </li>
                    <li>
                        <a href="<?php echo $wishlist; ?>" id="wishlist-total" class="w-general-category" title="<?php echo $text_wishlist; ?>">
                            <i class="icons-wishlist_icon"></i>
                            <span>Wish List</span>
                        </a>
                    </li>
                    <li><a href="/compare"><i class="icons-compare_icon"></i>
                            <span>Compare</span></a>
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
            <div class="col-md-4 col-sm-4">
                <a href="/" class="logo">
                    <img src="/catalog/view/theme/canary/img/logo_new_header.png" alt="logo">
                </a>
            </div>
            <div class="col-md-8 col-sm-8">

                <?=$top_meny?>

            </div>

        </div>
    </div>
</header>