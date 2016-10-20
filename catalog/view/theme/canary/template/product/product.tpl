<?php echo isset($header) ? $header : ''; ?>


<?//dd($width)?>
<?//dd($attribute_groups)?>
<?//dd($attribute_groups)?>
<?//dd($products_metal)?>



<main class="w-general-container">

    <section class="static-page">
        <div class="center-bl ">
            <div class="row margin-buttom-30 w-bredcrum-border">
                <ul class="breadcrumbs">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <li> >> </li>
                    <?php } ?>
                </ul>
            </div>

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
                        <div class="col-md-6 col-sm-6">
                            <div class="rating">
                                <?php for ($i = 1; $i <= 5; $i++) { ?>
                                <?php if ($rating < $i) { ?>
                                <i class="star"></i>
                                <?php } else { ?>
                                <i class="star active"></i>
                                <?php } ?>
                                <?php } ?>

                                <span><a href="" onclick="$('button#write-review').trigger('click'); $('html, body').animate({scrollTop: 1500}, 'slow'); return false;"><?php echo $reviews; ?></a></span>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 text-right">
                            <strong>SKU:<?=$sku?></strong>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <h1 class="w-product-name-h1"><?=$name?></h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 paging-bottom-20">
                            <h3 class="w-product-desc"><?=$description?></h3>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-md-12 col-sm-12">
                            <div class="product-details">

                                <div class="h3 text-center margin-top-0">Setting details</div>
                                <div class="icons-quality_service_icon"></div>

                                <div class="table-responsive table table-condensed margin-buttom-0">
                                    <table class="table">
                                        <tr>
                                            <td><span>METAL: <?=list_metal($metal)?></span></td>
                                            <td><span>WEIGHT: <?=$weight?> g.</span></td>
                                        </tr>
                                        <?if (!empty($attribute_groups)):?>
                                        <?foreach (array_chunk($attribute_groups[0]['attribute'], 2) as $row):?>

                                        <tr>
                                            <td><span><?=$row[0]['name']?>: <?=$row[0]['text']?></span></td>
                                            <td><span><?=$row[1]['name']?>: <?=$row[1]['text']?></span></td>
                                        </tr>
                                        <?endforeach?>
                                        <?endif?>

                                        <!-- TODO: More specifications btn
                                        <tr>
                                            <td></td>
                                            <td><span><a href="#" class="prod-more-spec">More specifications »</a></span></td>
                                        </tr>
                                        -->

                                        <?if (!empty($tags)):?>
                                        <tr>
                                            <td colspan="2">
                                                <div class="product-tags-divider"></div>
                                                <ul class="list-inline product-tags">
                                                    <?foreach ($tags as $row_tags):?>
                                                    <li>
                                                        <a href="<?=$row_tags['href']?>"><span class="tag-name-span"><?=$row_tags['tag']?></span></a>
                                                    </li>
                                                    <?endforeach?>
                                                </ul>
                                            </td>
                                        </tr>
                                        <?endif?>
                                    </table>
                                </div>

                                <div class="alert alert-info margin-buttom-0 product-buy-details clearfix">
                                    <div class="left">
                                        <?php if ($options) :?>

                                        <div class="size-product">

                                            <?php foreach ($options as $option):?>

                                            <?php if ($option['type'] == 'radio' AND $option['name'] == 'SIZE'):?>

                                            <!--*<div class="title">Size</div>*-->
                                            <div class="one-line size-radio height-inherit" id="input-option<?php echo $option['product_option_id']; ?>" data-toggle="buttons">

                                                <?php foreach ($option['product_option_value'] as $option_value): ?>

                                                <label class="btn btn-filter">
                                                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>">  <?php echo $option_value['name']; ?>
                                                </label>

                                                <?endforeach?>

                                            </div>

                                            <?endif?>


                                            <?php if ($option['type'] == 'select' AND $option['name'] == 'SIZE'):?>


                                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                <!--*<div class="title" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></div>*-->
                                                <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="dropdown">
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
                                            <!--*<div class="title">Precious metal</div>*-->
                                            <div class="cc-shipping-row">
                                                <input type="text" class="shipping-input select-simulate-input" id="si7" required readonly>
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
                                        <div class="text-right">
                                            <a href="#" class="your-ring-size">Select your ring size</a>
                                        </div>

                                    </div>
                                    <div class="right">
                                        <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="1" id="input-quantity" />
                                        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                        <div class="price-product">
                                            <span><?php echo $price; ?></span> <span class="h5">(Setting price)</span>
                                        </div>
                                        <div class="line-price-product clearfix">
                                            <?if ($path == 69): //weding rings?>
                                            <button type="button" id="button-cart" class="btn w-btn-orange btn-lg" data-loading-text="<?php echo $text_loading; ?>"> <i class="bold-angle-right"></i> <?php echo $button_cart; ?></button>
                                            <?else:?>
                                            <button class="btn w-btn-orange btn-lg" role="button" type="button" data-toggle="modal" data-target="#w-modal-cart"> <i class="bold-angle-right"></i> Select this setting</button>
                                            <?endif?>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                    <div class="product-advantages">
                        <div class="product-advantages-header">
                            <span class="h3 product-advantages-title">Best quality and service</span>
                            <div class="icons-quality_service_icon"></div>
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
                        </div>
                        <!--
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div>
                                    <a href="#">
                                        <div class="alert alert-info">
                                            <div class="media">
                                        <span class="pull-left">
                                            <i class="truck-ico"></i>
                                        </span>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><b>Free and Fast Shipping</b></h4>
                                                    <small>Fully Insured Overnight <br> Shipping</small>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div>
                                    <a href="#">
                                        <div class="alert alert-info">
                                            <div class="media">
                                        <span class="pull-left">
                                            <i class="risk-free-ico"></i>
                                        </span>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><b>Risk-free Retail</b></h4>
                                                    <small>100% Money Back <br> Guarantee</small>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div>
                                    <a href="#">
                                        <div class="alert alert-info">
                                            <div class="media">
                                        <span class="pull-left">
                                            <i class="glyphicon glyphicon-compressed" style="color: #fac652;font-size: 25px;"></i>
                                        </span>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><b>Free Resizing and Engraving</b></h4>
                                                    On All Bridal <br> Jewerly
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div>
                                    <a href="#">
                                        <div class="alert alert-info">
                                            <div class="media">
                                        <span class="pull-left">
                                            <i class="glyphicon glyphicon-map-marker" style="color: #fac652;font-size: 25px;"></i>
                                        </span>

                                                <div class="media-body">
                                                    <h4 class="media-heading"><b>Helping Others</b></h4>
                                                    A Partion of Your Purchase Goest <br> to Charity
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        -->
                    </div>

                </div>
            </div>

            <div class="alert alert-warning product-need-help">
                <span class="h4">Need Help?</span>
                <ul class="list-inline w-help-ned">
                    <li><a href="#"><span class="help-ico help-ico-chat"></span> <span class="help-text">Online Chat now</span></a></li>
                    <li><a href="#"><span class="help-ico help-ico-mail"></span> <span class="help-text">Email</span></a></li>
                    <li><a href="#"><span class="help-ico help-ico-phone"></span> <span class="help-text"><?=$telephone?> | 24/7</span></a></li>
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


    <?php if ($products):?>

    <!-- hiden TODO: delete this-->
    <section class="single-product hide">
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

    <div class="similar-section">
        <div class="center-bl clearfix">
            <div class="left">
                <div class="similar-header">
                    <div class="linebg-title">
                        <div class="linebg-line"></div>
                        <span>SIMILAR SETTINGS</span>
                    </div>
                </div>
                <div class="similar-list similar-list-3"></div>
            </div>
            <div class="right">
                <div class="similar-header">
                    <div class="linebg-title">
                        <div class="linebg-line"></div>
                        <span>MATCHING WEDDING RINGS</span>
                    </div>
                </div>
                <div class="similar-list similar-list-1">
                    <div class="product-item">
                        <div class="box-img">
                            <a href="http://canary2.webremote.net/engagement-rings/solitaire/14k-white-gold-classic-solitaire-engagement-ring-50817-EW14-441" class="w-product-ajax"><img src="http://canary2.webremote.net/image/cache/catalog/galery_rings/50817-E-228x228.jpg" alt="14k White Gold Classic Solitaire Engagement Ring " title="14k White Gold Classic Solitaire Engagement Ring "></a>
                        </div>
                        <div class="btn-box">
                            <a href="#" type="button" onclick="cart.add('441', '1'); return false;" class="cart-btn-item" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to Cart"></a>
                            <a href="#" class="compare-btn-item" data-toggle="tooltip" onclick="compare.add('441'); return false;" data-placement="top" title="" data-original-title="Compare this Product"></a>
                            <a href="http://canary2.webremote.net/engagement-rings/solitaire/14k-white-gold-classic-solitaire-engagement-ring-50817-EW14-441" class="search-btn-item w-product-ajax" data-toggle="tooltip" data-placement="top" title="" data-original-title="Views"></a>
                            <a href="#" class="wishlist-btn-item" data-toggle="tooltip" onclick="wishlist.add('441'); return false;" data-placement="top" title="" data-original-title="Add to Wish List"></a>
                        </div>
                        <div class="box-tovar-th">
                            <div class="name">14k White Gold Classic Solitaire Engagement Ring </div>

                            <span class="price">$550.00</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <section class="center-bl comment-brand clearfix thumbnail">
        <?php if ($review_status):?>
        <div class="comment-box">


            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
                <li class="active"><a href="#reviews" data-toggle="tab">Reviews <?php echo $reviews; ?></a></li>
                <li><a href="#questions" data-toggle="tab">Questions</a></li>

            </ul>

            <!-- Tab panes -->
            <div class="tab-content">

                <div class="tab-pane fade in active" id="reviews">

                    <button class="comment-btn" id="write-review">write a review</button>

                    <div id="write-review-form" class="panel-collapse collapse">
                        <div class="panel-body">

                            <form class="form-horizontal" id="form-review">
                                <span class="h3"><?php echo $text_write; ?></span>
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

                                    <div class="col-sm-5 col-md-5">
                                        <div><?php echo $entry_rating; ?>:</div>
                                        <div class="star-rating">

                                            <fieldset>
                                                <input type="radio" id="star5" name="rating" value="5" />
                                                <label for="star5" title="Outstanding">5 stars</label>
                                                <input type="radio" id="star4" name="rating" value="4" />
                                                <label for="star4" title="Very Good">4 stars</label>
                                                <input type="radio" id="star3" name="rating" value="3" />
                                                <label for="star3" title="Good">3 stars</label>
                                                <input type="radio" id="star2" name="rating" value="2" />
                                                <label for="star2" title="Poor">2 stars</label>
                                                <input type="radio" id="star1" name="rating" value="1" />
                                                <label for="star1" title="Very Poor">1 star</label>
                                            </fieldset>
                                        </div>
                                    </div>

                                    <div class="col-sm-7 col-md-7">

                                        <div class="pull-right">
                                            <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary">Send</button>
                                        </div>

                                    </div>

                                </div>

                                <?php echo $captcha; ?>

                                <?php } else { ?>
                                <?php echo $text_login; ?>
                                <?php } ?>
                            </form>

                        </div>
                    </div>

                    <div id="review"></div>

                </div>

                <div class="tab-pane fade" id="questions">
                    <button class="comment-btn" id="write-questions">ask a questions</button>
                </div>
            </div>



        </div>
        <?endif?>
    </section>

    <div class="modal fade styled-modal" id="w-modal-cart" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span>&times;</span></button>
                <div class="modal-body">
                    <div class="styled-modal-header">
                        <div class="styled-modal-title">What would you like to do?</div>
                        <div class="icons-quality_service_icon"></div>
                    </div>
                    <div class="product-modal-buttons">
                        <div class="row modal-btn-row">
                            <div class="col-xs-6">
                                <button class="btn w-btn-orange btn-lg text-center"type="button" data-dismiss="modal" aria-hidden="true" id="w-button-add-product-complect">Add a diamond</button>
                            </div>
                            <div class="col-xs-6">
                                <!-- DOTO: don't work btn-->
                                <button class="btn w-btn-orange btn-lg text-center">Add a gemstone</button>
                            </div>
                        </div>
                        <button type="button" data-dismiss="modal" aria-hidden="true" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn w-btn-orange btn-lg text-center"> <span class="add-tocart-ico"></span> <?php echo $button_cart; ?></button>
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
                $('.text-danger').remove();
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
