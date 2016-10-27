

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
                            <tr>
                                <td>
                                    <div class="box-img">
                                        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"></a>
                                        <button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-xs head-basket-remove"><i class="fa fa-times"></i></button>
                                    </div>

                                </td>
                                <td>
                                    <div class="title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                                    <?php if ($product['option']):?>
                                        <!-- todo remove hide if you need this -->
                                        <div class="head-basket-options hide">
                                            <?php foreach ($product['option'] as $option):?>
                                            <span><?php echo $option['name']; ?> <?php echo $option['value']; ?></span>
                                            <span><?php echo $option['name']; ?> <?php echo $option['value']; ?></span>
                                            <span><?php echo $option['name']; ?> <?php echo $option['value']; ?></span>
                                            <span><?php echo $option['name']; ?> <?php echo $option['value']; ?></span>
                                            <?endforeach?>
                                        </div>
                                    <?endif?>
                                    <?php if ($product['recurring']):?>
                                        <!-- todo remove hide if you need this -->
                                        <div class="head-basket-options hide">
                                            <span><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?> </span>
                                        </div>
                                    <?endif?>
                                    <!-- todo remove hide if you need this -->
                                    <div class="head-basket-item-qty hide"><small>x</small><?php echo $product['quantity']; ?></div>

                                    <div class="head-basket-item-price"><?php echo $product['total']; ?></div>
                                </td>
                            </tr>
                        <?endforeach?>
                    </tbody>
                </table>

            <!--*<?php foreach ($products as $product) : ?>*-->



                <!--*<div class="one-product clearfix">*-->
                    <!--*<div class="box-img">*-->
                        <!--*<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"></a>*-->
                    <!--*</div>*-->
                    <!--*<div class="text-block">*-->
                        <!--*<div class="title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>*-->

                        <!--*<?php if ($product['option']):?>*-->
                            <!--*<?php foreach ($product['option'] as $option):?>*-->
                            <!--*<br />*-->
                            <!--*- <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>*-->
                            <!--*<?endforeach?>*-->
                        <!--*<?endif?>*-->
                        <!--*<?php if ($product['recurring']):?>*-->
                            <!--*<br />*-->
                            <!--*- <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>*-->
                        <!--*<?endif?>*-->

                        <!--*X <?php echo $product['quantity']; ?>: <span class="red-text"><?php echo $product['total']; ?></span>*-->
                        <!--*<button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button>*-->
                    <!--*</div>*-->
                <!--*</div>*-->

            <!--*<?endforeach?>*-->
        </div>
        <div class="wrapper-text">
            <?php foreach ($totals as $total) : ?>
                <p><?php echo $total['title']; ?>: <?php echo $total['text']; ?></p>
            <?endforeach?>
            <div class="box-btn clearfix">
                <a href="<?php echo $cart; ?>" class="btn w-btn-orange btn-lg"><?php echo $text_cart; ?></a>
                <a href="<?php echo $checkout; ?>" class="btn w-btn-orange btn-lg"><?php echo $text_checkout; ?></a>
            </div>
        </div>

        <?else:?>
        <div class="basket-is-empty">
            <p class="text-center"><?php echo $text_empty; ?></p>
        </div>
        <?endif?>
    </div>
</div>
