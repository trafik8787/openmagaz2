

<a href="#" onclick="return false" id="w-but-cart">
    <i class="icons-cart_icon"></i>
    <?if (!empty($count)):?>
        <span class="w-count-circle"><?php echo $count; ?></span>
    <?endif?>

    <span>cart</span>
</a>
<div class="cart-basket">
    <div class="w-cart-basket">
        <button class="close-cart-main"></button>
        <?php if ($products || $vouchers) : ?>
        <div class="product-box">
            <div class="table-responsive">
                <table class="table table-hover table-condensed">
                    <tbody>
                        <?php foreach ($products as $product) : ?>
                            <tr>
                                <td>
                                    <div class="box-img">
                                        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"></a>
                                    </div>
                                </td>
                                <td>
                                    <div class="title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                                    <?php if ($product['option']):?>
                                        <?php foreach ($product['option'] as $option):?>
                                        <br />
                                        <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                                        <?endforeach?>
                                    <?endif?>
                                    <?php if ($product['recurring']):?>
                                        <br />
                                        <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?> </small>
                                    <?endif?>
                                    X<?php echo $product['quantity']; ?>: <span class="red-text"><?php echo $product['total']; ?></span>
                                </td>
                                <td style="vertical-align: middle;">
                                    <button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button>
                                </td>
                            </tr>
                        <?endforeach?>
                    </tbody>
                </table>
            </div>

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
                <a href="<?php echo $cart; ?>" class="red-btn pull-left w-general-category"><i class="cart-white-ico"></i><?php echo $text_cart; ?></a>
                <a href="<?php echo $checkout; ?>" class="red-btn pull-right w-general-category"><?php echo $text_checkout; ?></a>
            </div>
        </div>

        <?else:?>
        <div class="product-box">
            <p class="text-center"><?php echo $text_empty; ?></p>
        </div>
        <?endif?>
    </div>
</div>
