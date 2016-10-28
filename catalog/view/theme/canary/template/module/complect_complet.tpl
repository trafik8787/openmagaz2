<?php echo isset($header) ? $header : ''; ?>



<?//dd($CanaryProductCom)?>
<?//dd($CanaryDiamontCom)?>

<main class="w-diamonds-product w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <li> » </li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-12 padding-0">
                    <a href=""><img src="<?=get_baners_top_random()?>" class="bread-baner" ></a>
                </div>
            </div>
        </div>
    </div>








    <section class="static-page">
        <div class="center-bl">

            <?php echo $content_top; ?>
        </div>
        <div class="center-bl">
            <div class="one-product clearfix">

                <input type="hidden" id="w-product-com-id" value="<?php echo $CanaryProductCom['product_id']?>">
                <input type="hidden" id="w-diamond-com-id" value="<?php echo $CanaryDiamontCom->diamond_id?>">
                <input type="hidden" id="w-product-option" value="<?=!empty($CanaryProductCom['option']) ? $CanaryProductCom['option'] : ''?>">

                <div class="one-product-slider hidden-xs">
                    <div class="slider-for">


                        <div><img src="<?=imageDiamont($CanaryDiamontCom->shape)?>" width="auto" title="" alt=""></div>
                        <div><img src="/image/<?php echo $CanaryProductCom['image'] ?>" width="auto" title="<?php echo $CanaryProductCom['name'] ?>" alt="<?php echo $CanaryProductCom['name'] ?>"></div>


                    </div>
                    <div class="slider-nav">

                        <div class="wrapper-img-slider"><img src="<?=imageDiamont($CanaryDiamontCom->shape)?>" title="" alt=""></div>
                        <div class="wrapper-img-slider"><img src="/image/<?php echo $CanaryProductCom['image'] ?>" title="" alt=""></div>

                    </div>
                    <ul class="list-inline it-list hidden-xs">

                        <li>
                            <!-- space for chare -->
                            <img src="/catalog/view/theme/canary/img/share-space.jpg" alt="">
                        </li>

                    </ul>
                </div>
                <div class="one-product-info" id="product">

                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <h1 class="w-product-name-h1"> <?php echo $CanaryProductCom['name'] ?></h1>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6 text-right">
                            <strong>SKU: <?php echo $CanaryProductCom['sku'] ?></strong>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <h1 class="w-product-name-h1"> <?=$CanaryDiamontCom->shape?> <?=$CanaryDiamontCom->size?> CARAT <?=$CanaryDiamontCom->color?> <?=$CanaryDiamontCom->clarity?></h1>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6 text-right">
                            <strong>SKU: <?=$CanaryDiamontCom->diamond_id?></strong>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 paging-bottom-20">
                            <h3 class="w-product-desc"></h3>
                        </div>
                    </div>
                    <div class="one-product-slider visible-xs">
                        <div class="slider-for">

                            <div><img src="<?=imageDiamont($CanaryDiamontCom->shape)?>" width="auto" title="" alt=""></div>
                            <div><img src="/image/<?php echo $CanaryProductCom['image'] ?>" width="auto" title="<?php echo $CanaryProductCom['name'] ?>" alt="<?php echo $CanaryProductCom['name'] ?>"></div>

                        </div>
                        <ul class="list-inline it-list hidden-xs">

                            <li>
                                <!-- space for chare -->
                                <img src="/catalog/view/theme/canary/img/share-space.jpg" alt="">
                            </li>

                        </ul>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="product-details">

                                <div class="hidden-xs">
                                    <div class="h3 text-center margin-top-0">Setting details</div>
                                    <div class="icons-quality_service_icon"></div>
                                    <div class="margin-buttom-0">

                                    </div>
                                </div>

                                <div class="alert alert-info margin-buttom-0 product-buy-details clearfix">
                                    <div class="left">

                                        <p><?php echo $CanaryProductCom['name'] ?></p>
                                        <p><?=$CanaryDiamontCom->shape?> <?=$CanaryDiamontCom->size?> CARAT <?=$CanaryDiamontCom->color?> <?=$CanaryDiamontCom->clarity?></p>


                                        <div>
                                            <div class="price-product">$<?php echo $CanaryProductCom['price'] + $CanaryDiamontCom->total_sales_price?></div>
                                        </div>

                                    </div>
                                    <div class="right">
                                        <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="1" id="input-quantity" />
                                        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                        <div class="price-product">
                                            <span>$<?php echo round($CanaryProductCom['price'], 2)?></span>
                                            <p><span>$<?=$CanaryDiamontCom->total_sales_price?></span></p>
                                        </div>
                                        <div class="line-price-product clearfix">

                                            <button class="btn w-btn-orange btn-lg" id="w-complect-button-cart" data-loading-text="Loading..." role="button" type="button" > <i class="bold-angle-right"></i> Add to cart</button>

                                        </div>
                                    </div>
                                </div>

                                <div class="visible-xs">
                                    <div class="h3 text-center margin-top-0">Setting details</div>
                                    <div class="icons-quality_service_icon"></div>
                                    <div class="margin-buttom-0">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="alert alert-warning product-need-help visible-xs">
                        <span class="h4">Need Help?</span>
                        <ul class="list-inline w-help-ned">

                            <li><a href="#"><span class="help-ico help-ico-chat"></span> <span class="help-text">Online Chat now</span></a></li>
                            <li><a href="#"><span class="help-ico help-ico-mail"></span> <span class="help-text">Email</span></a></li>
                            <li><a href="#"><span class="help-ico help-ico-phone"></span> <span class="help-text">800-214-6550 | 24/7</span></a></li>
                        </ul>
                    </div>
                    <ul class="list-inline it-list visible-xs">
                        <li><a href="#" class="it-list-link"><i class="it-ico it-ico-mail"></i> Hint it</a></li>
                        <li><a href="#" class="it-list-link"><i class="it-ico it-ico-star"></i> Rate it</a></li>
                        <li><a href="#" class="it-list-link"><i class="it-ico it-ico-print"></i> Print it</a></li>
                        <li>
                            <!-- space for chare -->
                            <img src="/catalog/view/theme/canary/img/share-space.jpg" alt="">
                        </li>

                    </ul>


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
                                <a href="#">
                                    <div class="product-advantages-item">
                                        <div class="product-advantages-item-img"><img
                                                    src="/catalog/view/theme/canary/img/p-advantage-1.png" alt=""></div>
                                        <div class="product-advantages-item-text">Free and fast Shipping</div>
                                    </div>
                                </a>
                                <a href="#">
                                    <div class="product-advantages-item">
                                        <div class="product-advantages-item-img"><img
                                                    src="/catalog/view/theme/canary/img/p-advantage-3.png" alt=""></div>
                                        <div class="product-advantages-item-text">100% Money Back
                                            Guarantee
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="product-advantages-col">
                                <a href="#">
                                    <div class="product-advantages-item">
                                        <div class="product-advantages-item-img"><img
                                                    src="/catalog/view/theme/canary/img/p-advantage-2.png" alt=""></div>
                                        <div class="product-advantages-item-text">No Hassle Returns</div>
                                    </div>
                                </a>
                                <a href="#">
                                    <div class="product-advantages-item">
                                        <div class="product-advantages-item-img"><img
                                                    src="/catalog/view/theme/canary/img/p-advantage-4.png" alt=""></div>
                                        <div class="product-advantages-item-text">Helping Others</div>
                                    </div>
                                </a>
                            </div>
                            <div class="product-advantages-col">
                                <a href="#">
                                    <div class="product-advantages-item">
                                        <div class="product-advantages-item-img"><img
                                                    src="/catalog/view/theme/canary/img/p-advantage-5.png" alt=""></div>
                                        <div class="product-advantages-item-text">Made in USA</div>
                                    </div>
                                </a>
                                <a href="#">
                                    <div class="product-advantages-item">
                                        <div class="product-advantages-item-img"><img
                                                    src="/catalog/view/theme/canary/img/p-advantage-6.png" alt=""></div>
                                        <div class="product-advantages-item-text">Free Sizing</div>
                                    </div>
                                </a>
                            </div>
                            <div class="product-advantages-col">
                                <a href="#">
                                    <div class="product-advantages-item">
                                        <div class="product-advantages-item-img"><img
                                                    src="/catalog/view/theme/canary/img/p-advantage-7.png" alt=""></div>
                                        <div class="product-advantages-item-text">Free Appraisal</div>
                                    </div>
                                </a>
                                <a href="#">
                                    <div class="product-advantages-item">
                                        <div class="product-advantages-item-img"><img
                                                    src="/catalog/view/theme/canary/img/p-advantage-8.png" alt=""></div>
                                        <div class="product-advantages-item-text">10% Military Discount</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="alert alert-warning product-need-help hidden-xs">
                <span class="h4">Need Help?</span>
                <ul class="list-inline w-help-ned">
                    <li><a href="#"><span class="help-ico help-ico-chat"></span> <span class="help-text">Online Chat now</span></a></li>
                    <li><a href="#"><span class="help-ico help-ico-mail"></span> <span class="help-text">Email</span></a></li>
                    <li><a href="#"><span class="help-ico help-ico-phone"></span> <span class="help-text">800-214-6550 | 24/7</span></a></li>
                </ul>
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





</main>



<script>

    //complect to cart
    $(document).on('click', '#w-complect-button-cart', function(){


        $.ajax({
            url: 'index.php?route=checkout/cart/add_complect',
            type: 'POST',
            data: 'diamond_id='+$('#w-diamond-com-id').val()+'&product_id='+$('#w-product-com-id').val()+'&'+$('#w-product-option').val(),
            dataType: 'json',
            beforeSend: function() {
                $('.container-loader').show();
                $('#w-diamont-button-cart').button('loading');
            },
            complete: function() {
                $('#w-diamont-button-cart').button('reset');
                $('.container-loader').hide();

            },
            success: function(json) {
                $('#w-but-cart').html('<i class="icons-cart_icon"></i><span class="w-count-circle">'+json['count']+'</span><span>cart</span>');
                $('html, body').animate({ scrollTop: 0 }, 'slow');
                $('.cart-basket').load('index.php?route=common/cart/info .w-cart-basket');
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert('ошибочка вышла');
            }
        });

        return false;
    });

</script>

<?php echo isset($footer) ? $footer : ''; ?>