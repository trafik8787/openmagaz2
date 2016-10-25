
<footer>
    <section class="newsletter-main clearfix">
        <div class="newsletter-form background-4">
            <?=$newsletter?>
        </div>
        <div class="bg-right"></div>
    </section>

    <section class="footer-menu">
        <div class="wrapper-footer clearfix">
            <div class="one-block">
                <div class="title">CONTACT US</div>
                <div class="one-line"><i class="mail-ico"></i><span>info@brilliantcanary.com</span></div>
                <div class="one-line"><i class="call-2-ico"></i><span>800-214-6550</span></div>
            </div>
            <div class="one-block">
                <div class="title">INFORMATION</div>
                <ul>
                    <?php foreach ($informations as $information) { ?>
                        <?if ($information['bottom'] == 1):?>
                        <li><a href="<?php echo $information['href']; ?>" class="w-general-category">- <?php echo $information['title']; ?></a></li>
                        <?endif?>
                    <?php } ?>
                    <li><a href="<?php echo $contact; ?>" class="w-general-category">- <?php echo $text_contact; ?></a></li>
                    <li><a href="<?php echo $sitemap; ?>" class="w-general-category">- <?php echo $text_sitemap; ?></a></li>
                    <li><a href="/faq" class="w-general-category">- FAQ</a></li>
                </ul>
            </div>
            <div class="one-block">
                <div class="title">WHY PICK BRILLIANT CANARY?</div>
                <ul>
                    <?php foreach ($informations as $information):?>

                        <?if ($information['top'] == 1):?>
                            <li><a href="<?php echo $information['href']; ?>" class="w-general-category">- <?php echo $information['title']; ?></a></li>
                        <?endif?>

                    <?endforeach?>
                </ul>
            </div>
            <div class="one-block">
                <div class="text-footer">
                    Follow us
                </div>
                <div class="social-footer">
                    <a href="#" class="facebook-ico"></a>
                    <a href="#" class="twitter-ico"></a>
                    <a href="#" class="rss-ico"></a>
                    <a href="#" class="in-ico"></a>
                </div>
                <div class="payments-box">
                    <div class="wrapper-card">
                        <a href="#" class="payments-card visa"><img src="/catalog/view/theme/canary/img/visa.png" alt="visa"></a>
                        <a href="#" class="payments-card mastercard"><img src="/catalog/view/theme/canary/img/mastercard.png" alt="mastercard"></a>
                        <a href="#" class="payments-card discover"><img src="/catalog/view/theme/canary/img/discover.png" alt="discover"></a>
                        <a href="#" class="payments-card americanexpress"><img src="/catalog/view/theme/canary/img/americanexpress.png" alt="americanexpress"></a>
                        <a href="#" class="payments-card paypal"><img src="/catalog/view/theme/canary/img/paypal.png" alt="paypal"></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright text-center">
            ©2016 All Rights Reserved <a href="/privacy" class="w-general-category">Privacy Policy</a>
        </div>
    </section>

</footer>

<script type="text/javascript">
    var google_tag_params = {
        ecomm_prodid: 'REPLACE_WITH_VALUE',
        ecomm_pagetype: 'REPLACE_WITH_VALUE',
        ecomm_totalvalue: 'REPLACE_WITH_VALUE',
    };
</script>
<script type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 878299355;
    var google_custom_params = window.google_tag_params;
    var google_remarketing_only = true;
    /* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
    <div style="display:inline;">
        <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/878299355/?guid=ON&amp;script=0"/>
    </div>
</noscript>

<img src="/catalog/view/theme/canary/img/preloader.png" class="container-loader" alt="" style="display: none">

<script type="text/javascript" src="/catalog/view/theme/canary/vendor/select2/dist/js/select2.min.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/vendor/slickslider/slick.min.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/vendor/jquery.sliderPro/jquery.sliderPro.min.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/vendor/owl.carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="/catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="/catalog/view/javascript/jquery/datetimepicker/moment.js"></script>
<script type="text/javascript" src="/catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/script.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/device.min.js"></script>
<script type="text/javascript" src="/catalog/view/javascript/app.js" ></script>
<script type="text/javascript" src="/catalog/view/javascript/common.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/jquery.easydropdown.min.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/jquery.inputmask.bundle.min.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/inputmask.numeric.extensions.min.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/numeral.min.js" ></script>



</body>
</html>