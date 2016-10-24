<footer>
    <section>
        <div class="row w-footer-newsletter">
            <div class="center-bl">
                <div class="col-md-4 col-sm-3">
                    <div class="h3">
                        Sign up to receive Exclusive Offers & News
                    </div>
                </div>
                <div class="col-md-8 col-sm-9">
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
                <div class="col-md-12 col-sm-12">
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
                    <a href="/" class="footer-logo"><img src="/catalog/view/theme/canary/img/logo_new_footer.png" width="auto" class="logo-futer" alt="briliantcanary"></a>
                    <ul class="list-inline text-right">
                        <li><a href="https://www.facebook.com/BrilliantCanaryRings" class="icon-facebook"></a></li>
                        <li><a href="https://twitter.com/TheBrilliantC" class="icon-twitter"></a></li>
                        <li><a href="https://www.instagram.com/brilliantcanaryrings/" class="icon-instagram"></a></li>
                        <li><a href="" class="icon-p"></a></li>
                    </ul>
                    <div class="text-left margin-top-20 w-copirait">
                        <p>© 2016. All rights reserved.</p>
                        <p>
                            <a href="">Privacy Policy</a>
                            <span>|</span>
                            <a href="">Terms & Conditions</a>
                            <span>|</span>
                            <a href="">Cookie Policy</a>
                        </p>
                    </div>
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
</footer>
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

<script type="text/javascript" src="/catalog/view/theme/canary/js/jquery.bxslider.min.js" ></script>

</body>
</html>