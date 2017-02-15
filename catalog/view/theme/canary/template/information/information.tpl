<?php echo !empty($header) ? $header : '' ?>

<main class="w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <?if (!empty($breadcrumb['href'])):?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <?else:?>
                        <li><?php echo $breadcrumb['text']; ?></li>
                        <?endif?>
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


        <div class="about-page">
            <div class="center-bl">
                <div class="static-text-page clearfix">
                    <div class="left-q">
                        <div class="wrapper-menu-stat">
                            <div class="title">INFORMATION</div>
                            <ul class="menu-block-stat" id="accordion">
                                <li><a data-toggle="collapse" data-parent="#accordion" href="#collapse1" >About Us</a></li>
                                <li class="no-marcer collapse" id="collapse1">
                                    <ul class="menu-block-stat">
                                        <li><a href="/company">About Us</a></li>
                                        <li><a href="/information/about-us/quality">Quality</a></li>
                                        <li><a href="/information/services/military-discount">Military Discount</a></li>
                                        <li><a href="/information/services/helping-others">Helping Others</a></li>
                                        <li><a href="/information/services/made-in-usa">Made in USA</a></li>
                                        <li><a href="/information/policies/conflict-free-diamonds">Conflict Free Diamonds</a></li>
                                    </ul>
                                </li>
                                <li><a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Services</a></li>
                                <li class="no-marcer collapse" id="collapse2">
                                    <ul class="menu-block-stat">
                                        <li><a href="/information/services/free-and-insured-shipping">Free Insured Shipping</a></li>
                                        <li><a href="/information/services/certified-gemologist-appraisals">GIA Certified Gemologist Appraisals</a></li>
                                        <li><a href="/information/services/price-match-guarantee">Price Match Guarantee</a></li>
                                        <li><a href="/information/services/lifetime-warranty">Lifetime Warranty</a></li>
                                        <li><a href="/information/services/free-ring-resizing">Free Ring Resizing</a></li>
                                        <li><a href="/information/services/free_engraving">Free Ring Engraving</a></li>
                                    </ul>
                                </li>

                                <li><a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Policies</a></li>
                                <li class="no-marcer collapse" id="collapse3">
                                    <ul class="menu-block-stat">
                                        <li><a href="/information/policies/terms-conditions">Terms & Conditions</a></li>
                                        <li><a href="/information/policies/privacy-policy">Privacy Policy</a></li>
                                        <li><a href="/information/policies/cookie-policy">Cookie Policy</a></li>
                                        <li><a href="/information/policies/return-policy">Return Policy</a></li>
                                    </ul>
                                </li>
                                
                                <!--*<li><a href="/information/policies/delivery-policy">Delivery Information</a></li>*-->
                                <li><a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Contact Us</a></li>
                                <li class="no-marcer collapse" id="collapse4">
                                    <ul class="menu-block-stat">
                                        <li><a href="/company/contacts">Contact Us</a></li>
                                    </ul>
                                </li>
                                <li><a href="http://blog.brilliantcanary.com/" target="_blank">Blog</a></li>
                                <li><a href="/information/faq">FAQ</a></li>
                                <!--*<li><a href="#">Site Map</a></li>*-->
                            </ul>
                        </div>
                        <div class="wrapper-static-baner">
                            <img src="/catalog/view/theme/canary/img/baner-static.png" alt="img">
                        </div>
                        <div class="wrapper-post-stat">
                            <div class="title">FEATURED POSTS<br/> FROM THE BLOG:</div>

                            <?if (!empty($bloges)):?>

                                <?foreach ($bloges as $row):?>
                                    <div class="thumbnail">
                                        <div class="marc-date">
                                            <strong><?=$row['date_m']?></strong>
                                            <div><?=$row['date_d']?></div>
                                        </div>
                                        <img src="<?=$row['img']?>" alt="img">
                                        <div class="caption">
                                            <?=$row['title']?>
                                        </div>
                                        <a href="<?=$row['link']?>" class="btn btn-default">Read more</a>
                                    </div>
                                <?endforeach?>

                            <?endif?>

                        </div>
                    </div>
                    <div class="right-q">
                        <h1><?php echo $heading_title; ?></h1>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <?php echo $description; ?>
                            </div>
                        </div>


                        <div class="title-stat margin-top-30">Send us a Message</div>
                        <span>We will reply to all questions within one business day</span>
                        <div class="form-static">
                            <form action="">
                                <textarea placeholder="Message"></textarea>
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-4">
                                        <input type="text" placeholder="Name">
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-4">
                                        <input type="email" placeholder="E-mail">
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-4">
                                        <input type="tel" placeholder="Phone">
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <button class="btn w-btn-orange btn-lg"><div class="icons-rings_icon"></div>SEND</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</main>

<script>
    $(function () {
       $('#accordion li a').each(function () {
           if ($(this).attr('href') == location.pathname) {
               $(this).parents('.collapse').collapse('show');
               $(this).parent().addClass('active');
           } else {
               $(this).parent().removeClass('active');
           }
//           console.log($(this).attr('href'));
       });
    });
//    console.log(location.pathname);
</script>


<?php echo !empty($footer) ? $footer : '' ?>