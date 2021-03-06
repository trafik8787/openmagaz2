<?php echo isset($header) ? $header : ''; ?>


<?//dd($products)?>
<?//dd($product)?>
<?//dd($attribute_groups)?>



<main class="w-general-container">
    <hr class="fade-2">
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
                    <div class="w-slider-for" style="margin-bottom: 20px;border: 1px solid #808080;border-radius: 2px; text-align: center;">
                        <img src="<?=imageDiamont($product->response->body->diamond->shape)?>" width="auto" title="" alt="fgh">
                    </div>

                </div>
                <div class="one-product-info" id="product">
                    <div class="text-article clearfix"><?=$product->response->body->diamond->shape?> <?=$product->response->body->diamond->size?> CARAT <?=$product->response->body->diamond->color?> <?=$product->response->body->diamond->clarity?> <div class="product-code">Product code: <strong>SKU:<?=$product->response->body->diamond->diamond_id?></strong></div></div>


                    <hr>
                    <div class="one-info one-info-last clearfix">
                        <div class="title-red">SETTING SPECIFICATIONS SKU: <?=$product->response->body->diamond->diamond_id?></div>


                            <div class="row">

                                <div class="col-md-6">
                                    <ul>
                                        <li><span> SHAPE: </span><span><?=$product->response->body->diamond->shape?></span></li>
                                        <li><span>CARAT WEIGHT: </span><span><?=$product->response->body->diamond->size?></span></li>
                                        <li><span>COLOR: </span><span><?=$product->response->body->diamond->color?></span></li>
                                        <li><span>CLARITY: </span><span><?=$product->response->body->diamond->clarity?></span></li>
                                        <li><span>CUT: </span><span><?=$product->response->body->diamond->cut?></span></li>
                                        <li><span>POLISH: </span><span><?=$product->response->body->diamond->polish?></span></li>
                                        <li><span>SYMMETRY: </span><span><?=$product->response->body->diamond->symmetry?></span></li>
                                        <li><span>FLUORESCENCE: </span><span><?=$product->response->body->diamond->fluor_intensity?></span></li>
                                    </ul>
                                    <?if ($product->response->body->diamond->has_cert_file === true):?>
                                        <br>
                                        <p><a href="http://www.diamondselections.com/GetCertificate.aspx?diamondid=<?=$product->response->body->diamond->diamond_id?>"><img src="/catalog/view/theme/canary/img/icon_lab/<?=strtolower($product->response->body->diamond->lab)?>.jpg" alt="" style="border: 1px solid #cccccc; width: 70px"></a></p>
                                    <?endif?>
                                </div>
                                <div class="col-md-6">
                                    <ul>
                                        <li><span>L/W/D (MM) </span><span><?=$product->response->body->diamond->meas_length?>
                                        *<?=$product->response->body->diamond->meas_width?>
                                        *<?=$product->response->body->diamond->meas_depth?></span></li>
                                        <li><span>L/W RATIO: </span><span>1.01</span></li>
                                        <li><span>DEPTH %: </span><span><?=$product->response->body->diamond->depth_percent?></span></li>
                                        <li><span>GIRDLE: </span><span><?=$product->response->body->diamond->girdle_max?></span></li>
                                        <li><span>TABLE %: </span><span><?=$product->response->body->diamond->table_percent?></span></li>
                                        <li><span>CULET: </span><span><?=$product->response->body->diamond->culet_size?></span></li>
                                        <li><span>CERTIFICATE: </span><span><?=$product->response->body->diamond->lab?></span>
                                            <a href="http://www.diamondselections.com/GetCertificate.aspx?diamondid=<?=$product->response->body->diamond->diamond_id?>">view certificate</a></li>
                                    </ul>

                                </div>
                            </div>


                        <a href="/education_find#diamonds" class="more-diamant">more about diamonds>>></a>
                    </div>

                    <input type="hidden" id="w-diamond_id" value="<?php echo $product->response->body->diamond->diamond_id?>">



                    <div class="one-line-information">
                        <i class="truck-ico"></i>Free FedEx Priority Overnight Shipping:
                    </div>

                    <div class="one-line-information">
                        <i class="risk-free-ico"></i>Risk-free Retail
                    </div>
                    <div class="line-price-product clearfix">
                        <div class="price-product">$<?=$product->response->body->diamond->total_sales_price?></div>

                        <div>

                            <button type="button" data-toggle="modal" data-target="#w-modal-cart"  class="red-btn">Select This Diamond</button>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="top-main-r top-main-r3">

    </section>

    <section class="center-bl comment-brand clearfix">


    </section>


    <div class="modal fade" id="w-modal-cart" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">

                <div class="modal-body text-center">
                    <p class="w-modal-button">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <span class="text-centr">What would you like to do?</span>
                    </p>
                    <div class="line-price-product clearfix">
                        <p>
                            <button type="button" data-dismiss="modal" aria-hidden="true"  id="w-diamont-button-cart" data-loading-text="Loading..." class="red-btn w-modal-button">Add to cart</button>
                        </p>


                        <p><button type="button" id="w-button-add-diamond-complect" data-loading-text="Loading..."
                                data-dismiss="modal" aria-hidden="true"
                                data-idproduct="<?php echo $product->response->body->diamond->diamond_id ?>"
                                data-shape="<?php echo $product->response->body->diamond->shape?>"
                                class="red-btn w-modal-button">Add diamond to a ring</button></p>
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

</script>

<?php echo isset($footer) ? $footer : ''; ?>
