<?php echo isset($header) ? $header : ''; ?>


<?//dd($products)?>
<?//dd($product)?>
<?//dd($attribute_groups)?>



<main class="w-general-container">
    <section class="static-page">
        <div class="center-bl">
            <div class="row margin-buttom-30 w-bredcrum-border">
                <div class="col-xs-12">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <li> » </li>
                        <?php } ?>
                    </ul>
                </div>

            </div>

            <?php echo $content_top; ?>

        </div>
        <div class="center-bl">
            <div class="one-product clearfix">
                <div class="one-product-slider">
                    <div class="slider-for">
                        <div><img src="<?=imageDiamont($product->response->body->diamond->shape)?>" style="margin-left: auto; margin-right: auto; width: 100%;"></div>
                    </div>
                    <div class="slider-nav">
                        <div class="wrapper-img-slider"><img src="<?=imageDiamont($product->response->body->diamond->shape)?>"></div>
                    </div>
                    <ul class="list-inline it-list">
                        <li>
                            <a href="#" class="it-list-link wishlist-btn-item" data-toggle="tooltip" onclick="wishlist.add('<?php echo $product_id; ?>'); return false;" data-placement="top" title="" data-original-title="Add to Wish List"><i class="it-ico it-ico-heart"></i> Wish It</a>
                        </li>
                        <li><a href="#" class="it-list-link"><i class="it-ico it-ico-mail"></i> Hint it</a></li>
                        <li><a href="#" class="it-list-link"><i class="it-ico it-ico-star"></i> Rate it</a></li>
                        <li><a href="#" class="it-list-link"><i class="it-ico it-ico-print"></i> Print it</a></li>
                        <li>
                            <!-- space for chare -->
                            <img src="/catalog/view/theme/canary/img/share-space.jpg" alt="">
                        </li>

                    </ul>
                </div>
                <div class="one-product-info" id="product">
                    <div class="row">
                        <div class="col-md-8 col-sm-8">
                            <h1 class="w-product-name-h1"><?=$product->response->body->diamond->shape?> <?=$product->response->body->diamond->size?> CARAT <?=$product->response->body->diamond->color?> <?=$product->response->body->diamond->clarity?></h1>
                        </div>
                        <div class="col-md-4 col-sm-4 text-right">
                            <strong>SKU:<?=$product->response->body->diamond->diamond_id?></strong>
                        </div>
                    </div>
                    <div class="row paging-bottom-20">
                        <div class="col-md-8 col-sm-8">
                            <h3 class="w-product-desc">
                                <!-- todo desc-->
                                Has excellent proportions and diamond grading report from GIA. Crafted with pride in USA.
                            </h3>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="diamant-size-block">
                                <div class="diamant-size-inner">
                                    <img class="diamant-size-ruler" src="/catalog/view/theme/canary/img/diamant-size-ruler.png" alt="">
                                    <i class="brilliant-ico2 brilliant-s2" style="
                                    -webkit-transform: scale(0.5);
                                    -moz-transform: scale(0.5);
                                    -ms-transform: scale(0.5);
                                    -o-transform: scale(0.5);
                                    transform: scale(0.5);
                                    "></i>
                                    <div class="diamant-size-text">Real 0.53 Carat Size</div>
                                </div>
                                <div class="diamant-size-detail clearfix">
                                    <div class="diamant-size-it clearfix">
                                        <div class="clearfix">
                                            <div class="diamant-size-left-text">1 Ct.<br>
                                                (6.4 mm)</div>
                                            <div class="diamant-size-detail-img diamant-size-photo">
                                                <img src="/image/catalog/shapes/princess.png" alt="" style="width: 30px;">
                                            </div>
                                        </div>
                                        <div class="diamant-size-bottom-text">1 Ct.<br>
                                        (6.4 mm)</div>
                                    </div>
                                    <div class="diamant-size-coin text-center">
                                        <div class=" diamant-size-detail-img diamant-size-coin-img"></div>
                                        17.9 mm
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-md-12 col-sm-12">
                            <div class="product-details">
                                <div class="h3 text-center margin-top-0">DIAMOND DETAILS:</div>
                                <div class="icons-quality_service_icon"></div>
                                <input type="hidden" id="w-diamond_id" value="<?php echo $product->response->body->diamond->diamond_id?>">
                                <div class="table-responsive table table-condensed margin-buttom-0">
                                    <table class="table">
                                        <tr>
                                            <td><span>SHAPE: <?=$product->response->body->diamond->shape?></span></td>
                                            <td><span>CLARITY: <?=$product->response->body->diamond->clarity?></span></td>
                                        </tr>
                                        <tr>
                                            <td><span>CARAT WEIGHT: <?=$product->response->body->diamond->size?></span></td>
                                            <td><span>POLISH: <?=$product->response->body->diamond->polish?></span></td>
                                        </tr>
                                        <tr>
                                            <td><span>COLOR: <?=$product->response->body->diamond->color?></span></td>
                                            <td><span><a href="#" onclick="$('button#write-review').trigger('click'); $('html, body').animate({scrollTop: $('#diamant-more-spec').offset().top - 20}, 'slow'); return false;" class="prod-more-spec">More specifications »</a></span></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="alert alert-info margin-buttom-0 product-buy-details product-buy-diamant clearfix">
                                    <div class="price-product">
                                        <span>$<?=$product->response->body->diamond->total_sales_price?></span>
                                    </div>
                                    <a class="product-buy-sertificate" href="http://www.diamondselections.com/GetCertificate.aspx?diamondid=<?=$product->response->body->diamond->diamond_id?>"><img src="/catalog/view/theme/canary/img/icon_lab/<?=strtolower($product->response->body->diamond->lab)?>.jpg" alt="" style="width: 65px"> <span>View<br>Certificate</span></a>
                                    <button type="button" data-toggle="modal" data-target="#w-modal-cart"  class="btn w-btn-orange btn-lg"><i class="bold-angle-right"></i> Select This Diamond</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-advantages">
                        <div class="product-advantages-header">
                            <span class="h3 product-advantages-title">Best quality and service</span>
                            <div class="icons-quality_service_icon"></div>
                            <div class="small-controls">
                                <div id="product-advantages-prev" class="small-controls-left"></div>
                                <div id="product-advantages-next" class="small-controls-right"></div>
                            </div>
                        </div>
                        <div class="product-advantages-list clearfix">
                            <div class="product-advantages-col">
                                <div class="product-advantages-item">
                                    <div class="product-advantages-item-img"><img src="/catalog/view/theme/canary/img/p-advantage-1.png" alt=""></div>
                                    <div class="product-advantages-item-text">Free and fast Shipping</div>
                                </div>
                                <div class="product-advantages-item">
                                    <div class="product-advantages-item-img"><img src="/catalog/view/theme/canary/img/p-advantage-3.png" alt=""></div>
                                    <div class="product-advantages-item-text">100% Money Back
                                        Guarantee</div>
                                </div>
                            </div>
                            <div class="product-advantages-col">
                                <div class="product-advantages-item">
                                    <div class="product-advantages-item-img"><img src="/catalog/view/theme/canary/img/p-advantage-2.png" alt=""></div>
                                    <div class="product-advantages-item-text">No Hassle Returns</div>
                                </div>
                                <div class="product-advantages-item">
                                    <div class="product-advantages-item-img"><img src="/catalog/view/theme/canary/img/p-advantage-4.png" alt=""></div>
                                    <div class="product-advantages-item-text">Helping Others</div>
                                </div>
                            </div>
                            <div class="product-advantages-col">
                                <div class="product-advantages-item">
                                    <div class="product-advantages-item-img"><img src="/catalog/view/theme/canary/img/p-advantage-1.png" alt=""></div>
                                    <div class="product-advantages-item-text">Free and fast Shipping</div>
                                </div>
                                <div class="product-advantages-item">
                                    <div class="product-advantages-item-img"><img src="/catalog/view/theme/canary/img/p-advantage-3.png" alt=""></div>
                                    <div class="product-advantages-item-text">100% Money Back
                                        Guarantee</div>
                                </div>
                            </div>
                            <div class="product-advantages-col">
                                <div class="product-advantages-item">
                                    <div class="product-advantages-item-img"><img src="/catalog/view/theme/canary/img/p-advantage-2.png" alt=""></div>
                                    <div class="product-advantages-item-text">No Hassle Returns</div>
                                </div>
                                <div class="product-advantages-item">
                                    <div class="product-advantages-item-img"><img src="/catalog/view/theme/canary/img/p-advantage-4.png" alt=""></div>
                                    <div class="product-advantages-item-text">Helping Others</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="alert alert-warning product-need-help">
                <span class="h4">Need Help?</span>
                <ul class="list-inline w-help-ned">
                    <li><a href="#"><span class="help-ico help-ico-chat"></span> <span class="help-text">Online Chat now</span></a></li>
                    <li><a href="#"><span class="help-ico help-ico-mail"></span> <span class="help-text">Email</span></a></li>
                    <!-- todo phone-->
                    <li><a href="#"><span class="help-ico help-ico-phone"></span> <span class="help-text">800-214-6550 | 24/7</span></a></li>
                </ul>
            </div>

            <div id="diamant-more-spec" class="diamant-more-spec clearfix">
                <div class="diamant-more-left">
                    <div class="product-details">
                        <div class="h3 margin-top-0">Diamond Specifications</div>
                        <div class="table-responsive table table-condensed margin-buttom-0">
                            <table class="table">
                                <tr>
                                    <td><span>SHAPE: <?=$product->response->body->diamond->shape?></span></td>
                                    <td><span>POLISH: <?=$product->response->body->diamond->polish?></span></td>
                                    <td><span>DEPTH %: <?=$product->response->body->diamond->depth_percent?></span></td>
                                </tr>
                                <tr>
                                    <td><span>CARAT WEIGHT: <?=$product->response->body->diamond->size?></span></td>
                                    <td><span>SYMMETRY: <?=$product->response->body->diamond->symmetry?></span></td>
                                    <td><span>GIRDLE: <?=$product->response->body->diamond->girdle_max?></span></td>
                                </tr>
                                <tr>
                                    <td><span>COLOR: <?=$product->response->body->diamond->color?></span></td>
                                    <td><span>FLUORESCENCE: <?=$product->response->body->diamond->fluor_intensity?></span></td>
                                    <td><span>TABLE %: <?=$product->response->body->diamond->table_percent?></span></td>
                                </tr>
                                <tr>
                                    <td><span>CLARITY: <?=$product->response->body->diamond->clarity?></span></td>
                                    <td><span>L/W/D (MM) <?=$product->response->body->diamond->meas_length?>
                                        *<?=$product->response->body->diamond->meas_width?>
                                        *<?=$product->response->body->diamond->meas_depth?></span></td>
                                    <td><span>CULET: <?=$product->response->body->diamond->culet_size?></span></td>
                                </tr>
                                <tr>
                                    <td><span>CUT: <?=$product->response->body->diamond->cut?></span></td>
                                    <td><span>L/W RATIO: 1.01</span></td>
                                    <td><span>Certificate: GIA</span></td>
                                </tr>
                            </table>
                        </div>
                        <div class="alert alert-info margin-buttom-0 product-buy-details product-buy-diamant clearfix">
                            <strong>SKU:71995555</strong>
                            <div class="price-product">
                                <span>$<?=$product->response->body->diamond->total_sales_price?></span>
                            </div>
                            <a class="product-buy-sertificate" href="http://www.diamondselections.com/GetCertificate.aspx?diamondid=<?=$product->response->body->diamond->diamond_id?>"><img src="/catalog/view/theme/canary/img/icon_lab/<?=strtolower($product->response->body->diamond->lab)?>.jpg" alt="" style="width: 65px"> <span>View<br>Certificate</span></a>
                            <button type="button" data-toggle="modal" data-target="#w-modal-cart"  class="btn w-btn-orange btn-lg"><i class="bold-angle-right"></i> Select This Diamond</button>
                        </div>
                    </div>
                </div>
                <div class="diamant-more-right">
                    <div class="product-diamond-help">
                        <div class="h3 margin-top-0">DIAMOND HELP</div>
                        <div class="format">
                            <h5>Shape</h5>
                            <p>A diamond’s cut is the most important characteristic in determining a diamond’s beauty. The cut of a diamond refers not to its visual shape, but its ability to properly reflect light. A diamond cut to the highest standards of proportion, provides the most beauty and sparkle. A diamond’s cut grade is determined by three types of reflected light</p>
                            <h5>CLARITY</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias nam nisi nobis, odio sapiente unde veniam voluptatem. A blanditiis, reiciendis.</p>
                            <h5>GIRDLE</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, aspernatur assumenda at cum dicta distinctio doloribus eaque eius exercitationem expedita nesciunt obcaecati, porro quam reprehenderit sapiente, vel vitae voluptatem voluptatum?</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="include-section">
            <div class="center-bl">
                <div class="product-section-header">
                    <div class="product-section-title">YOUR ORDER INCLUDES</div>
                    <div class="icons-quality_service_icon"></div>
                </div>
                <div class="p-include-list clearfix">
                    <a href="#" class="p-include-item">
                        <span class="p-include-img"><img src="/catalog/view/theme/canary/img/p-include-1.jpg" alt=""></span>
                        <span class="p-include-title">Beautiful Packaging</span>
                        <span class="p-include-dot"></span>
                        <span class="p-include-text">
                            Stylish Jewelry Box<br>
                            and Gift Wrapping
                        </span>
                    </a>
                    <a href="#" class="p-include-item">
                        <span class="p-include-img"><img src="/catalog/view/theme/canary/img/p-include-2.jpg" alt=""></span>
                        <span class="p-include-title">Lifetime Warranty</span>
                        <span class="p-include-dot"></span>
                        <span class="p-include-text">
                            We Stand Behind<br>
                            Our Jewelry
                        </span>
                    </a>
                    <a href="#" class="p-include-item">
                        <span class="p-include-img"><img src="/catalog/view/theme/canary/img/p-include-3.jpg" alt=""></span>
                        <span class="p-include-title">Free Engraving</span>
                        <span class="p-include-dot"></span>
                        <span class="p-include-text">
                            Add Personal Touch<br>
                            To Your Ring
                        </span>
                    </a>
                    <a href="#" class="p-include-item">
                        <span class="p-include-img"><img src="/catalog/view/theme/canary/img/p-include-4.jpg" alt=""></span>
                        <span class="p-include-title">Diamond Certificate</span>
                        <span class="p-include-dot"></span>
                        <span class="p-include-text">
                            Original GIA Grading<br>
                            Report
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <div class="similar-section similar-stones">
        <div class="center-bl clearfix">
            <div class="product-section-header">
                <div class="product-section-title">SIMILAR STONES</div>
                <div class="icons-quality_service_icon"></div>
            </div>
            <div class="wrapper-product-table th-view">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td>
                                <div class="product-item">
                                    <div class="box-img">
                                        <a href="http://canary3.webremote.net/engagement-rings/pave/14k-white-gold-petite-pave-diamond-engagement-ring-50804-EW14-1569" class="w-product-ajax"><img src="http://canary3.webremote.net/image/cache/catalog/galery_rings/50804-E-228x228.jpg" alt="14k White Gold Petite Pave Diamond Engagement Ring" title="14k White Gold Petite Pave Diamond Engagement Ring"></a>
                                    </div>
                                    <!--**-->
                                    <div class="btn-box">
                                        <a href="#" type="button" onclick="cart.add('1569', '1'); return false;" class="cart-btn-item" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart"></a>
                                        <a href="#" class="compare-btn-item" data-toggle="tooltip" onclick="compare.add('1569'); return false;" data-placement="top" title="" data-original-title="Compare this Product"></a>
                                        <a href="http://canary3.webremote.net/engagement-rings/pave/14k-white-gold-petite-pave-diamond-engagement-ring-50804-EW14-1569" class="search-btn-item w-product-ajax" data-toggle="tooltip" data-placement="top" title="" data-original-title="Views"></a>
                                        <a href="#" class="wishlist-btn-item" data-toggle="tooltip" onclick="wishlist.add('1569'); return false;" data-placement="top" title="" data-original-title="Add to Wish List"></a>
                                    </div>
                                    <div class="box-tovar-th">
                                        <div class="name">14k White Gold Petite Pave Diamond Engagement Ring</div>

                                        <span class="price">$650.00</span>


                                    </div>
                                </div>
                            </td>
                            <td data-th="Stock Number">50804-EW14</td>
                            <td data-th="Price"><div class="price">$650.00</div></td>
                            <td><a href="#" onclick="compare.add('1569'); return false;"><i class="fa fa-exchange"></i></a></td>
                            <td><a href="#" onclick="wishlist.add('1569'); return false;"><i class="fa fa-heart"></i></a></td>
                        </tr>
                        <tr>
                            <td>
                                <div class="product-item">
                                    <div class="box-img">
                                        <a href="http://canary3.webremote.net/engagement-rings/pave/14k-white-gold-petite-pave-diamond-engagement-ring-50804-EW14-1569" class="w-product-ajax"><img src="http://canary3.webremote.net/image/cache/catalog/galery_rings/50804-E-228x228.jpg" alt="14k White Gold Petite Pave Diamond Engagement Ring" title="14k White Gold Petite Pave Diamond Engagement Ring"></a>
                                    </div>
                                    <!--**-->
                                    <div class="btn-box">
                                        <a href="#" type="button" onclick="cart.add('1569', '1'); return false;" class="cart-btn-item" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart"></a>
                                        <a href="#" class="compare-btn-item" data-toggle="tooltip" onclick="compare.add('1569'); return false;" data-placement="top" title="" data-original-title="Compare this Product"></a>
                                        <a href="http://canary3.webremote.net/engagement-rings/pave/14k-white-gold-petite-pave-diamond-engagement-ring-50804-EW14-1569" class="search-btn-item w-product-ajax" data-toggle="tooltip" data-placement="top" title="" data-original-title="Views"></a>
                                        <a href="#" class="wishlist-btn-item" data-toggle="tooltip" onclick="wishlist.add('1569'); return false;" data-placement="top" title="" data-original-title="Add to Wish List"></a>
                                    </div>
                                    <div class="box-tovar-th">
                                        <div class="name">14k White Gold Petite Pave Diamond Engagement Ring</div>

                                        <span class="price">$650.00</span>


                                    </div>
                                </div>
                            </td>
                            <td data-th="Stock Number">50804-EW14</td>
                            <td data-th="Price"><div class="price">$650.00</div></td>
                            <td><a href="#" onclick="compare.add('1569'); return false;"><i class="fa fa-exchange"></i></a></td>
                            <td><a href="#" onclick="wishlist.add('1569'); return false;"><i class="fa fa-heart"></i></a></td>
                        </tr>
                        <tr>
                            <td>
                                <div class="product-item">
                                    <div class="box-img">
                                        <a href="http://canary3.webremote.net/engagement-rings/pave/14k-white-gold-petite-pave-diamond-engagement-ring-50804-EW14-1569" class="w-product-ajax"><img src="http://canary3.webremote.net/image/cache/catalog/galery_rings/50804-E-228x228.jpg" alt="14k White Gold Petite Pave Diamond Engagement Ring" title="14k White Gold Petite Pave Diamond Engagement Ring"></a>
                                    </div>
                                    <!--**-->
                                    <div class="btn-box">
                                        <a href="#" type="button" onclick="cart.add('1569', '1'); return false;" class="cart-btn-item" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart"></a>
                                        <a href="#" class="compare-btn-item" data-toggle="tooltip" onclick="compare.add('1569'); return false;" data-placement="top" title="" data-original-title="Compare this Product"></a>
                                        <a href="http://canary3.webremote.net/engagement-rings/pave/14k-white-gold-petite-pave-diamond-engagement-ring-50804-EW14-1569" class="search-btn-item w-product-ajax" data-toggle="tooltip" data-placement="top" title="" data-original-title="Views"></a>
                                        <a href="#" class="wishlist-btn-item" data-toggle="tooltip" onclick="wishlist.add('1569'); return false;" data-placement="top" title="" data-original-title="Add to Wish List"></a>
                                    </div>
                                    <div class="box-tovar-th">
                                        <div class="name">14k White Gold Petite Pave Diamond Engagement Ring</div>

                                        <span class="price">$650.00</span>


                                    </div>
                                </div>
                            </td>
                            <td data-th="Stock Number">50804-EW14</td>
                            <td data-th="Price"><div class="price">$650.00</div></td>
                            <td><a href="#" onclick="compare.add('1569'); return false;"><i class="fa fa-exchange"></i></a></td>
                            <td><a href="#" onclick="wishlist.add('1569'); return false;"><i class="fa fa-heart"></i></a></td>
                        </tr>
                        <tr>
                            <td>
                                <div class="product-item">
                                    <div class="box-img">
                                        <a href="http://canary3.webremote.net/engagement-rings/pave/14k-white-gold-petite-pave-diamond-engagement-ring-50804-EW14-1569" class="w-product-ajax"><img src="http://canary3.webremote.net/image/cache/catalog/galery_rings/50804-E-228x228.jpg" alt="14k White Gold Petite Pave Diamond Engagement Ring" title="14k White Gold Petite Pave Diamond Engagement Ring"></a>
                                    </div>
                                    <!--**-->
                                    <div class="btn-box">
                                        <a href="#" type="button" onclick="cart.add('1569', '1'); return false;" class="cart-btn-item" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart"></a>
                                        <a href="#" class="compare-btn-item" data-toggle="tooltip" onclick="compare.add('1569'); return false;" data-placement="top" title="" data-original-title="Compare this Product"></a>
                                        <a href="http://canary3.webremote.net/engagement-rings/pave/14k-white-gold-petite-pave-diamond-engagement-ring-50804-EW14-1569" class="search-btn-item w-product-ajax" data-toggle="tooltip" data-placement="top" title="" data-original-title="Views"></a>
                                        <a href="#" class="wishlist-btn-item" data-toggle="tooltip" onclick="wishlist.add('1569'); return false;" data-placement="top" title="" data-original-title="Add to Wish List"></a>
                                    </div>
                                    <div class="box-tovar-th">
                                        <div class="name">14k White Gold Petite Pave Diamond Engagement Ring</div>

                                        <span class="price">$650.00</span>


                                    </div>
                                </div>
                            </td>
                            <td data-th="Stock Number">50804-EW14</td>
                            <td data-th="Price"><div class="price">$650.00</div></td>
                            <td><a href="#" onclick="compare.add('1569'); return false;"><i class="fa fa-exchange"></i></a></td>
                            <td><a href="#" onclick="wishlist.add('1569'); return false;"><i class="fa fa-heart"></i></a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
        </div>
    </div>

    <div class="modal fade styled-modal" id="w-modal-cart" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span>&times;</span></button>
                <div class="modal-body">
                    <div class="line-price-product clearfix">
                        <p>

                        </p>


                        <p></p>
                    </div>

                    <div class="styled-modal-header">
                        <div class="styled-modal-title">What would you like to do?</div>
                        <div class="icons-quality_service_icon"></div>
                    </div>
                    <div class="product-modal-buttons">
                        <div class="modal-btn-row">
                            <button type="button" id="w-button-add-diamond-complect" data-loading-text="Loading..."
                                    data-dismiss="modal" aria-hidden="true"
                                    data-idproduct="<?php echo $product->response->body->diamond->diamond_id ?>"
                                    data-shape="<?php echo $product->response->body->diamond->shape?>"
                                    class="btn w-btn-orange btn-lg text-center">Add diamond to a ring</button>
                        </div>
                        <button type="button" data-dismiss="modal" aria-hidden="true"
                                id="w-diamont-button-cart" data-loading-text="Loading..."
                                class="btn w-btn-orange btn-lg text-center w-modal-button"> <span class="add-tocart-ico"></span> Add to cart</button>
                    </div>

                </div>

            </div>
        </div>
    </div>
</main>


<script>

    //add complect diamond
    $(document).on('click', '#w-diamont-button-cart', function(){


        $.ajax({
            url: 'index.php?route=checkout/cart/add_diamond',
            type: 'POST',
            data: 'diamond_id='+$('#w-diamond_id').val(),
            dataType: 'json',
            beforeSend: function() {
                $('#w-diamont-button-cart').button('loading');
            },
            complete: function() {
                $('#w-diamont-button-cart').button('reset');
            },
            success: function(json) {
                $('#w-but-cart').html('<span>cart ('+json['count']+')</span>');
                $('html, body').animate({ scrollTop: 0 }, 'slow');
                $('.cart-basket').load('index.php?route=common/cart/info .w-cart-basket');
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert('ошибочка вышла');
            }
        });

        return false;
    });

    $('.diamant-size-inner').click(function() {
        $(this).toggleClass('active');
    });

    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav'

    });


    $('.slider-nav').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: false,
        focusOnSelect: true,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            }
        ]
    });

    $('.product-advantages-list').slick({
        slidesToShow: 2,
        slidesToScroll: 2,
        arrows: true,
        draggable: false,
        prevArrow: $('#product-advantages-prev'),
        nextArrow: $('#product-advantages-next')
    });

</script>

<?php echo isset($footer) ? $footer : ''; ?>
