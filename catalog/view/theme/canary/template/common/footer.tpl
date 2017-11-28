<footer>
    <section>
        <div class="row w-footer-newsletter">
            <div class="center-bl">
                <div class="col-md-4 col-sm-4">
                    <div class="h3">
                        Sign up to receive Exclusive Offers & News
                    </div>
                </div>
                <div class="col-md-8 col-sm-8">
                    <!--*<?=$newsletter?>*-->
                    <?=$mailchimp_newslrtter_form?>
                </div>
            </div>
        </div>
        <div class="row w-row-footer-menu">
            <div class="center-bl">
                <div class="col-md-12 col-sm-12">
                    <ul class="list-inline">
                        <li><a href="<?php echo $categories[1]['href']?>"><?php echo $categories[1]['name']?></a></li>
                        <li><span>.</span></li>
                        <li><a href="<?php echo $categories[2]['href']?>"><?php echo $categories[2]['name']?></a></li>
                        <li><span>.</span></li>
                        <li><a href="/diamonds">DIAMONDS</a></li>
                        <li><span>.</span></li>
                        <li><a href="<?php echo $categories[4]['href']?>"><?php echo $categories[4]['name']?></a></li>
                        <li><span>.</span></li>
                        <li><a href="<?php echo $categories[3]['href']?>"><?php echo $categories[3]['name']?></a></li>
                        <!--*<li><span>.</span></li>*-->
                        <!--*<li><a href="/information/education">INFO</a></li>*-->
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <div class="row w-footer-down">
        <section class="footer-menu clearfix">
            <div class="clearfix">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="paging-right-50">
                        <a href="/" class="footer-logo"><img src="/catalog/view/theme/canary/img/logo_new_footer.png" width="auto" class="logo-futer" alt="briliantcanary"></a>
                        <div class="panel-group visible-xs footer-top-collapse" id="accordion2">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion2" href="#collapse4" class="collapsed">
                                            <?php echo $categories[1]['name']?>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse4" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <?foreach ($categories[1]['children'] as $row):?>
                                                <li><a href="<?=$row['href']?>"><?=$row['name']?></a></li>
                                            <?endforeach?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion2" href="#collapse5" class="collapsed">
                                            <?php echo $categories[2]['name']?>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse5" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><b>WEDDING RINGS FOR WOMAN</b></li>
                                            <li><a href="<?php echo $categories[2]['children'][0]['href']?>"><?php echo $categories[2]['children'][0]['name']?></a></li>
                                            <li><a href="<?php echo $categories[2]['children'][1]['href']?>"><?php echo $categories[2]['children'][1]['name']?></a></li>
                                            <li><a href="<?php echo $categories[2]['children'][2]['href']?>"><?php echo $categories[2]['children'][2]['name']?></a></li>
                                            <li><a href="<?php echo $categories[2]['children'][3]['href']?>"><?php echo $categories[2]['children'][3]['name']?></a></li>
                                            <li><b>WEDDING RINGS FOR MEN</b></li>
                                            <li><a href="<?php echo $categories[2]['children'][4]['href']?>"><?php echo $categories[2]['children'][4]['name']?></a></li>
                                            <li><a href="<?php echo $categories[2]['children'][5]['href']?>"><?php echo $categories[2]['children'][5]['name']?></a></li>
                                            <li><a href="<?php echo $categories[2]['children'][6]['href']?>"><?php echo $categories[2]['children'][6]['name']?></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion2" href="#collapse6" class="collapsed"><?php echo $categories[0]['name']?></a></h4>
                                </div>
                                <div id="collapse6" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
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
                                    <h4 class="panel-title"><a href="<?php echo $categories[4]['href']?>" class="collapsed"><?php echo $categories[4]['name']?></a></h4>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion2" href="#collapse8" class="collapsed">
                                            <?php echo $categories[3]['name']?>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse8" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="<?php echo $categories[3]['children'][6]['href']?>/all-metals"><?php echo $categories[3]['children'][6]['name']?></a></li>
                                            <li><a href="<?php echo $categories[3]['children'][4]['href']?>/all-metals"><?php echo $categories[3]['children'][4]['name']?></a></li>
                                            <li><a href="<?php echo $categories[3]['children'][2]['href']?>/all-metals"><?php echo $categories[3]['children'][2]['name']?></a></li>
                                            <li><a href="<?php echo $categories[3]['children'][9]['href']?>/all-metals"><?php echo $categories[3]['children'][9]['name']?></a></li>
                                            <li><a href="<?php echo $categories[3]['children'][7]['href']?>"><?php echo $categories[3]['children'][7]['name']?></a></li>
                                            <li><a href="<?php echo $categories[3]['children'][3]['href']?>"><?php echo $categories[3]['children'][3]['name']?></a></li>
                                            <li><a href="<?php echo $categories[3]['children'][0]['href']?>"><?php echo $categories[3]['children'][0]['name']?></a></li>
                                            <li><a href="<?php echo $categories[3]['children'][1]['href']?>"><?php echo $categories[3]['children'][1]['name']?></a></li>
                                            <li><a href="<?php echo $categories[3]['children'][8]['href']?>"><?php echo $categories[3]['children'][8]['name']?></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-group visible-xs footer-bottom-collapse" id="accordion3">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion3" href="#collapse1" class="collapsed">
                                            Information
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse1" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="/company">About Us</a></li>
                                            <?php foreach ($informations as $information):?>
                                                <?if ($information['top'] == 1):?>
                                                    <li><a href="<?php echo $information['href']; ?>" class="w-general-category"><?php echo $information['title']; ?></a></li>
                                                <?endif?>
                                            <?endforeach?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion3" href="#collapse2" class="collapsed">We Offer More</a></h4>
                                </div>
                                <div id="collapse2" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="#"></a></li>
                                            <?php foreach ($informations as $information):?>
                                                <?if ($information['top'] == 2):?>
                                                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                                                <?endif?>
                                            <?endforeach?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion3" href="#collapse3" class="collapsed">Why Pick Brilliant Canary?</a></h4>
                                </div>
                                <div id="collapse3" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <?php foreach ($informations as $information):?>
                                                <?if ($information['top'] == 3):?>
                                                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                                                <?endif?>
                                            <?endforeach?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix">
                            <div class="box-right-footer">
                                <div class="title-follow ">Follow us</div>
                                <ul class="list-inline text-right">
                                    <li><a href="https://www.bbb.org/nashville/business-reviews/jewelers-retail/brilliant-canary-in-nashville-tn-37144907"><span class="icon-ab-seal"></span></a></li>
                                    <li><a href="https://www.facebook.com/BrilliantCanaryRings" target="_blank" class="icon-facebook"></a></li>
                                    <li><a href="https://twitter.com/TheBrilliantC" target="_blank" class="icon-twitter"></a></li>
                                    <li><a href="https://www.instagram.com/brilliantcanaryrings/" target="_blank" class="icon-instagram"></a></li>
                                    <li><a href="https://www.pinterest.com/brilliantcanary/" target="_blank" class="icon-p"></a></li>
                                </ul>
                            </div>
                            <dl class="contact-mobile">
                                <dt>CONTACT US</dt>
                                <dd><a  href="mailto:info@brilliantcanary.com"><span class="icon-email"></span>info@brilliantcanary.com</a></dd>
                                <dd><a href="tel:800-214-6550"><span class="icon-tel"></span>800-214-6550</a></dd>
                            </dl>
                        </div>
                        <div class="text-left margin-top-20 w-copirait mobile-none">
                            <p>© 2016. All rights reserved.</p>
                            <p>
                                <a href="/information/policies/privacy-policy">Privacy Policy</a><span>|</span>
                                <a href="/information/policies/terms-conditions">Terms & Conditions</a><span>|</span>
                                <a href="/information/policies/cookie-policy">Cookie Policy</a><span>|</span>
                                <a href="/information/policies/return-policy">Return Policy</a><span>|</span>
                            </p>
                        </div>
                    </div>
                </div>
                <?//dd($informations)?>
                <div class="col-md-8 col-sm-8 col-xs-12 hidden-xs">
                    <div class="row content-footer">
                        <div class="col-md-3 col-sm-4 col-xs-6">
                            <dl>
                                <dt>INFORMATION</dt>
                                <dd><a href="/company">About Us</a></dd>
                                <dd><a href="/information/policies/delivery-policy">Delivery Information</a></dd>

                                <?php foreach ($informations as $information):?>

                                    <?if ($information['top'] == 1):?>
                                        <dd><a href="<?php echo $information['href']; ?>" class="w-general-category"><?php echo $information['title']; ?></a></dd>
                                    <?endif?>

                                <?endforeach?>
                                <dd><a href="<?=$contact?>">Contact Us</a></dd>
                                <dd><a href="http://blog.brilliantcanary.com/">Blog</a></dd>
                                <dd><a href="<?=$faq?>">FAQ</a></dd>
                            </dl>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                            <dl>
                                <dt>WE OFFER MORE</dt>
                                    <?php foreach ($informations as $information):?>
                                        <?if ($information['top'] == 2):?>
                                            <dd><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></dd>
                                        <?endif?>
                                    <?endforeach?>
                            </dl>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6">
                            <dl>
                                <dt>WHY PICK <br>BRILLIANT CANARY?</dt>
                                <?php foreach ($informations as $information):?>
                                    <?if ($information['top'] == 3):?>
                                        <dd><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></dd>
                                    <?endif?>
                                <?endforeach?>
                            </dl>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-6 padding-0">
                            <dl>
                                <dt>CONTACT US</dt>
                                <dd><a href="mailto:info@brilliantcanary.com"><span class="icon-email"></span>info@brilliantcanary.com</a></dd>
                                <dd><a href="tel:800-214-6550"><span class="icon-tel"></span>800-214-6550</a></dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-left margin-top-20 w-copirait mobile-block">
                <p>© 2016. All rights reserved.
                    <a href="/information/policies/privacy-policy">Privacy Policy</a><span>|</span>
                    <a href="/information/policies/terms-conditions">Terms & Conditions</a><span>|</span>
                    <a href="/information/policies/cookie-policy">Cookie Policy</a><span>|</span>
                    <a href="/information/policies/return-policy">Return Policy</a>
                </p>
            </div>
        </section>
    </div>
    <?if (!empty($newsletter_cookie)):?>
        <script>
            $(function () {
//                setTimeout(function(){
                    //$('#ModalHomeSubskribe').modal('show');
                    $('#ModalAkcia').modal('show');
//                }, 60000);
            });
        </script>
        <div class="modal fade hidden-xs" id="ModalHomeSubskribe" tabindex="-1" role="dialog" aria-labelledby="ModalHomeSubskribeLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span>&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">JOIN OUR MAILING LIST</h4>
                    </div>
                    <div class="modal-body">
                        <div class="modal-body-img">
                            <div>
                                <div class="top-body-text">
                                    <p class="top-body-text-1">SIGN UP NOW TO GET</p>
                                    <p class="top-body-text-2">$100 OFF &#42;</p>
                                    <p class="top-body-text-3">YOUR FIRST PURCHASE!</p>
                                </div>
                                <div class="text-center">
                                    <span class="text-centr-img">
                                        Be the first to hear <br>
                                        about exclusive offers <br>
                                        jewelry trends and brilliant updates.
                                    </span>
                                </div>
                                <!--*<?=$newsletter_coupon?>*-->
                                <?=$mailchimp_newslrtter_form2?>
                            </div>
                        </div>
                    </div>
                    <p>
                        &#42; Offer cannot be combined with any other offer, discount or promotion code.
                    </p>
                </div>
            </div>
        </div>
        <!--*<div class="modal fade hidden-xs" id="ModalHomeSubskribe" tabindex="-1" role="dialog" aria-labelledby="ModalHomeSubskribeLabel" aria-hidden="true">*-->
            <!--*<div class="modal-dialog">*-->
                <!--*<div class="row bloc-demo-summer">*-->
                    <!--*<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span>&times;</span></button>*-->
                    <!--*<div class="col-md-6 w-left-bloc">*-->
                        <!--*<div class="margin-top-40"><h1 class="text-center">end of the</h1></div>*-->
                        <!--*<div><h1 class="text-summer text-center">SUMMER</h1></div>*-->
                        <!--*<img src="/catalog/view/theme/canary/img/demo_new_template/sale_summer.jpg" alt="">*-->
                    <!--*</div>*-->
                    <!--*<div class="col-md-6 w-right-bloc">*-->
                        <!--*<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span>&times;</span></button>*-->
                        <!--*sdf*-->
                    <!--*</div>*-->
                    <!--*<img src="/catalog/view/theme/canary/img/demo_new_template/summer.jpg" alt="">*-->
                <!--*</div>*-->

            <!--*</div>*-->
        <!--*</div>*-->
    <?endif?>
    <div class="modal fade hidden-xs" id="ModalAkcia" tabindex="-1" role="dialog" aria-labelledby="ModalAkciaLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                 <span class="sale-extended" style="background-color: red; display: block;color: #ffffff;font-weight: bold;text-align: center;">SALE EXTENDED!</span>
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span>&times;</span></button>
                </div>
                <div class="modal-body">

                    <div class="w-bloc-cat">
                        <p class="dowm-text-baner-akcia">Enjoy additional 10% discount! Use code CYBER10 at checkout.</p>
                        <table class="w-list-cat">
                            <tr>
                                <td><div class="w-item1"><a href="/engagement-rings">ENGAGEMENT RINGS</a></div></td>
                                <td><div class="w-item2"></div></td>
                                <td><div class="w-item3"><a href="/fine-jewelry">JEWELRY & GIFTS</a></div></td>
                            </tr>
                            <tr>
                                <td><div class="w-item1"><a href="/wedding-rings">WEDDING RINGS</a></div></td>
                                <td><div class="w-item2"></div></td>
                                <td><div class="w-item3"><a href="/gemstones">GEMSTONES</a></div></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <p>Offer does not include loose diamonds and cannot be combined with any other offer or discount code.</p>
                </div>
            </div>
        </div>
    </div>
</footer>
<img src="/catalog/view/theme/canary/img/preloader.png" class="container-loader" alt="" style="display: none">
<script type="text/javascript" src="/catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/vendor/jquery-ui/jquery-ui.min.js"></script>
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
<script type="text/javascript" src="/catalog/view/theme/canary/js/script-1480446067724.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/stylesheet/stacktable/stacktable.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/device.min.js"></script>
<script type="text/javascript" src="/catalog/view/theme/canary/stylesheet/stacktable/stacktable.js" ></script>
<script type="text/javascript" src="/catalog/view/javascript/app-1490791775008.js" ></script>
<script type="text/javascript" src="/catalog/view/javascript/common-1479080055294.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/jquery.easydropdown.min.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/jquery.inputmask.bundle.min.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/inputmask.numeric.extensions.min.js" ></script>
<script type="text/javascript" src="/catalog/view/theme/canary/js/numeral.min.js" ></script>
<script type="text/javascript" src="/catalog/view/javascript/jquery.validate.min.js" ></script>

<script async="async" type="text/javascript">
    var google_tag_params = {
        ecomm_prodid: 'REPLACE_WITH_VALUE',
        ecomm_pagetype: 'REPLACE_WITH_VALUE',
        ecomm_totalvalue: 'REPLACE_WITH_VALUE',
    };
</script>

<script async="async" type="text/javascript" src="//cdn.callbackhunter.com/cbh.js?hunter_code=10292ae233c1160ee2d7528ed3d12d63" charset="UTF-8"></script>
<script async="async" type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
</body>
</html>