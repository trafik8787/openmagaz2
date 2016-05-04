<?php echo isset($header) ? $header : ''; ?>


<?//dd($products)?>
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
                    <div class="slider-for">
                        <?php foreach ($images as $image):?>
                            <div><img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"></div>
                        <?endforeach?>

                    </div>
                    <div class="slider-nav">

                        <?php foreach ($images as $image):?>
                            <div class="wrapper-img-slider"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"></div>
                        <?endforeach?>

                    </div>
                </div>
                <div class="one-product-info" id="product">
                    <div class="text-article clearfix">14K WHITE GOLD 2MM KNIFE EDGE <div class="product-code">Product code: <strong>SKU:<?=$sku?></strong></div></div>
                    <div class="rating">
                        <i class="star active"></i>
                        <i class="star active"></i>
                        <i class="star active"></i>
                        <i class="star active"></i>
                        <i class="star"></i>
                        <span>(14)</span>
                    </div>
                    <div class="one-info">
                        <div class="title-red">SETTING SPECIFICATIONS <strong>SKU: <?=$sku?></strong></div>
                        This knife-edge diamond solitaire ring is the perfect way to showcase the diamond you o showcase the diamond you choose just for her. *Center diamond purchase required.*
                    </div>
                    <div class="one-info one-info-last clearfix">
                        <div class="title-red">SETTING SPECIFICATIONS SKU: <?=$sku?></div>
                        Metal: 14K White Gold<br/>
                        Width: 2mm
                        <a href="#" class="more-diamant">more about diamonds>>></a>
                    </div>

                    <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="1" id="input-quantity" />
                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                    <input type="hidden" name="w_path" value="<?php echo $path?>">

                    <?php if ($options) :?>

                        <div class="size-product">

                            <?php foreach ($options as $option):?>

                                <?php if ($option['type'] == 'radio' AND $option['name'] == 'SIZE'):?>

                                    <div class="title">Size</div>
                                    <div class="one-line size-radio height-inherit" id="input-option<?php echo $option['product_option_id']; ?>" data-toggle="buttons">

                                        <?php foreach ($option['product_option_value'] as $option_value): ?>

                                            <label class="btn btn-filter">
                                                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>">  <?php echo $option_value['name']; ?>
                                            </label>

                                        <?endforeach?>
                                        <!--<button class="find-size-btn">Find your ring size</button>-->
                                    </div>

                                <?endif?>


                                <?php if ($option['type'] == 'radio' AND $option['name'] == 'PRECIOUS METAL'):?>

                                    <div class="title">Precious metal</div>
                                    <div class="one-line precious-box height-inherit" id="input-option<?php echo $option['product_option_id']; ?>" data-toggle="buttons">

                                        <?php foreach ($option['product_option_value'] as $option_value): ?>

                                            <label class="btn btn-filter">
                                                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>"> <?php echo $option_value['name']; ?>
                                            </label>

                                        <?endforeach?>

                                    </div>
                                <?endif?>

                            <?endforeach?>

                        </div>

                    <?endif?>

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
                        <div class="price-product"><?php echo $price; ?></div>
                        <div class="setting-price">(Setting Price)</div>
                        <div>
                            <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="red-btn"><?php echo $button_cart; ?></button>

                            <button type="button" id="w-button-add-product-complect" data-loading-text="<?php echo $text_loading; ?>"
                                    class="red-btn">Shooce this setting</button>

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
    <section class="single-product">
        <div class="title-for-product">RECENTLY PURCHASED SET WITH VARIOUS CENTER STONES</div>
        <div class="owl-carousel owl-product">
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
        </div>
    </section>
    <section class="center-bl comment-brand clearfix">
        <div class="comment-box">
            <div class="btn-box-comment">
                <div>
                    <button class="comment-btn">Reviews(3)</button>
                    <button class="comment-btn">Questions(2)</button>
                </div>
                <div>
                    <span class="comment-btn">write a review</span>
                    <span class="comment-btn">ask a questions</span>
                </div>
            </div>
            <div class="comment-line">
                <div class="top clearfix">
                    <div class="date">25/01/2016</div>
                    <div class="box-img">
                        <img src="catalog/view/theme/canary/img/comment-img.png" alt="img">
                    </div>
                    <div class="box-text">
                        <div class="author">Demo name <span>Verified Reviewer</span></div>
                        <div class="rating">
                            <i class="star active"></i>
                            <i class="star active"></i>
                            <i class="star active"></i>
                            <i class="star active"></i>
                            <i class="star"></i>
                        </div>
                        consectetur
                    </div>
                </div>
                <div class="message-comment">
                    dolor sit amet, consectetur adipiscing elit. Mauris sit amet sem varius, fringilla erat a, blandit arcu. Cras sit amet justo eu erat imperdiet dictum ac eget nulla. Aliquam erat volutpat.em varius, fringilla erat a, blandit arcu. Cras
                </div>
                <div class="share-box clearfix">
                    <a href="#" class="share-comment"><i class="share-ico"></i>share</a>
                    <div class="like-dislike">
                        <a href="#">Was This Review Helpful?</a>
                        <a href="#" class="like"><i class="like-ico"></i></a> 1
                        <a href="#" class="dislike"><i class="dislike-ico"></i></a> 0
                    </div>
                </div>
            </div>
            <div class="comment-line">
                <div class="top clearfix">
                    <div class="date">25/01/2016</div>
                    <div class="box-img">
                        <img src="catalog/view/theme/canary/img/comment-img.png" alt="img">
                    </div>
                    <div class="box-text">
                        <div class="author">Demo name <span>Verified Reviewer</span></div>
                        <div class="rating">
                            <i class="star active"></i>
                            <i class="star active"></i>
                            <i class="star active"></i>
                            <i class="star active"></i>
                            <i class="star"></i>
                        </div>
                        consectetur
                    </div>
                </div>
                <div class="message-comment">
                    dolor sit amet, consectetur adipiscing elit. Mauris sit amet sem varius, fringilla erat a, blandit arcu. Cras sit amet justo eu erat imperdiet dictum ac eget nulla. Aliquam erat volutpat.em varius, fringilla erat a, blandit arcu. Cras
                </div>
                <div class="share-box clearfix">
                    <a href="#" class="share-comment"><i class="share-ico"></i>share</a>
                    <div class="like-dislike">
                        <a href="#">Was This Review Helpful?</a>
                        <a href="#" class="like"><i class="like-ico"></i></a> 1
                        <a href="#" class="dislike"><i class="dislike-ico"></i></a> 0
                    </div>
                </div>
            </div>
            <div class="comment-line">
                <div class="top clearfix">
                    <div class="date">25/01/2016</div>
                    <div class="box-img">
                        <img src="catalog/view/theme/canary/img/comment-img.png" alt="img">
                    </div>
                    <div class="box-text">
                        <div class="author">Demo name <span>Verified Reviewer</span></div>
                        <div class="rating">
                            <i class="star active"></i>
                            <i class="star active"></i>
                            <i class="star active"></i>
                            <i class="star active"></i>
                            <i class="star"></i>
                        </div>
                        consectetur
                    </div>
                </div>
                <div class="message-comment">
                    dolor sit amet, consectetur adipiscing elit. Mauris sit amet sem varius, fringilla erat a, blandit arcu. Cras sit amet justo eu erat imperdiet dictum ac eget nulla. Aliquam erat volutpat.em varius, fringilla erat a, blandit arcu. Cras
                </div>
                <div class="share-box clearfix">
                    <a href="#" class="share-comment"><i class="share-ico"></i>share</a>
                    <div class="like-dislike">
                        <a href="#">Was This Review Helpful?</a>
                        <a href="#" class="like"><i class="like-ico"></i></a> 1
                        <a href="#" class="dislike"><i class="dislike-ico"></i></a> 0
                    </div>
                </div>
            </div>
            <ul class="pagination pull-left">
                <li class="active">
                    <a href="#">1</a>
                </li>
                <li>
                    <a href="#">2</a>
                </li>
                <li class="arrow">
                    <a href="#"> &gt; </a>
                </li>
                <li class="arrow">
                    <a href="#"> &gt;|</a>
                </li>
            </ul>
        </div>
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
    <section class="single-product">
        <div class="title-for-product">MATCHING BANDS</div>
        <div class="owl-carousel owl-product">
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img9.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img10.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img7.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
            <div class="item">
                <div class="box-img"><a href="#"><img src="catalog/view/theme/canary/img/img8.png" alt="img"></a></div>
                <div class="article"><a href="#">Engagament rings</a></div>
            </div>
        </div>
    </section>
</main>







<script type="text/javascript">

    $('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
        $.ajax({
            url: 'index.php?route=product/product/getRecurringDescription',
            type: 'post',
            data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
            dataType: 'json',
            beforeSend: function() {
                $('#recurring-description').html('');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();

                if (json['success']) {
                    $('#recurring-description').html(json['success']);
                }
            }
        });
    });


    //add product to cart
    $('#button-cart').on('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-cart').button('loading');
            },
            complete: function() {
                $('#button-cart').button('reset');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();
                $('.form-group').removeClass('has-error');

                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            var element = $('#input-option' + i.replace('_', '-'));

                            if (element.parent().hasClass('input-group')) {
                                element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            } else {
                                element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            }
                        }
                    }

                    if (json['error']['recurring']) {
                        $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
                    }

                    // Highlight any found errors
                    $('.text-danger').parent().addClass('has-error');
                }

                if (json['success']) {
                    $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    $('#w-but-cart').html('<span>cart ('+json['count']+')</span>');

                    $('html, body').animate({ scrollTop: 0 }, 'slow');

                    $('.cart-basket').load('index.php?route=common/cart/info .w-cart-basket');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    //$('.date').datetimepicker({
    //	pickTime: false
    //});
    //
    //$('.datetime').datetimepicker({
    //	pickDate: true,
    //	pickTime: true
    //});
    //
    //$('.time').datetimepicker({
    //	pickDate: false
    //});

    $('button[id^=\'button-upload\']').on('click', function() {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function() {
            if ($('#form-upload input[name=\'file\']').val() != '') {
                clearInterval(timer);

                $.ajax({
                    url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function() {
                        $(node).button('loading');
                    },
                    complete: function() {
                        $(node).button('reset');
                    },
                    success: function(json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            alert(json['success']);

                            $(node).parent().find('input').attr('value', json['code']);
                        }
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });

    $('#review').delegate('.pagination a', 'click', function(e) {
        e.preventDefault();

        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');
    });

    $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').on('click', function() {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function() {
                $('#button-review').button('loading');
            },
            complete: function() {
                $('#button-review').button('reset');
            },
            success: function(json) {
                $('.alert-success, .alert-danger').remove();

                if (json['error']) {
                    $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').prop('checked', false);
                }
            }
        });
    });

    $(document).ready(function() {
        $('.thumbnails').magnificPopup({
            type:'image',
            delegate: 'a',
            gallery: {
                enabled:true
            }
        });
    });
</script>



<?php echo isset($footer) ? $footer : ''; ?>
