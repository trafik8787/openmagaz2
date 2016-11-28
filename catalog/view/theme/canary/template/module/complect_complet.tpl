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
                    <a href="<?=get_baners_top_random()[1]?>"><img src="<?=get_baners_top_random()[0]?>" class="bread-baner" ></a>
                </div>
            </div>
        </div>
    </div>








    <section class="static-page">
        <div class="center-bl">

            <?php echo $content_top; ?>
        </div>
        <div class="center-bl">

            <?if (!empty($CanaryDiamontCom)):?>

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

                    </div>
                    <div class="one-product-info" id="product">
                        <div class="row">
                            <div class="col-md-8 col-sm-8 col-xs-8">
                                <h1 class="w-product-name-h1"> <?php echo $CanaryProductCom['name'] ?></h1>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4 text-right">
                                <strong>SKU: <?php echo $CanaryProductCom['sku'] ?></strong>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-8 col-sm-8 col-xs-8">
                                <h1 class="w-product-name-h1"> <?=$CanaryDiamontCom->shape?> <?=$CanaryDiamontCom->size?> CARAT <?=$CanaryDiamontCom->color?> <?=$CanaryDiamontCom->clarity?></h1>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4 text-right">
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
                                        <div class="h3 text-center margin-top-0">ITEM DETAILS</div>
                                        <div class="icons-quality_service_icon"></div>
                                        <div class="margin-buttom-0">
                                        </div>
                                    </div>
                                    <div class="alert alert-info margin-buttom-0 product-buy-details complet-yellow clearfix">
                                        <div class="clearfix">
                                            <div class="left">
                                                <p><?php echo $CanaryProductCom['name'] ?></p>
                                            </div>
                                            <div class="right price-product">
                                                <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="1" id="input-quantity" />
                                                <?if (!empty($CanaryProductCom['special'])):?>
                                                    <span class="w-special-price"><?=Currency::formatStat($CanaryProductCom['price'])?></span>
                                                    <span><?=Currency::formatStat($CanaryProductCom['special'])?></span>
                                                <?else:?>
                                                    <span><?=Currency::formatStat($CanaryProductCom['price'])?></span>
                                                <?endif?>


                                            </div>
                                        </div>


                                        <div class="clearfix">
                                            <div class="left">
                                                <p><?=$CanaryDiamontCom->shape?> <?=$CanaryDiamontCom->size?> CARAT <?=$CanaryDiamontCom->color?> <?=$CanaryDiamontCom->clarity?></p>
                                            </div>
                                            <div class="right price-product">
                                                <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                                <p><span><?=Currency::formatStat($CanaryDiamontCom->total_sales_price)?></span></p>
                                            </div>
                                        </div>
                                        <div class="clearfix">
                                            <div class="left">
                                                <?if (!empty($CanaryProductCom['special'])):?>
                                                    <div class="price-product total-price"><span class="total-complet">Total:</span><?=Currency::formatStat($CanaryProductCom['special'] + $CanaryDiamontCom->total_sales_price)?></div>
                                                <?else:?>
                                                    <div class="price-product total-price"><span class="total-complet">Total:</span><?=Currency::formatStat($CanaryProductCom['price'] + $CanaryDiamontCom->total_sales_price)?></div>
                                                <?endif?>

                                            </div>
                                            <div class="right">
                                                <button class="btn w-btn-orange btn-lg" id="w-complect-button-cart" onmouseup="ga('send', 'event', 'button, 'click', 'Add to Cart');" data-loading-text="Loading..." role="button" type="button" > <i class="bold-angle-right"></i> Add to cart</button>
                                            </div>
                                        </div>



                                    </div>

                                    <div class="visible-xs">
                                        <div class="h3 text-center margin-top-0">ITEM DETAILS</div>
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

                                <li><a href="javascript:$zopim.livechat.window.show()"><span class="help-ico help-ico-chat"></span> <span class="help-text">Chat Online now</span></a></li>
                                <li><a href="mailto:info@brilliantcanary.com"><span class="help-ico help-ico-mail"></span> <span class="help-text">Email</span></a></li>
                                <li><a href="tel:800-214-6550"><span class="help-ico help-ico-phone"></span> <span class="help-text">800 214 6550 | 24/7</span></a></li>
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


                        <?=$bloc_product_advantages ?>

                    </div>
                </div>

            <?elseif ($CanaryProductComGemstonToRing): //добавлен цветной камень?>

                <div class="one-product clearfix">
                    <input type="hidden" id="w-product-com-id" value="<?php echo $CanaryProductCom['product_id']?>">
                    <input type="hidden" id="w-gemston-com-id" value="<?php echo $CanaryProductComGemstonToRing['product_id']?>">
                    <input type="hidden" id="w-product-option" value="<?=!empty($CanaryProductCom['option']) ? $CanaryProductCom['option'] : ''?>">
                    <div class="one-product-slider hidden-xs">
                        <div class="slider-for">
                            <div><img src="/image/<?php echo $CanaryProductComGemstonToRing['image'] ?>" width="auto" title="" alt=""></div>
                            <div><img src="/image/<?php echo $CanaryProductCom['image'] ?>" width="auto" title="<?php echo $CanaryProductCom['name'] ?>" alt="<?php echo $CanaryProductCom['name'] ?>"></div>
                        </div>
                        <div class="slider-nav">
                            <div class="wrapper-img-slider"><img src="/image/<?php echo $CanaryProductComGemstonToRing['image'] ?>" title="" alt=""></div>
                            <div class="wrapper-img-slider"><img src="/image/<?php echo $CanaryProductCom['image'] ?>" title="" alt=""></div>
                        </div>

                    </div>
                    <div class="one-product-info" id="product">
                        <div class="row">
                            <div class="col-md-8 col-sm-8 col-xs-8">
                                <h1 class="w-product-name-h1"> <?php echo $CanaryProductCom['name'] ?></h1>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4 text-right">
                                <strong>SKU: <?php echo $CanaryProductCom['sku'] ?></strong>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-8 col-sm-8 col-xs-8">
                                <h1 class="w-product-name-h1"> <?php echo $CanaryProductComGemstonToRing['name'] ?></h1>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4 text-right">
                                <strong>SKU: <?php echo $CanaryProductComGemstonToRing['sku'] ?></strong>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 paging-bottom-20">
                                <h3 class="w-product-desc"></h3>
                            </div>
                        </div>
                        <div class="one-product-slider visible-xs">
                            <div class="slider-for">
                                <div><img src="/image/<?php echo $CanaryProductComGemstonToRing['image'] ?>" width="auto" title="" alt=""></div>
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
                                        <div class="h3 text-center margin-top-0">ITEM DETAILS</div>
                                        <div class="icons-quality_service_icon"></div>
                                        <div class="margin-buttom-0">
                                        </div>
                                    </div>
                                    <div class="alert alert-info margin-buttom-0 product-buy-details complet-yellow clearfix">
                                        <div class="clearfix">
                                            <div class="left">
                                                <p><?php echo $CanaryProductCom['name'] ?></p>
                                            </div>
                                            <div class="right price-product">
                                                <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="1" id="input-quantity" />
                                                <span>$<?php echo round($CanaryProductCom['price'], 2)?></span>
                                            </div>
                                        </div>


                                        <div class="clearfix">
                                            <div class="left">
                                                <p><?php echo $CanaryProductComGemstonToRing['name'] ?></p>
                                            </div>
                                            <div class="right price-product">
                                                <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                                <p><span>$<?php echo round($CanaryProductComGemstonToRing['price'], 2)?></span></p>
                                            </div>
                                        </div>
                                        <div class="clearfix">
                                            <div class="left">
                                                <div class="price-product total-price"><span class="total-complet">Total:</span>$<?php echo $CanaryProductCom['price'] + $CanaryProductComGemstonToRing['price']?></div>
                                            </div>
                                            <div class="right">
                                                <button class="btn w-btn-orange btn-lg" id="w-complect-button-cart" onmouseup="ga('send', 'event', 'button, 'click', 'Add to Cart');" data-loading-text="Loading..." role="button" type="button" > <i class="bold-angle-right"></i> Add to cart</button>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="visible-xs">
                                        <div class="h3 text-center margin-top-0">ITEM DETAILS</div>
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

                                <li><a href="javascript:$zopim.livechat.window.show()"><span class="help-ico help-ico-chat"></span> <span class="help-text">Chat Online now</span></a></li>
                                <li><a href="mailto:info@brilliantcanary.com"><span class="help-ico help-ico-mail"></span> <span class="help-text">Email</span></a></li>
                                <li><a href="tel:800-214-6550"><span class="help-ico help-ico-phone"></span> <span class="help-text">800 214 6550 | 24/7</span></a></li>
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


                        <?=$bloc_product_advantages ?>

                    </div>
                </div>

            <?endif?>



            <?=$blok_need_help?>

        </div>

        <?=$blok_your_order_includes ?>

    </section>





</main>



<script>
    <?if (!empty($CanaryDiamontCom)):?>
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
                    $(".cart-bl").addClass("open");
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert('ошибочка вышла');
                }
            });

            return false;
        });
    <?elseif ($CanaryProductComGemstonToRing): //добавлен цветной камень?>

            //complect to cart gemstones
            $(document).on('click', '#w-complect-button-cart', function(){


                $.ajax({
                    url: 'index.php?route=checkout/cart/add_complect',
                    type: 'POST',
                    data: 'gemston_id='+$('#w-gemston-com-id').val()+'&product_id='+$('#w-product-com-id').val()+'&'+$('#w-product-option').val(),
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
                        $(".cart-bl").addClass("open");
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert('ошибочка вышла');
                    }
                });

                return false;
            });


    <?endif?>
</script>

<?php echo isset($footer) ? $footer : ''; ?>