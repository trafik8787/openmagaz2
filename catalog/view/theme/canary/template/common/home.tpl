
<?php echo $header; ?>
<?//dd($categories)?>
<main class="w-general-container">
    <section class="top-main-r top-main-r1">
        <div class="wrapper-main-r">
            <div class="title">This is Photoshop version</div>
            <div class="text">
                This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.
            </div>
            <a href="#" class="brand-btn">shop now</a>
        </div>
    </section>
    <div class="panel-group brilliant-panel-main" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m1" aria-expanded="false">
                        DIAMONDS
                    </a>
                </h4>
            </div>
            <div id="collapse-m1" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <ul class="brilliant-style clearfix">
                        <li>
                            <a href="/diamonds?&shape=Round"><span class="box-ico"><i class="brilliant-ico2 brilliant-s1"></i></span><span>Round Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Princess"><span class="box-ico"><i class="brilliant-ico2 brilliant-s2"></i></span><span>Princess Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Emerald"><span class="box-ico"><i class="brilliant-ico2 brilliant-s3"></i></span><span>Emerald Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Asscher"><span class="box-ico"><i class="brilliant-ico2 brilliant-s4"></i></span><span>Asscher Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Oval"><span class="box-ico"><i class="brilliant-ico2 brilliant-s5"></i></span><span>Oval Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Radiant"><span class="box-ico"><i class="brilliant-ico2 brilliant-s6"></i></span><span>Radiant Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Pear"><span class="box-ico"><i class="brilliant-ico2 brilliant-s7"></i></span><span>Pear Shaped</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Heart"><span class="box-ico"><i class="brilliant-ico2 brilliant-s8"></i></span><span>Heart Shaped</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Marquise"><span class="box-ico"><i class="brilliant-ico2 brilliant-s9"></i></span><span>Marquise Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Cushion"><span class="box-ico"><i class="brilliant-ico2 brilliant-s10"></i></span><span>Cushion Cut</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m2" aria-expanded="false">
                        <?php echo $categories[1]['name']?><!--ENGAGEMENT RINGS-->
                    </a>
                </h4>
            </div>
            <div id="collapse-m2" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <ul class="brilliant-style">

                        <?foreach ($categories[1]['children'] as $key =>$row):?>
                            <li>
                                <a href="<?=$row['href']?>"><span class="box-ico"><i class="brilliant-ico brilliant-s<?=$key+1?>"></i></span><span><?=$row['name']?></span></a>
                            </li>
                        <?endforeach?>

                    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m3" aria-expanded="false">
                        WEDDING RINGS
                    </a>
                </h4>
            </div>
            <div id="collapse-m3" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <div class="title">woman</div>
                    <ul class="brilliant-style brilliant-style-long ul-first-drop clearfix">
                        <li>
                            <a href="#"><i class="wedding1"></i>classik</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding2"></i>carved</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding3"></i>diamond</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding4"></i>aniversary</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding5"></i>eternity</a>
                        </li>
                    </ul>
                    <div class="title">man</div>
                    <ul class="brilliant-style brilliant-style-long ul-first-drop clearfix">
                        <li>
                            <a href="#"><i class="wedding1"></i>classik</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding6"></i>carved</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding3"></i>diamond</a>
                        </li>
                        <li>
                            <a href="#"><i class="wedding7"></i>alternative</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m4" aria-expanded="false">
                        GEMSTONES
                    </a>
                </h4>
            </div>
            <div id="collapse-m4" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <ul class="brilliant-style gemstones-box">
                        <li>
                            <a href="#"><i class="gemstones gemstones1"></i><span>blue suphire</span></a>
                        </li>
                        <li>
                            <a href="#"><i class="gemstones gemstones2"></i><span>blue suphire</span></a>
                        </li>
                        <li>
                            <a href="#"><i class="gemstones gemstones3"></i><span>blue suphire</span></a>
                        </li>
                        <li>
                            <a href="#"><i class="gemstones gemstones4"></i><span>blue suphire</span></a>
                        </li>
                        <li>
                            <a href="#"><i class="gemstones gemstones5"></i><span>blue suphire</span></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m5" aria-expanded="false">
                        FINE JEWELRY
                    </a>
                </h4>
            </div>
            <div id="collapse-m5" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <ul class="style-br-long ul-first-drop fine-jewerly-ul">
                        <li>
                            <a href="#"><span class="wrap-ico2"><i class="own-b own-b-15"></i></span> <span>Diamond studs</span></a>
                        </li>
                        <li>
                            <a href="#"><span class="wrap-ico2"><i class="own-b own-b-9"></i></span> <span>Matching Gemstone Pairs</span></a>
                        </li>
                        <li>
                            <a href="#"><span class="wrap-ico2"><i class="own-b own-b-10"></i></span> <span>Diamond studs</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <ul class="mobile-link-menu">
        <li><a href="#">EDUCATION</a></li>
        <li><a href="#">FAQ</a></li>
        <li><a href="#">ABOUT</a></li>
    </ul>
    <section class="privilege center-bl clearfix">
        <div class="col-md-4 col-sm-4 col-xs-4">
            <div class="wrapper-box">
                <div class="wrapper-ico">
                    <i class="shipping-ico"></i>
                </div>
                <div class="title">FREE SHIPPING</div>
                <p>Donec at mattis purus, ut accumsan nisl. Lorem ipsum dolor sit amet.</p>
            </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-4">
            <div class="wrapper-box">
                <div class="wrapper-ico">
                    <i class="money-ico"></i>
                </div>
                <div class="title">100% MONEY BACK</div>
                <p>
                    Donec at mattis purus, ut accumsan nisl. Lorem ipsum dolor sit amet, consectetur
                </p>
            </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-4">
            <div class="wrapper-box">
                <div class="wrapper-ico">
                    <i class="support-ico"></i>
                </div>
                <div class="title">ONLINE SUPPORT 24/7</div>
                <p>
                    Donec at mattis purus, ut accumsan nisl. Lorem ipsum dolor sit amet
                </p>
            </div>
        </div>
    </section>
    <section class="box-img-main clearfix">
        <div class="ih-item colored effect5">
            <a href="#">
                    <span class="img">
                        <img src="catalog/view/theme/canary/img/img2.png" alt="img">
                    </span>
                    <span class="info">
                        <span class="info-back">
                            <span>diamond<br/>collection</span>
                        </span>
                    </span>
            </a>
        </div>
        <div class="ih-item colored effect5">
            <a href="#">
                    <span class="img">
                        <img src="catalog/view/theme/canary/img/img3.png" alt="img">
                    </span>
                    <span class="info">
                        <span class="info-back">
                            <span>diamond<br/>collection</span>
                        </span>
                    </span>
            </a>
        </div>
        <div class="ih-item colored effect5">
            <a href="#">
                    <span class="img">
                        <img src="catalog/view/theme/canary/img/img4.png" alt="img">
                    </span>
                    <span class="info">
                        <span class="info-back">
                            <span>diamond<br/>collection</span>
                        </span>
                    </span>
            </a>
        </div>
        <div class="ih-item colored effect5">
            <a href="#">
                    <span class="img">
                        <img src="catalog/view/theme/canary/img/img5.png" alt="img">
                    </span>
                    <span class="info">
                        <span class="info-back">
                            <span>diamond<br/>collection</span>
                        </span>
                    </span>
            </a>
        </div>
        <div class="ih-item colored effect5">
            <a href="#">
                    <span class="img">
                        <img src="catalog/view/theme/canary/img/img6.png" alt="img">
                    </span>
                    <span class="info">
                        <span class="info-back">
                            <span>diamond<br/>collection</span>
                        </span>
                    </span>
            </a>
        </div>
    </section>




    <section class="new-products">
        <h2>NEW PRODUCTS</h2>
        <div class="panel product-tabs panel-default">
            <div class="panel-heading">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#product1" data-toggle="tab">DIAMONDS</a></li>
                    <li><a href="#product2" data-toggle="tab">ENGAGEMENT RINGS</a></li>
                    <li><a href="#product3" data-toggle="tab">WEDDING RINGS</a></li>
                    <li><a href="#product4" data-toggle="tab">GEMSTONES</a></li>
                    <li><a href="#product5" data-toggle="tab">FINE JEWELRY</a></li>
                </ul>
            </div>
            <div class="panel-body product-panel-body center-bl">
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="product1">
                        <div class="clearfix">
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="product2">
                        <div class="clearfix">
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="product3">
                        <div class="clearfix">
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="product4">
                        <div class="clearfix">
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="product5">
                        <div class="clearfix">
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>





    <section class="top-main-r top-main-r2">
        <div class="wrapper-main-r">
            <div class="title">This is Photoshop version</div>
            <div class="text">
                This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.
            </div>
            <a href="#" class="brand-btn">shop now</a>
        </div>
    </section>
    <section class="new-products">
        <h2>Best seller</h2>
        <div class="panel product-tabs panel-default">
            <div class="panel-heading">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#product6" data-toggle="tab">DIAMONDS</a></li>
                    <li><a href="#product7" data-toggle="tab">ENGAGEMENT RINGS</a></li>
                    <li><a href="#product8" data-toggle="tab">WEDDING RINGS</a></li>
                    <li><a href="#product9" data-toggle="tab">GEMSTONES</a></li>
                    <li><a href="#product10" data-toggle="tab">FINE JEWELRY</a></li>
                </ul>
            </div>
            <div class="panel-body product-panel-body center-bl">
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="product6">
                        <div class="clearfix">
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="product7">
                        <div class="clearfix">
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="product8">
                        <div class="clearfix">
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="product9">
                        <div class="clearfix">
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="product10">
                        <div class="clearfix">
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a>
                                    </div>
                                    <div class="title"><a href="#">Engagament rings</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<?php echo $footer; ?>