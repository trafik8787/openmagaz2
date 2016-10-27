<?php echo isset($header) ? $header : ''; ?>



<?//dd($products)?>


<main class="w-general-container">
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

            <?php if ($attention) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
            <?php } ?>
            <?php if ($success) { ?>
            <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
            <?php } ?>
            <?php if ($error_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
            <?php } ?>


            <?php echo $content_top; ?>

        </div>


        <div class="cart-page">
            <div class="center-bl">
                <div class="cart-header">Shopping Cart</div>
                <div class="top-cart row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="blue-block">
                            <div class="title">NEED HELP?</div>
                            <ul>
                                <li><i class="help-ico1"></i><a href="#">00-214-6550 | 24/7</a></li>
                                <li><i class="help-ico2"></i><a href="#">Online Chat now</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-12 col-xs-12">
                        <div class="yellow-block">
                            <div class="title">WE STAND BEHALF LOW-PRICE GUARANTEE AND AN EASY RETURN POLICY</div>
                            <div class="row line-cart-low-price">
                                <div class="col-md-8 col-sm-8 col-xs-12">
                                    <div class="clearfix">
                                        <div class="one-block">
                                            <i class="cart-awords1"></i>
                                            <span>Lowest Prices<br/>Guaranteed</span>
                                        </div>
                                        <div class="one-block">
                                            <i class="cart-awords2"></i>
                                            <span>Money Back<br/>Guarantee</span>
                                        </div>
                                        <div class="one-block">
                                            <i class="cart-awords3"></i>
                                            <span>Secure</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4 clearfix">
                                    <a href="<?php echo $checkout; ?>" class="btn w-btn-orange btn-lg w-general-category" role="button"><div class="icons-checkout"></div>CHECKOUT</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="wrapper-cart-box">

                    <?//dd($products)?>
                    <form action="<?php echo $action; ?>" method="post" class="w-form-cart-sub" enctype="multipart/form-data">

                        <?php foreach ($products as $product) :?>
                            <div class="one-line">
                                <div class="box-img">
                                    <img src="<?=$product['thumb']?>" width="100%" alt="img">
                                </div>
                                <div class="text-box">
                                    <div class="type"><?if ($product['diamond'] == 1):?>Diamond<?else:?>Rings<?endif?></div>
                                    <div class="name"><span><?=$product['name']?></span> <a href="#" data-toggle="tooltip" title="<?php echo $button_remove; ?>" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" class="remove-ico"></a></div>
                                    SKU: <?=$product['sku']?>
                                    <?foreach ($product['option'] as $row):?>
                                        | <?=$row['name']?> <?=$row['value']?>
                                    <?endforeach?>
                                    <label for="catCheck1"><input type="checkbox" id="catCheck1">Would you like to engrave your ring? It's FREE!</label>
                                </div>
                                <div class="number-block">
                                    <div class="quantity">Quantity</div>
                                    <div class="box-number-switch">
                                        <a href="#" class="arrow-btn-number arrow-t" data-action="plus"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
                                        <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" class="quantity-input" >
                                        <a href="#" class="arrow-btn-number arrow-b" data-action="minus"><i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    </div>
                                    <div class="price"><?=$product['total']?></div>
                                </div>
                            </div>
                        <?endforeach?>

                    </form>

                </div>
                <div class="cart-header">MATCHING ITEMS</div>
                <div class="matching-cart">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xs-12 clearfix">
                            <div class="box-img">
                                <img src="/catalog/view/theme/canary/img/img264.png" alt="img">
                            </div>
                            <div class="text-box">
                                <div class="article">
                                    <a href="#">14k Yellow Gold Round Halo Diamond Engagement Ring</a>
                                </div>
                                <div class="price">$1,595.00</div>
                                <a href="#" class="btn w-btn-orange btn-lg" role="button"><div class="add-tocart-ico"></div>Add this</a>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12 clearfix">
                            <div class="box-img">
                                <img src="/catalog/view/theme/canary/img/img265.png" alt="img">
                            </div>
                            <div class="text-box">
                                <div class="article">
                                    <a href="#">14k Yellow Gold Round Halo Diamond Engagement Ring</a>
                                </div>
                                <div class="price">$790.00</div>
                                <a href="#" class="btn w-btn-orange btn-lg" role="button"><div class="add-tocart-ico"></div>Add this</a>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12 clearfix">
                            <div class="box-img">
                                <img src="/catalog/view/theme/canary/img/img267.png" alt="img">
                            </div>
                            <div class="text-box">
                                <div class="article">
                                    <a href="#">14k Yellow Gold Round Halo Diamond Engagement Ring</a>
                                </div>
                                <div class="price">$2,795.00</div>
                                <a href="#" class="btn w-btn-orange btn-lg" role="button"><div class="add-tocart-ico"></div>Add this</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="total-cart-pay clearfix">
                    <i class="cart-ico1"></i>
                    <div class="form-wrapper">
                        <div class="title">Do you have an offer code?</div>
                        <form action="#">
                            <input type="text" placeholder="Enter a code">
                            <a href="#">Validate</a>
                        </form>
                    </div>
                    <div class="all-numbers">
                        <table>
                            <tr>
                                <td>Subtotal:</td>
                                <td><?=$totals[0]['text']?></td>
                            </tr>
                            <tr>
                                <td>Fedex Shipping:</td>
                                <td>Free</td>
                            </tr>
                            <tr>
                                <td>Sales TAX:</td>
                                <td>$ 0</td>
                            </tr>
                            <tr>
                                <td><span class="total">TOTAL:</span></td>
                                <td><span class="all-price"><?=$totals[1]['text']?></span></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="cart-header">LIMITED TIME OFFER JUST YOU</div>
                <div class="wrapper-cart-box">
                    <div class="one-line one-line2">
                        <div class="box-img">
                            <img src="/catalog/view/theme/canary/img/img271.png" alt="img">
                        </div>
                        <div class="text-box">
                            <div class="type">Diamond</div>
                            <div class="name"><span>14K WHITE PETITE DIAMOND STAR EARRINGS</span></div>
                        </div>
                        <div class="number-block">
                            <div class="quantity">Quantity</div>
                            <div class="box-number-switch">
                                <a href="#" class="arrow-btn-number arrow-t" data-action="plus"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
                                <input type="text" value="1">
                            </div>
                            <div class="price">
                                <span>$ 775</span>
                                $ 690
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cards-box clearfix">
                    <div class="text">
                        <div class="title">Shipping Information</div>
                        Receive on: Tuesday, September, 27<br/>
                        Via FedEx Priority Overnight <sup>®</sup>
                    </div>
                    <div class="all-cards clearfix">
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card1.png" alt="card"></a>
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card2.png" alt="card"></a>
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card3.png" alt="card"></a>
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card4.png" alt="card"></a>
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card5.png" alt="card"></a>
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card6.png" alt="card"></a>
                    </div>
                    <a href="<?php echo $checkout; ?>" class="btn w-btn-orange btn-lg w-general-category"  role="button"><div class="icons-checkout"></div>CHECKOUT</a>
                    <a href="#" class="btn w-btn-white btn-lg" role="button"><i class="fa fa-chevron-right" aria-hidden="true"></i>Continue shopping</a>
                </div>
                <div class="cart-page-info">
                    For Saturday delivery, contact customer service at <b>800-214-6550  |  24/7</b><br/>
                    View our shipping policy
                </div>
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <table class="wishlist-table">
                        <thead>
                        <tr>
                            <td><?php echo $column_image; ?></td>
                            <td><?php echo $column_name; ?></td>
                            <td><?php echo $column_model; ?></td>
                            <td><?php echo $column_quantity; ?></td>
                            <td><?php echo $column_price; ?></td>
                            <td><?php echo $column_total; ?></td>
                            <td>Column_remove</td>
                        </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($products as $product) :?>

                                <?php if (!empty($product[0])):?>

                                    <tr>

                                        <td data-th="Image">
                                            <div class="wishlist-image">
                                                <?php if (!empty($product[0]['thumb'])):?>
                                                    <img src="<?=$product[0]['thumb']; ?>"
                                                         alt="<?php echo $product[0]['name']; ?>"
                                                         title="<?php echo $product[0]['name']; ?>" width="47">
                                                <?endif?>
                                                <br>
                                                <?php if (!empty($product[1]['thumb'])):?>
                                                <img src="<?=$product[1]['thumb']; ?>"
                                                     alt="<?php echo $product[1]['name']; ?>"
                                                     title="<?php echo $product[1]['name']; ?>" width="47">
                                                <?endif?>
                                            </div>
                                        </td>
                                        <td data-th="Product Name">
                                            <div class="cart-inrow"><?=!empty($product[0]['name'])?></div>
                                            <div class="cart-inrow"><?=!empty($product[1]['name'])?></div>
                                        </td>
                                        <td data-th="Model">
                                            <div class="cart-inrow"><?php echo !empty($product[0]['model']); ?></div>
                                            <div class="cart-inrow"><?php echo !empty($product[1]['model']); ?></div>
                                        </td>
                                        <td data-th="Quantity">
                                            <?if (!empty($product[0])):?>
                                                <div class="cart-inrow">
                                                    <?php if($product[0]['diamond'] == 1):?>
                                                        <input type="hidden" name="diamond" value="1">
                                                    <?endif?>
                                                    <input type="text" value="1" disabled class="quantity-input">

                                                </div>
                                            <?endif?>

                                            <?if (!empty($product[1])):?>
                                                <div class="cart-inrow">
                                                    <?php if( $product[1]['diamond'] == 1):?>
                                                        <input type="hidden" name="diamond" value="1">
                                                    <?endif?>
                                                    <input type="text" value="1" disabled class="quantity-input">

                                                </div>
                                            <?endif?>
                                        </td>
                                        <td data-th="Unit price">
                                            <?if (!empty($product[0])):?>
                                                <div class="cart-inrow">
                                                    <span class="wishlist-table-price"><?=$product[0]['price']?></span>
                                                </div>
                                            <?endif?>

                                            <?if (!empty($product[1])):?>
                                                <div class="cart-inrow">
                                                    <span class="wishlist-table-price"><?=$product[1]['price']?></span>
                                                </div>
                                            <?endif?>
                                        </td>
                                        <td data-th="Total">
                                            <div class="cart-inrow">
                                                <span class="wishlist-table-price"><?=!empty($product[0]['total'])?></span>
                                            </div>
                                            <div class="cart-inrow">
                                                <span class="wishlist-table-price"><?=!empty($product[1]['total'])?></span>
                                            </div>
                                        </td>
                                        <td data-th="Column_remove">
                                            <?if (!empty($product[0])):?>
                                                <div class="cart-inrow">
                                                    <a href="#" class="wishlist-action cart-remove-column" onclick="cart.remove('<?php echo $product[0]['cart_id']; ?>');"
                                                       data-toggle="tooltip" title="<?php echo $button_remove; ?>"></a>
                                                </div>
                                            <?endif?>
                                            <?if (!empty($product[1])):?>
                                                <div class="cart-inrow">
                                                    <a href="#" class="wishlist-action cart-remove-column" onclick="cart.remove('<?php echo $product[1]['cart_id']; ?>');"
                                                       data-toggle="tooltip" title="<?php echo $button_remove; ?>"></a>
                                                </div>
                                            <?endif?>
                                        </td>
                                    </tr>

                                <?else:?>

                                    <tr>

                                        <td data-th="Image">
                                            <div class="wishlist-image">
                                                <?php if ($product['thumb']):?>
                                                    <a href="<?php echo $product['href']; ?>">
                                                        <img src="<?php echo $product['thumb']; ?>"
                                                             alt="<?php echo $product['name']; ?>"
                                                             title="<?php echo $product['name']; ?>">
                                                    </a>
                                                <?endif?>
                                            </div>
                                        </td>
                                        <td data-th="Product Name">
                                            <div class="cart-inrow"><?php echo $product['name']; ?></div>

                                        </td>
                                        <td data-th="Model">
                                            <div class="cart-inrow"><?php echo $product['model']; ?></div>
                                        </td>
                                        <td data-th="Quantity">
                                            <?php if($product['diamond'] == 1):?>
                                                <input type="hidden" name="diamond" value="1">
                                            <?endif?>
                                            <div class="cart-inrow">
                                                <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]"
                                                       value="<?php echo $product['quantity']; ?>" size="1" class="quantity-input"/>

                                                <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>"
                                                        class="btn btn-default"><i class="fa fa-refresh"></i></button>
                                            </div>
                                        </td>
                                        <td data-th="Unit price">
                                            <div class="cart-inrow">
                                                <span class="wishlist-table-price"><?php echo $product['price']; ?></span>
                                            </div>
                                        </td>
                                        <td data-th="Total">
                                            <div class="cart-inrow">
                                                <span class="wishlist-table-price"><?php echo $product['total']; ?></span>
                                            </div>
                                        </td>
                                        <td data-th="Column_remove">
                                            <a href="#" data-toggle="tooltip" title="<?php echo $button_remove; ?>"
                                               onclick="cart.remove('<?php echo $product['cart_id']; ?>');"
                                               class="wishlist-action cart-remove-column"></a>
                                        </td>
                                    </tr>

                                <?endif?>

                            <?endforeach?>
                        </tbody>
                    </table>

                </form>

                <div class="clearfix">
                    <div class="cart-price-sum">

                        <?php foreach ($totals as $total) :?>

                            <div class="summary-price">
                                <div class="sp-text"><?php echo $total['title']; ?>:</div>
                                <div class="sp-price"><span><?php echo $total['text']; ?></span></div>
                            </div>

                        <?endforeach?>

                        <div class="cart-actions">
                            <a href="#" class="cart-action-link cart-continue">continue shopping</a>
                            <a href="<?php echo $checkout; ?>" class="cart-action-link cart-add w-general-category"><?php echo $button_checkout; ?></a>
                        </div>

                    </div>
                    <div class="cart-info">
                        <div class="checkout-info-inner-wrap checkout-info-actionsblock">
                            <div class="ci-title">24/7 Customer Service</div>
                            <div class="ci-phone"><i class="c-yellow-phone"></i>800-214-6550</div>
                            <div class="ci-actions-list">
                                <a href="#" class="ci-action-item">
                                    <span class="ci-action-ico"><i class="c-yellow-chat"></i></span>
                                    Chat now
                                </a>
                                <a href="#" class="ci-action-item">
                                    <span class="ci-action-ico"><i class="c-yellow-envelope"></i></span>
                                    Send massage
                                </a>
                                <a href="#" class="ci-action-item">
                                    <span class="ci-action-ico"><i class="c-yellow-inphone"></i></span>
                                    Call back
                                </a>
                            </div>
                        </div>
                        <a href="/faq" class="tofaq-link w-general-category">Try FAQ</a>
                    </div>


                </div>

            </div>
        </div>
    </section>
</main>

<script>
    $(document).ready(function () {
       $(document).on('click', '.arrow-btn-number', function () {
            $('.w-form-cart-sub').submit();
       });

        $(document).on('click', '.remove-ico', function () {
            $(this).closest('.one-line').detach();
            return false;

       });
    });
</script>




<?php echo isset($footer) ? $footer : ''; ?>
