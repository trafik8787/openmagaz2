<?php echo isset($header) ? $header : ''; ?>



<?//dd($products)?>


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







<?php echo isset($footer) ? $footer : ''; ?>
