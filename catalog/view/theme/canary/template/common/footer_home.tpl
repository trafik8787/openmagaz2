
<footer>
    <section class="newsletter-main clearfix">
        <div class="newsletter-form">
            <div class="wrapper-form">
                <div class="title">
                    NEWSLETTER
                </div>
                <div class="text">
                    This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.<br/>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat i
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
                        <button class="form-brand">subskribe</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="bg-right"></div>
    </section>
    <section class="brand-slider">
        <div id="owl-demo" class="owl-carousel brand-footer">
            <div class="item">
                <a href="#"><img src="catalog/view/theme/canary/img/brand1.png" alt="brand1"></a>
            </div>
            <div class="item">
                <a href="#"><img src="catalog/view/theme/canary/img/brand2.png" alt="brand2"></a>
            </div>
            <div class="item">
                <a href="#"><img src="catalog/view/theme/canary/img/brand3.png" alt="brand3"></a>
            </div>
            <div class="item">
                <a href="#"><img src="catalog/view/theme/canary/img/brand4.png" alt="brand4"></a>
            </div>
            <div class="item">
                <a href="#"><img src="catalog/view/theme/canary/img/brand5.png" alt="brand5"></a>
            </div>
        </div>
    </section>
    <section class="footer-menu">
        <div class="wrapper-footer clearfix">
            <div class="one-block">
                <div class="title">CONTACT US</div>
                <div class="one-line"><i class="pin-ico"></i><span>123 New York Land, king street, USA</span></div>
                <div class="one-line"><i class="mail-ico"></i><span>Info@your adress.com</span></div>
                <div class="one-line"><i class="call-2-ico"></i><span>877-826-9866</span></div>
            </div>
            <div class="one-block">
                <div class="title">INFORMATION</div>
                <ul>
                    <?php foreach ($informations as $information) { ?>
                        <li><a href="<?php echo $information['href']; ?>">- <?php echo $information['title']; ?></a></li>

                    <?php } ?>
                    <li><a href="<?php echo $contact; ?>">- <?php echo $text_contact; ?></a></li>
                    <li><a href="<?php echo $sitemap; ?>">- <?php echo $text_sitemap; ?></a></li>
                </ul>
            </div>
            <div class="one-block">
                <div class="title">Style advision</div>
                <ul>
                    <li><a href="#">- About Us</a></li>
                    <li><a href="#">- New Products</a></li>
                    <li><a href="#">- Sale</a></li>
                    <li><a href="#">- Our brang</a></li>
                    <li><a href="#">- Letter</a></li>
                </ul>
            </div>
            <div class="one-block">
                <div class="text-footer">
                    This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean. Proin gravida nibh vel velit auctor aliquet. Aenean.
                </div>
                <div class="social-footer">
                    <a href="#" class="facebook-ico"></a>
                    <a href="#" class="twitter-ico"></a>
                    <a href="#" class="rss-ico"></a>
                    <a href="#" class="in-ico"></a>
                </div>
                <div class="payments-box">
                    <div class="wrapper-card">
                        <a href="#" class="payments-card visa"><img src="catalog/view/theme/canary/img/visa.png" alt="visa"></a>
                        <a href="#" class="payments-card mastercard"><img src="catalog/view/theme/canary/img/mastercard.png" alt="mastercard"></a>
                        <a href="#" class="payments-card discover"><img src="catalog/view/theme/canary/img/discover.png" alt="discover"></a>
                        <a href="#" class="payments-card americanexpress"><img src="catalog/view/theme/canary/img/americanexpress.png" alt="americanexpress"></a>
                        <a href="#" class="payments-card paypal"><img src="catalog/view/theme/canary/img/paypal.png" alt="paypal"></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            ©2016.
        </div>
    </section>

</footer>

<div class="container-loader container1" style="display: none">
    <div class="circle circle1"></div>
    <div class="circle circle2"></div>
    <div class="circle circle3"></div>
</div>



<script type="text/javascript" src="catalog/view/theme/canary/vendor/slickslider/slick.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/canary/vendor/jquery.sliderPro/jquery.sliderPro.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/canary/vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/canary/vendor/owl.carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/canary/js/script.js"></script>
<script type="text/javascript" src="catalog/view/theme/canary/js/device.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/app.js" ></script>
<script type="text/javascript" src="catalog/view/javascript/common.js" ></script>


</body>
</html>