<?php echo !empty($header) ? $header : '' ?>


<main class="w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <li>&nbsp;»&nbsp;</li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-12 padding-0">
                    <a href="<?=get_baners_top_random()[1]?>"><img src="<?=get_baners_top_random()[0]?>" class="bread-baner" ></a>
                </div>
            </div>
        </div>
    </div>
    <section class="static-page">
        <div class="center-bl">
            <div class="static-text-page clearfix">
                <div class="left-q">
                    <div class="wrapper-menu-stat">
                        <div class="title">INFORMATION</div>
                        <ul class="menu-block-stat">
                            <li><a href="/about_us">About Us</a></li>
                            <li><a href="/information/policies/delivery-policy">Delivery Information</a></li>
                            <li><a href="http://blog.brilliantcanary.com/" target="_blank">Blog</a></li>
                            <li><a href="/information/faq">FAQ</a></li>
                            <!--*<li><a href="#">Site Map</a></li>*-->
                        </ul>
                    </div>
                    <div class="wrapper-static-baner">
                        <img src="/catalog/view/theme/canary/img/baner-static.png" alt="img">
                    </div>
                </div>
                <div class="right-q">
                    <h1>24/7 Customer Service</h1>
                    <p>Our certified diamond experts and customer service representatives are here to help you with any inquires you may have. Please see our customer service hours below.</p>

                    <div class="contacts-info-list">
                        <div class="contacts-info-block">
                            <div class="contacts-info-img"><img src="/catalog/view/theme/canary/img/contacts-clock.png" alt=""></div>
                            <p><strong>Working Hours:</strong></p>
                            <p>Monday—Friday: 9am to 9pm (CST)</p>
                            <p>Saturday & Sunday: 10am to 7pm (CST)</p>
                        </div>
                        <div class="contacts-info-block">
                            <div class="contacts-info-img"><img src="/catalog/view/theme/canary/img/contacts-phone.png" alt=""></div>
                            <p><strong>Call Us:</strong></p>
                            <p><a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a></p>
                        </div>
                        <div class="contacts-info-block">
                            <div class="contacts-info-img"><img src="/catalog/view/theme/canary/img/contacts-mail.png" alt=""></div>
                            <p><strong>Email us:</strong></p>
                            <p>We will respond to all emails within one business day.</p>
                            <p><a href="mailto:info@brilliantcanary.com">info@brilliantcanary.com</a></p>
                        </div>
                        <div class="contacts-info-block">
                            <div class="contacts-info-img"><a href="javascript:$zopim.livechat.window.show()"><img src="/catalog/view/theme/canary/img/contacts-chat.png" alt=""></a></div>
                            <p><a href="javascript:$zopim.livechat.window.show()"><strong>Chat Online now:</strong></a></p>
                            <p>Get answers right away to any questions you may have.</p>
                        </div>
                        <div class="contacts-info-block">
                            <div class="contacts-info-img nomiddle"><img src="/catalog/view/theme/canary/img/contacts-message.png" alt=""></div>
                            <strong>Send us a Message:</strong>
                            <p>We will reply to all questions within one business day.</p>
                            <div class="form-static">
                                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <input id="it1" type="text" name="name" value="<?php echo $name; ?>" class="required" placeholder="Name" required>
                                        </div>
                                        <div class="col-sm-4">
                                            <input id="it2" type="text" name="email" value="<?php echo $email; ?>" class="required" placeholder="E-mail" required>
                                        </div>
                                        <div class="col-sm-4">
                                            <input id="it3" type="text" class="required" placeholder="Phone" required>
                                        </div>
                                    </div>
                                    <textarea id="ta1" cols="30" name="enquiry" rows="5" class="required" placeholder="Message" required><?php echo $enquiry; ?></textarea>
                                    <button class="btn w-btn-orange btn-lg"><i class="icons-rings_icon"></i>SEND</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>



<?php echo !empty($footer) ? $footer : '' ?>
