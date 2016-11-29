<a href="#" onclick="return false" id="w-but-cart">
    <i class="icons-cart_icon"></i>
    <?if (!empty($count)):?>
        <span class="w-count-circle"><?php echo $count; ?></span>
    <?endif?>
    <span>cart</span>
</a>
<span class="span2">(<?php echo $count; ?>)</span>
<div class="cart-basket">
    <div class="w-cart-basket">
        <!-- <button class="close-cart-main"></button> -->
        <?php if ($products || $vouchers) : ?>
            <div class="product-box">
                <table class="table table-condensed">
                    <tbody>
                        <?php foreach ($products as $product) : ?>
                            <?if (!empty($product[0])):?>
                                <tr>
                                    <td>
                                        <div class="box-img">
                                            <a href="<?php echo $product[0]['href']; ?>"><img src="<?php echo $product[0]['thumb']; ?>" alt="<?php echo $product[0]['name']; ?>" title="<?php echo $product[0]['name']; ?>"></a>
                                            <button type="button" onclick="cart.remove('<?php echo $product[0]['cart_id']; ?>'); cart.remove('<?php echo $product[1]['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-xs head-basket-remove"><i class="fa fa-times"></i></button>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="title"><a href="<?php echo $product[0]['href']; ?>"><?php echo $product[0]['name']; ?></a></div>
                                        <div class="head-basket-item-price"><?php echo $product[0]['total']; ?></div>
                                        <div class="title" style="margin-top: 16px;"><a href="<?php echo $product[1]['href']; ?>"><i class="fa fa-diamond" aria-hidden="true"></i><?php echo $product[1]['name']; ?></a></div>
                                        <div class="head-basket-item-price" style="margin-top: 0;"><?php echo $product[1]['total']; ?></div>
                                    </td>
                                </tr>
                            <?else:?>
                                <tr>
                                    <td>
                                        <div class="box-img">
                                            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"></a>
                                            <button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-xs head-basket-remove"><i class="fa fa-times"></i></button>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                                        <div class="head-basket-item-price"><?php echo $product['total']; ?></div>
                                    </td>
                                </tr>
                            <?endif?>
                        <?endforeach?>
                    </tbody>
                </table>
            </div>
            <div class="wrapper-text">
                <?php foreach ($totals as $total) : ?>
                    <p><?php echo $total['title']; ?>: <?php echo $total['text']; ?></p>
                <?endforeach?>
                <div class="box-btn clearfix">
                    <a href="<?php echo $cart; ?>" class="btn w-btn-orange btn-lg"><?php echo $text_cart; ?></a>
                    <a href="<?php echo $checkout; ?>" onmouseup="ga('send', 'event', 'button, 'click', 'Checkout');" class="btn w-btn-orange btn-lg"><?php echo $text_checkout; ?></a>
                </div>
            </div>
        <?else:?>
            <div class="basket-is-empty">
                <p class="text-center"><?php echo $text_empty; ?></p>
            </div>
        <?endif?>
    </div>
</div>
