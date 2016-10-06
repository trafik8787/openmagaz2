<?php echo isset($header) ? $header : ''; ?>


<?//dd($width)?>
<?//dd($attribute_groups)?>
<?//dd($attribute_groups)?>
<?//dd($products_metal)?>



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
                    <div class="slider-for">
                        <?php foreach ($images as $image):?>

                            <?if (!empty($image['video'])):?>
                                <div>
                                    <video autoplay loop class="myVideo" src="<?=$image['video']?>" onclick="this.play();" style="margin-left: auto; margin-right: auto; width: 100%;"></video>
                                </div>
                            <?else:?>
                                <div><img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" style="margin-left: auto; margin-right: auto; width: 100%;"></div>
                            <?endif?>
                        <?endforeach?>

                    </div>
                    <div class="slider-nav">

                        <?php foreach ($images as $image):?>

                            <?if (!empty($image['video'])):?>
                                <div class="wrapper-img-slider" >
                                    <video width="69px" height="65px" src="<?=$image['video']?>"></video>
                                </div>
                            <?else:?>
                                <div class="wrapper-img-slider"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" ></div>
                            <?endif?>


                        <?endforeach?>

                    </div>
                </div>
                <div class="one-product-info" id="product">
                    <div class="text-article clearfix"><?=$name?> <div class="product-code">Product code: <strong>SKU:<?=$sku?></strong></div></div>
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
                        <?=$description?>
                    </div>
                    <div class="one-info one-info-last clearfix">
                        <div class="title-red">SETTING SPECIFICATIONS SKU: <?=$sku?></div>
                        METAL: <?=list_metal($metal)?><br/>
                        <?if ($weight != ''):?>
                            WEIGHT: <?=$weight?> g.
                            <br/>
                        <?endif?>
                        <?if ($width != ''):?>
                            WIDTH: <?=$width?> mm.
                            <br/>
                        <?endif?>


                        <?if (!empty($attribute_groups)):?>
                            <?foreach ($attribute_groups[0]['attribute'] as $row):?>
                                <?=$row['name']?>: <?=$row['text']?> <br/>
                            <?endforeach?>
                        <?endif?>


                        <!--*<a href="#" class="more-diamant">more about diamonds>>></a>*-->
                    </div>

                    <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="1" id="input-quantity" />
                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />

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


                                <?php if ($option['type'] == 'select' AND $option['name'] == 'SIZE'):?>


                                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                        <div class="title" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></div>
                                        <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="dropdown" >
                                            <option value=""><?php echo $text_select; ?></option>
                                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                <?php if ($option_value['price']) { ?>
                                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                <?php } ?>
                                            </option>
                                            <?php } ?>
                                        </select>
                                    </div>


                                <?endif?>

                            <?endforeach?>

                            <?if (!empty($products_metal)):?>
                                <div class="title">Precious metal</div>
                                <div class="cc-shipping-row">
                                    <input type="text" class="shipping-input select-simulate-input" id="si7" required>
                                    <label for="si7" class="shipping-label"><?=list_metal($metal)?></label>
                                    <a href="#" class="select-simulate-btn"></a>
                                    <ul class="select-simulate-list">
                                        <?php foreach ($products_metal as $key => $row_metal): ?>
                                            <li><a class="w-product-ajax" href="<?php echo $row_metal['href']; ?>" data-value="<?php echo $row_metal['href']; ?>"><?php echo $row_metal['name']; ?></a></li>
                                        <?endforeach?>

                                    </ul>
                                </div>

                            <?endif?>

                        </div>

                    <?endif?>

                    <div class="one-line-information">
                        <i class="truck-ico"></i>Free FedEx Priority Overnight Shipping:
                    </div>

                    <div class="one-line-information">
                        <i class="risk-free-ico"></i>Risk-free Retail
                    </div>
                    <div class="line-price-product clearfix">
                        <div class="price-product"><?php echo $price; ?></div>
                        <div class="setting-price">(Setting price only)</div>
                        <div>
                            <?if ($path == 69): //weding rings?>
                            <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="red-btn"><?php echo $button_cart; ?></button>
                            <?else:?>
                                <button type="button" data-toggle="modal" data-target="#w-modal-cart"  class="red-btn">Select This Setting</button>
                            <?endif?>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="top-main-r top-main-r3">
        <!--*<div class="wrapper-main-r text-center">
            <div class="title">This is Photoshop version</div>
            <div class="text">
                This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum
            </div>
        </div>*-->
    </section>

    <?php if ($products):?>

        <section class="single-product">
            <div class="title-for-product"><?php echo $text_related; ?></div>
            <div class="owl-carousel owl-product">

                <?foreach ($products as $row):?>


                    <div class="item">
                        <div class="box-img"><a href="<?=$row['href']?>"><img src="<?=$row['img']?>" alt="<?=$row['name']?>"></a></div>
                        <div class="article"><a href="<?=$row['href']?>"><?=$row['name']?></a></div>
                    </div>

                <?endforeach?>

            </div>
        </section>
    <?endif?>


    <section class="center-bl comment-brand clearfix">
        <?php if ($review_status):?>
            <div class="comment-box">
                <div class="btn-box-comment">
                    <div>
                        <button class="comment-btn"><?php echo $reviews; ?></button>
                        <button class="comment-btn">Questions(2)</button>
                    </div>
                    <div>
                        <button class="comment-btn" id="write-review">write a review</button>
                        <span class="comment-btn">ask a questions</span>
                    </div>
                </div>

                <div id="write-review-form" class="panel-collapse collapse">
                    <div class="panel-body">

                        <form class="form-horizontal" id="form-review">
                            <h2><?php echo $text_write; ?></h2>
                            <?php if ($review_guest) { ?>
                            <div class="form-group required">
                                <div class="col-sm-12">
                                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group required">
                                <div class="col-sm-12">
                                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                    <div class="help-block"><?php echo $text_note; ?></div>
                                </div>
                            </div>
                            <div class="form-group required">
                                <div class="col-sm-12">
                                    <label class="control-label"><?php echo $entry_rating; ?></label>
                                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                                    <input type="radio" name="rating" value="1" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="2" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="3" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="4" />
                                    &nbsp;
                                    <input type="radio" name="rating" value="5" />
                                    &nbsp;<?php echo $entry_good; ?></div>
                            </div>
                            <?php echo $captcha; ?>
                            <div class="buttons clearfix">
                                <div class="pull-right">
                                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                                </div>
                            </div>
                            <?php } else { ?>
                            <?php echo $text_login; ?>
                            <?php } ?>
                        </form>

                    </div>
                </div>

                <div id="review"></div>

            </div>

        <?endif?>



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
                            <button type="button" data-dismiss="modal" aria-hidden="true" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="red-btn w-modal-button"><?php echo $button_cart; ?></button>
                        </p>

                        <p>
                            <button type="button" data-dismiss="modal" aria-hidden="true" id="w-button-add-product-complect" class="red-btn w-modal-button">Add a diamond</button>
                        </p>
                    </div>

                </div>

            </div>
        </div>
    </div>

</main>







<script type="text/javascript">


    $(document).on('click', '#write-review', function(){
        $('#write-review-form').collapse('toggle');
    });



    $('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
        $.ajax({
            url: '/index.php?route=product/product/getRecurringDescription',
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
            url: '/index.php?route=checkout/cart/add',
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
                //console.log(json);
                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            var element = $('#input-option' + i.replace('_', '-'));

                            if (element.parent().hasClass('input-group')) {

                                element.parents('.dropdown').after('<div class="text-danger w-tex-popo">' + json['error']['option'][i] + '</div>');
                                $(".dropdown").popover({
                                    placement : 'top',
                                    container: '.size-product',
                                    content: 'Please select size!'
                                }).on("mouseenter", function () {
                                    var _this = this;
                                    $(this).popover("show");
                                    $(".popover").on("mouseleave", function () {
                                        $(_this).popover('hide');
                                    });
                                }).on("mouseleave", function () {
                                    var _this = this;
                                    setTimeout(function () {
                                        if (!$(".popover:hover").length) {
                                            $(_this).popover("hide");
                                        }
                                    }, 300);
                                });
                                $('.dropdown').popover('show');
                            } else {

                                element.parents('.dropdown').after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                                $(".dropdown").popover({
                                    placement : 'top',
                                    container: '.size-product',
                                    content: 'Please select size!'
                                }).on("mouseleave", function () {
                                    var _this = this;
                                    setTimeout(function () {
                                        if (!$(".popover:hover").length) {
                                            $(_this).popover("hide");
                                        }
                                    }, 3000);
                                });
                                $('.dropdown').popover('show');
                            }
                        }
                    }

                    if (json['error']['recurring']) {
                        $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
                    }

                    // Highlight any found errors
                    //$('.text-danger').parent().addClass('has-error');
                }

                if (json['success']) {
                    $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    $('#w-but-cart').html('<span>cart ('+json['count']+')</span>');

                    $('html, body').animate({ scrollTop: 0 }, 'slow');

                    $('.cart-basket').load('/index.php?route=common/cart/info .w-cart-basket');
                    $('#w-but-cart').trigger('click');
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

    $('#review').load('/index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').on('click', function() {
        $.ajax({
            url: '/index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
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
                    $('#write-review-form .panel-body').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#write-review-form .panel-body').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

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
