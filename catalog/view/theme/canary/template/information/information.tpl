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


        <div class="about-page">
            <div class="center-bl">
                <div class="static-text-page clearfix">
                    <div class="left-q">
                        <div class="wrapper-menu-stat">
                            <div class="title">INFORMATION</div>
                            <ul class="menu-block-stat">
                                <li><a href="/about_us">About Us</a></li>
                                <li><a href="/delivery">Delivery Information</a></li>
                                <li><a href="/company/contacts">Contact Us</a></li>
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
                            <div class="thumbnail">
                                <div class="marc-date">
                                    <strong>Sep</strong>
                                    <div>29</div>
                                </div>
                                <img src="/catalog/view/theme/canary/img/img262.png" alt="img">
                                <div class="caption">
                                    Ancient India and the Origins of Diamond Investing
                                </div>
                                <a href="#" class="btn btn-default">Read more</a>
                            </div>
                            <div class="thumbnail">
                                <div class="marc-date">
                                    <strong>Aug</strong>
                                    <div>25</div>
                                </div>
                                <img src="/catalog/view/theme/canary/img/img263.png" alt="img">
                                <div class="caption">
                                    The Pink Star set to Smash Auction Records 2016
                                </div>
                                <a href="#" class="btn btn-default">Read more</a>
                            </div>
                        </div>
                    </div>
                    <div class="right-q">
                        <h1><?php echo $heading_title; ?></h1>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <?php echo $description; ?>
                            </div>
                        </div>


                        <div class="title-stat">FORM IN THE TEXT</div>
                        <div class="form-static">
                            <form action="">
                                <textarea placeholder="Enter your text here"></textarea>
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-4">
                                        <input type="text" placeholder="Enter First Name">
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-4">
                                        <input type="text" placeholder="Enter Second Name">
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-4">
                                        <input type="text" placeholder="Enter Email">
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




<?php echo !empty($footer) ? $footer : '' ?>