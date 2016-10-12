
<footer>

    <section>

        <div class="row w-footer-newsletter">

            <div class="center-bl">
                <div class="col-md-4">
                    <div class="h3">
                        Sign up to receive Exclusive Offers & News
                    </div>
                </div>
                <div class="col-md-8">

                    <form class="form-inline w-newsletter-form" role="form">
                        <div class="form-group">
                            <input type="email" class="form-control newslet-email"  placeholder="Enter e-mail">
                        </div>

                        <button value="1" class="w-newsletter-button btn w-btn-orange2" type="submit">Woman</button>
                        <button value="2" class="w-newsletter-button btn w-btn-orange2" type="submit">Man</button>
                    </form>

                </div>
            </div>
        </div>
        <div class="row w-row-footer-menu">
            <div class="center-bl">
                <div class="col-md-12">
                    <ul class="list-inline">
                        <li><a href="">ENGAGEMENT RINGS</a></li>
                        <li><span>.</span></li>
                        <li><a href="">WEDDING RINGS</a></li>
                        <li><span>.</span></li>
                        <li><a href="">DIAMONDS</a></li>
                        <li><span>.</span></li>
                        <li><a href="">GEMSTONES</a></li>
                        <li><span>.</span></li>
                        <li><a href="">JEWELRY & GIFTS</a></li>
                        <li><span>.</span></li>
                        <li><a href="">INFO</a></li>
                    </ul>
                </div>
            </div>
        </div>

    </section>





    <div class="row w-footer-down">
        <section class="footer-menu">

            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="paging-right-50">
                    <a href="/"><img src="/catalog/view/theme/canary/img/logo_new_footer.png" alt="briliantcanary"></a>
                    <ul class="list-inline text-right">
                        <li><a href="https://www.facebook.com/BrilliantCanaryRings" class="icon-facebook"></a></li>
                        <li><a href="https://twitter.com/TheBrilliantC" class="icon-twitter"></a></li>
                        <li><a href="https://www.instagram.com/brilliantcanaryrings/" class="icon-instagram"></a></li>
                        <li><a href="" class="icon-p"></a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-8 col-sm-8 col-xs-12">
                <div class="row content-footer">
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <dl>
                            <dt>INFORMATION</dt>
                            <?php foreach ($informations as $information):?>

                                <?if ($information['bottom'] == 1):?>
                                <dd><a href="<?php echo $information['href']; ?>" class="w-general-category"><?php echo $information['title']; ?></a></dd>
                                <?endif?>

                            <?endforeach?>
                        </dl>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <dl>
                            <dt>WE OFFER MORE</dt>
                            <dd><a href="">Free Lifetime Warranty</a></dd>
                            <dd><a href="">Free and Insured Shipping</a></dd>
                            <dd><a href="">Free Sizing</a></dd>
                            <dd><a href="">Free Engraving</a></dd>
                            <dd><a href="">100% Money Back</a></dd>
                        </dl>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <dl>
                            <dt>WHY PICK CANARY?</dt>
                            <dd><a href="">Made in USA!</a></dd>
                            <dd><a href="">Product and delivery</a></dd>
                            <dd><a href="">in less than 2 weeks</a></dd>
                            <dd><a href="">GIA certified doaminds</a></dd>
                            <dd><a href="">Higher quality</a></dd>
                            <dd><a href="">Helping others</a></dd>
                        </dl>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <dl>
                            <dt>CONTACT US</dt>
                            <dd><a href=""><span class="icon-email"></span>info@brilliantcanary.com</a></dd>
                            <dd><a href=""><span class="icon-tel"></span>800-214-6550</a></dd>
                        </dl>
                    </div>
                </div>
            </div>

        </section>

    </div>
    <!--*<section class="footer-menu">*-->
        <!--*<div class="wrapper-footer clearfix">*-->
            <!--*<div class="one-block">*-->
                <!--*<div class="title">CONTACT US</div>*-->
                <!--*<div class="one-line"><i class="mail-ico"></i><span>info@brilliantcanary.com</span></div>*-->
                <!--*<div class="one-line"><i class="call-2-ico"></i><span>800-214-6550</span></div>*-->
            <!--*</div>*-->
            <!--*<div class="one-block">*-->
                <!--*<div class="title">INFORMATION</div>*-->
                <!--*<ul>*-->
                    <!--*<?php foreach ($informations as $information) { ?>*-->

                        <!--*<?if ($information['bottom'] == 1):?>*-->
                            <!--*<li><a href="<?php echo $information['href']; ?>" class="w-general-category">- <?php echo $information['title']; ?></a></li>*-->
                        <!--*<?endif?>*-->

                    <!--*<?php } ?>*-->
                    <!--*<li><a href="<?php echo $contact; ?>" class="w-general-category">- <?php echo $text_contact; ?></a></li>*-->
                    <!--*<li><a href="<?php echo $sitemap; ?>" class="w-general-category">- <?php echo $text_sitemap; ?></a></li>*-->
                    <!--*<li><a href="/faq" class="w-general-category">- FAQ</a></li>*-->
                <!--*</ul>*-->
            <!--*</div>*-->
            <!--*<div class="one-block">*-->
                <!--*<div class="title">WHY PICK BRILLIANT CANARY?</div>*-->
                <!--*<ul>*-->
                    <!--*<?php foreach ($informations as $information):?>*-->

                        <!--*<?if ($information['top'] == 1):?>*-->
                            <!--*<li><a href="<?php echo $information['href']; ?>" class="w-general-category">- <?php echo $information['title']; ?></a></li>*-->
                        <!--*<?endif?>*-->

                    <!--*<?endforeach?>*-->

                <!--*</ul>*-->
            <!--*</div>*-->
            <!--*<div class="one-block">*-->
                <!--*<div class="text-footer">*-->
                    <!--*Follow us*-->
                <!--*</div>*-->
                <!--*<div class="social-footer">*-->
                    <!--*<a href="https://www.facebook.com/BrilliantCanaryRings" class="facebook-ico"></a>*-->
                    <!--*<a href="https://twitter.com/TheBrilliantC" class="twitter-ico"></a>*-->
                    <!--*<a href="#" class="rss-ico"></a>*-->
                    <!--*<a href="https://www.instagram.com/brilliantcanaryrings/" class="in-ico"></a>*-->
                <!--*</div>*-->
                <!--*<div class="payments-box">*-->
                    <!--*<div class="wrapper-card">*-->
                        <!--*<a href="#" class="payments-card visa"><img src="catalog/view/theme/canary/img/visa.png" alt="visa"></a>*-->
                        <!--*<a href="#" class="payments-card mastercard"><img src="catalog/view/theme/canary/img/mastercard.png" alt="mastercard"></a>*-->
                        <!--*<a href="#" class="payments-card discover"><img src="catalog/view/theme/canary/img/discover.png" alt="discover"></a>*-->
                        <!--*<a href="#" class="payments-card americanexpress"><img src="catalog/view/theme/canary/img/americanexpress.png" alt="americanexpress"></a>*-->
                        <!--*<a href="#" class="payments-card paypal"><img src="catalog/view/theme/canary/img/paypal.png" alt="paypal"></a>*-->
                    <!--*</div>*-->
                <!--*</div>*-->
            <!--*</div>*-->
        <!--*</div>*-->

    <!--*</section>*-->

</footer>


<img src="/catalog/view/theme/canary/img/preloader.png" class="container-loader" alt="" style="display: none">

<script type="text/javascript" src="/catalog/view/theme/canary/vendor/slickslider/slick.min.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/vendor/jquery.sliderPro/jquery.sliderPro.min.js"></script>

<script type="text/javascript" src="/catalog/view/theme/canary/vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/vendor/owl.carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/script.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/device.min.js"></script>
<script type="text/javascript" src="/catalog/view/javascript/app.js" ></script>
<script type="text/javascript" src="/catalog/view/javascript/common.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/jquery.inputmask.bundle.min.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/inputmask.numeric.extensions.min.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/numeral.min.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/jquery.bxslider.min.js" ></script>

</head>

</body>
</html>