<?php echo isset($header) ? $header : ''; ?>



<?//dd($CanaryProductCom)?>
<?//dd($CanaryDiamontCom)?>

<main class="w-diamonds-product w-general-container">
    <section class="static-page">
        <div class="center-bl">

            <ul class="breadcrumbs">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <li>></li>
                <?php } ?>
            </ul>

            <?php echo $content_top; ?>


        </div>
        <div class="center-bl">
            <div class="one-product clearfix">

                <input type="hidden" id="w-product-com-id" value="<?php echo $CanaryProductCom['product_id']?>">
                <input type="hidden" id="w-diamond-com-id" value="<?php echo $CanaryDiamontCom->diamond_id?>">
                <input type="hidden" id="w-product-option" value="<?=!empty($CanaryProductCom['option']) ? $CanaryProductCom['option'] : ''?>">

                <div class="one-product-slider">
                    <div class="slider-for text-center">

                        <img src="<?=imageDiamont($CanaryDiamontCom->shape)?>" width="auto" title="" alt="">
                        <img src="/image/<?php echo $CanaryProductCom['image'] ?>" width="auto" title="<?php echo $CanaryProductCom['name'] ?>" alt="<?php echo $CanaryProductCom['name'] ?>">


                    </div>
                    <div class="slider-nav">

                        <div class="wrapper-img-slider"><img src="<?=imageDiamont($CanaryDiamontCom->shape)?>" title="" alt=""></div>
                        <div class="wrapper-img-slider"><img src="/image/<?php echo $CanaryProductCom['image'] ?>" title="" alt=""></div>

                    </div>
                </div>

                <div class="one-product-info" id="product">
                    <div class="text-article clearfix"><?php echo $CanaryProductCom['name'] ?> <span class="line-price-product"><strong class="price-product"><?php echo (int) $CanaryProductCom['price']?>$</strong></span><div class="product-code">Product code: <strong>SKU: <?php echo $CanaryProductCom['sku'] ?></strong></div></div>
                    <div class="text-article clearfix"><?=$CanaryDiamontCom->shape?> <?=$CanaryDiamontCom->size?> CARAT <?=$CanaryDiamontCom->color?> <?=$CanaryDiamontCom->clarity?> <span class="line-price-product"><strong class="price-product"><?=$CanaryDiamontCom->total_sales_price?>$</strong></span><div class="product-code">Product code: <strong>SKU: <?=$CanaryDiamontCom->diamond_id?></strong></div></div>

                    <div class="one-info">
                        <div class="title-red">SETTING SPECIFICATIONS <strong>SKU: <?php echo $CanaryProductCom['sku'] ?></strong></div>
                        This knife-edge diamond solitaire ring is the perfect way to showcase the diamond you o showcase the diamond you choose just for her. *Center diamond purchase required.*
                    </div>
                    <div class="one-info one-info-last clearfix">
                        <div class="title-red">DIAMOND SPECIFICATIONS SKU: <?=$CanaryDiamontCom->diamond_id?></div>

                        <a href="#" class="more-diamant">more about diamonds>>></a>
                    </div>




                    <div class="one-line-information">
                        <i class="truck-ico"></i>Free FedEx Priority Overnight Shipping:
                    </div>
                    <div class="one-line-information">
                        <div class="red">This is Photoshop's version  of Lorem Ipsum.</div>
                        <span>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</span>
                    </div>
                    <div class="one-line-information">
                        <i class="risk-free-ico"></i>Risk-free Retail
                    </div>
                    <div class="line-price-product clearfix">
                        <div class="price-product"><?php echo $CanaryProductCom['price'] + $CanaryDiamontCom->total_sales_price?>$</div>
                        <div class="setting-price">(Setting Price)</div>
                        <div>
                            <button type="button"  id="w-complect-button-cart" data-loading-text="Loading..." class="red-btn">Add cart</button>


                        </div>
                    </div>
                </div>
            </div>



        </div>
    </section>
    <section class="top-main-r top-main-r3">
        <div class="wrapper-main-r text-center">
            <div class="title">This is Photoshop version</div>
            <div class="text">
                This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum
            </div>
        </div>
    </section>

    <section class="center-bl comment-brand clearfix">

        <div class="brand-box">
            <div class="title">Brillaint-Canary rewies</div>
            <div id="owl-demo3" class="owl-carousel brand-footer">
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
            <div class="company-box">
                <div class="one-block">
                    <div class="article">name company</div>
                    <div class="rating">
                        <i class="star dark-star"></i>
                        <i class="star dark-star"></i>
                        <i class="star dark-star"></i>
                        <i class="star dark-star"></i>
                        <i class="star dark-star"></i>
                    </div>
                    <div class="clearfix">
                        <span class="comment-btn">5641 Reviews</span>
                        <span class="comment-btn">5467 Vouches</span>
                    </div>
                </div>
                <div class="one-block">
                    <div class="article">name company</div>
                    <div class="rating">
                        <i class="star dark-star active"></i>
                        <i class="star dark-star active"></i>
                        <i class="star dark-star active"></i>
                        <i class="star dark-star active"></i>
                        <i class="star dark-star active"></i>
                    </div>
                    <div class="clearfix">
                        <span class="comment-btn">5641 Reviews</span>
                        <span class="comment-btn">5467 Vouches</span>
                    </div>
                </div>
                <div class="one-block">
                    <div class="article">name company</div>
                    <div class="rating">
                        <i class="star dark-star"></i>
                        <i class="star dark-star"></i>
                        <i class="star dark-star"></i>
                        <i class="star dark-star"></i>
                        <i class="star dark-star"></i>
                    </div>
                    <div class="clearfix">
                        <span class="comment-btn">5641 Reviews</span>
                        <span class="comment-btn">5467 Vouches</span>
                    </div>
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

</script>

<?php echo isset($footer) ? $footer : ''; ?>