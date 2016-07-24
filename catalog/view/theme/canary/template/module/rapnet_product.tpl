<?php echo isset($header) ? $header : ''; ?>


<?//dd($products)?>
<?//dd($product)?>
<?//dd($attribute_groups)?>



<main class="w-general-container">
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
                <div class="one-product-slider">
                    <div class="w-slider-for" style="margin-bottom: 20px;border: 1px solid #808080;border-radius: 2px; text-align: center">
                        <img src="<?=imageDiamont($product->response->body->diamond->shape)?>" width="auto" title="" alt="fgh">
                    </div>
                    <div class="slider-nav">


                        <!--<div class="wrapper-img-slider"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"></div>-->


                    </div>
                </div>
                <div class="one-product-info" id="product">
                    <div class="text-article clearfix"><?=$product->response->body->diamond->shape?> <?=$product->response->body->diamond->size?> CARAT <?=$product->response->body->diamond->color?> <?=$product->response->body->diamond->clarity?> <div class="product-code">Product code: <strong>SKU:<?=$product->response->body->diamond->diamond_id?></strong></div></div>

                    <div class="one-info">
                        <div class="title-red">SETTING SPECIFICATIONS <strong>SKU: <?=$product->response->body->diamond->diamond_id?></strong></div>
                        This knife-edge diamond solitaire ring is the perfect way to showcase the diamond you o showcase the diamond you choose just for her. *Center diamond purchase required.*
                    </div>
                    <div class="one-info one-info-last clearfix">
                        <div class="title-red">SETTING SPECIFICATIONS SKU: <?=$product->response->body->diamond->diamond_id?></div>

                        <a href="#" class="more-diamant">more about diamonds>>></a>
                    </div>

                    <input type="hidden" id="w-diamond_id" value="<?php echo $product->response->body->diamond->diamond_id?>">



                    <div class="one-line-information">
                        <i class="truck-ico"></i>Free FedEx Priority Overnight Shipping:
                    </div>

                    <div class="one-line-information">
                        <i class="risk-free-ico"></i>Risk-free Retail
                    </div>
                    <div class="line-price-product clearfix">
                        <div class="price-product"><?=$product->response->body->diamond->total_sales_price?>$</div>
                        <div class="setting-price">(Setting Price)</div>
                        <div>
                            <button type="button"  id="w-diamont-button-cart" data-loading-text="Loading..." class="red-btn">Add cart</button>


                            <button type="button" id="w-button-add-diamond-complect" data-loading-text="Loading..."
                                    data-idproduct="<?php echo $product->response->body->diamond->diamond_id ?>"
                                    data-shape="<?php echo $product->response->body->diamond->shape?>"
                                    class="red-btn">Choose this setting</button>

                        </div>
                    </div>
                </div>
            </div>

            <div class="diamond-spetifications-box clearfix">
                <div class="left-ds">
                    <div class="title">SKU: <?=$product->response->body->diamond->diamond_id?></div>
                    This 0.71 Carat Round diamond H Color I1 Clarity has Excellent proportions and a diamond grading report from IGI
                </div>
                <div class="center-ds">
                    <div class="title">Diamond spetifications</div>
                    <div class="clearfix">
                        <ul class="clearfix">
                            <li><span> SHAPE:</span><span><?=$product->response->body->diamond->shape?></span></li>
                            <li><span>CARAT WEIGHT:</span><span><?=$product->response->body->diamond->size?></span></li>
                            <li><span>COLOR:</span><span><?=$product->response->body->diamond->color?></span></li>
                            <li><span>CLARITY:</span><span><?=$product->response->body->diamond->clarity?></span></li>
                            <li><span>CUT:</span><span><?=$product->response->body->diamond->cut?></span></li>
                            <li><span>POLISH:</span><span><?=$product->response->body->diamond->polish?></span></li>
                            <li><span>SYMMETRY:</span><span><?=$product->response->body->diamond->symmetry?></span></li>
                            <li><span>FLUORESCENCE:</span><span><?=$product->response->body->diamond->fluor_intensity?></span></li>
                            <li><span>L/W/D (MM)</span><span><?=$product->response->body->diamond->meas_length?>
                                *<?=$product->response->body->diamond->meas_width?>
                                *<?=$product->response->body->diamond->meas_depth?></span></li>
                        </ul>
                        <ul>
                            <li><span>L/W RATIO:</span><span>1.01</span></li>
                            <li><span>DEPTH %:</span><span><?=$product->response->body->diamond->depth_percent?></span></li>
                            <li><span>GIRDLE:</span><span><?=$product->response->body->diamond->girdle_max?></span></li>
                            <li><span>TABLE %:</span><span><?=$product->response->body->diamond->table_percent?></span></li>
                            <li><span>CULET:</span><span><?=$product->response->body->diamond->culet_size?></span></li>
                            <li><span>CERTIFICATE:</span><span><?=$product->response->body->diamond->lab?></span></li>

                        </ul>
                    </div>
                </div>
                <div class="right-ds">
                    <div class="pavilion-box"><span>PAVILION %: 43.00</span><span>DIAMOND HELP ASSISTANT</span></div>
                    <div class="bord-box">
                        <div class="title">PAVILION ANGLE</div>
                        The pavilion angle is the angle of the pavilion facets relative to the girdle plane. Pavilion angle is a very important component of a diamond’s proportions, because it greatly affects the amount of brilliance a diamond will display.
                    </div>
                </div>
            </div>

        </div>
    </section>
    <section class="top-main-r top-main-r3">
        <!--<div class="wrapper-main-r text-center">
            <div class="title">This is Photoshop version</div>
            <div class="text">
                This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum
            </div>
        </div>-->
    </section>

    <section class="center-bl comment-brand clearfix">

        <div class="brand-box">
            <div class="title">Brillaint-Canary rewies</div>
            <div id="owl-demo3" class="owl-carousel brand-footer">
                <div class="item">
                    <a href="#"><img src="/catalog/view/theme/canary/img/brand1.png" alt="brand1"></a>
                </div>
                <div class="item">
                    <a href="#"><img src="/catalog/view/theme/canary/img/brand2.png" alt="brand2"></a>
                </div>
                <div class="item">
                    <a href="#"><img src="/catalog/view/theme/canary/img/brand3.png" alt="brand3"></a>
                </div>
                <div class="item">
                    <a href="#"><img src="/catalog/view/theme/canary/img/brand4.png" alt="brand4"></a>
                </div>
                <div class="item">
                    <a href="#"><img src="/catalog/view/theme/canary/img/brand5.png" alt="brand5"></a>
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

</script>

<?php echo isset($footer) ? $footer : ''; ?>
