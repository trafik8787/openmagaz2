<?php echo isset($header) ? $header : ''; ?>



<?//dd($totals)?>


<main class="w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <li>&nbsp;»&nbsp;</li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-12 padding-0">
                    <a href="<?=get_baners_top_random()[1]?>"><img src="<?=get_baners_top_random()[0]?>" class="bread-baner" ></a>
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
                                <li><i class="help-ico1"></i><a href="tel:800 214 6550">800-214-6550 | 24/7</a></li>
                                <li><i class="help-ico2"></i><a href="javascript:$zopim.livechat.window.show()">Chat Online now</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-12 col-xs-12">
                        <div class="yellow-block">
                            <div class="title">WE STAND BEHIND OUR LOW-PRICE GUARANTEE AND EASY RETURN POLICY</div>
                            <div class="row line-cart-low-price">
                                <div class="col-md-8 col-sm-8 col-xs-12">
                                    <div class="clearfix text-center">
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
                                    <a href="<?php echo $checkout; ?>" onmouseup="ga('send', 'event', 'button, 'click', 'Checkout');" class="btn w-btn-orange btn-lg w-general-category" role="button"><div class="icons-checkout"></div>CHECKOUT</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="wrapper-cart-box">

                    <?//dd($products)?>
                    <form action="<?php echo $action; ?>" method="post" class="w-form-cart-sub" enctype="multipart/form-data">

                        <?php foreach ($products as $product) :?>

                            <?php if (!empty($product[0])):?>


                                <div class="one-line">
                                    <div class="box-img">
                                        <img src="<?=$product[0]['thumb']?>" width="100%" alt="img">
                                    </div>
                                    <div class="text-box">

                                        <div class="name"><span><?=$product[0]['name']?></span> <a href="#" data-toggle="tooltip" title="<?php echo $button_remove; ?>" onclick="cart.remove('<?php echo $product[0]['cart_id']; ?>'); cart.remove('<?php echo $product[1]['cart_id']; ?>');" class="remove-ico"></a></div>
                                        <div class="name"><i class="fa fa-diamond" aria-hidden="true"></i><span><?=$product[1]['name']?></span></div>

                                        SKU: <?=$product[0]['sku']?> <?foreach ($product[0]['option'] as $row):?>
                                        | <?=$row['name']?> <?=$row['value']?>
                                        <?endforeach?>
                                        <label class="catCheck1" style="border-bottom: 1px dashed #000080;padding-left: 0;margin-left: 50px;cursor: pointer;">Would you like to engrave your ring? It's FREE!</label>
                                        <input type="text" class="w-add-engrave" name="engrave[<?php echo $product[0]['cart_id']; ?>]" value="<?=$product[0]['engrave']?>" <?if(empty($product['engrave'])):?> style="display:none" <?endif?> />
                                        <p>SKU: <?=$product[1]['sku']?></p>
                                    </div>
                                    <div class="number-block">
                                        <div class="price"><?=$product[0]['total']?></div><br/>
                                        <div class="price"><?=$product[1]['total']?></div>
                                    </div>
                                </div>


                            <?else:?>

                                <div class="one-line"><?//dd($product)?>
                                    <div class="box-img">
                                        <img src="<?=$product['thumb']?>" width="100%" alt="img">
                                    </div>
                                    <div class="text-box">
                                        <div class="type"><?if ($product['diamond'] == 1):?>Diamond<?else:?>Rings<?endif?></div>
                                        <div class="name"><span><?=$product['name']?></span> <a href="#" data-toggle="tooltip" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" class="remove-ico"></a></div>
                                        SKU: <?=$product['sku']?>
                                        <?foreach ($product['option'] as $row):?>
                                            | <?=$row['name']?> <?=$row['value']?>
                                        <?endforeach?>
                                        <?if ($product['diamond'] == 0):?>
                                            <label class="catCheck1" style="border-bottom: 1px dashed #000080;padding-left: 0;margin-left: 50px;cursor: pointer;">Would you like to engrave your ring? It's FREE!</label>
                                            <input type="text" class="w-add-engrave" name="engrave[<?php echo $product['cart_id']; ?>]" value="<?=$product['engrave']?>" <?if(empty($product['engrave'])):?> style="display:none" <?endif?> />
                                        <?endif?>
                                    </div>
                                    <div class="number-block">
                                        <?if($product['category_id'] != 94 AND $product['category_id'] != 68 AND $product['category_id'] != ''):?>
                                            <div class="quantity">Quantity</div>
                                            <div class="box-number-switch">
                                                <a href="#" class="arrow-btn-number arrow-t" data-action="plus"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
                                                <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" class="quantity-input" >
                                                <a href="#" class="arrow-btn-number arrow-b" data-action="minus"><i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                            </div>
                                        <?endif?>
                                        <div class="price"><?=$product['total']?></div>
                                    </div>
                                </div>
                            <?endif?>

                        <?endforeach?>

                    </form>

                </div>
                <!--*<div class="cart-header">MATCHING ITEMS</div>*-->
                <!--*<div class="matching-cart">*-->
                    <!--*<div class="row">*-->
                        <!--*<div class="col-md-4 col-sm-6 col-xs-12 clearfix">*-->
                            <!--*<div class="box-img">*-->
                                <!--*<img src="/catalog/view/theme/canary/img/img264.png" alt="img">*-->
                            <!--*</div>*-->
                            <!--*<div class="text-box">*-->
                                <!--*<div class="article">*-->
                                    <!--*<a href="#">14k Yellow Gold Round Halo Diamond Engagement Ring</a>*-->
                                <!--*</div>*-->
                                <!--*<div class="price">$1,595.00</div>*-->
                                <!--*<a href="#" class="btn w-btn-orange btn-lg" role="button"><div class="add-tocart-ico"></div>Add this</a>*-->
                            <!--*</div>*-->
                        <!--*</div>*-->
                        <!--*<div class="col-md-4 col-sm-6 col-xs-12 clearfix">*-->
                            <!--*<div class="box-img">*-->
                                <!--*<img src="/catalog/view/theme/canary/img/img265.png" alt="img">*-->
                            <!--*</div>*-->
                            <!--*<div class="text-box">*-->
                                <!--*<div class="article">*-->
                                    <!--*<a href="#">14k Yellow Gold Round Halo Diamond Engagement Ring</a>*-->
                                <!--*</div>*-->
                                <!--*<div class="price">$790.00</div>*-->
                                <!--*<a href="#" class="btn w-btn-orange btn-lg" role="button"><div class="add-tocart-ico"></div>Add this</a>*-->
                            <!--*</div>*-->
                        <!--*</div>*-->
                        <!--*<div class="col-md-4 col-sm-6 col-xs-12 clearfix">*-->
                            <!--*<div class="box-img">*-->
                                <!--*<img src="/catalog/view/theme/canary/img/img267.png" alt="img">*-->
                            <!--*</div>*-->
                            <!--*<div class="text-box">*-->
                                <!--*<div class="article">*-->
                                    <!--*<a href="#">14k Yellow Gold Round Halo Diamond Engagement Ring</a>*-->
                                <!--*</div>*-->
                                <!--*<div class="price">$2,795.00</div>*-->
                                <!--*<a href="#" class="btn w-btn-orange btn-lg" role="button"><div class="add-tocart-ico"></div>Add this</a>*-->
                            <!--*</div>*-->
                        <!--*</div>*-->
                    <!--*</div>*-->
                <!--*</div>*-->
                <div class="total-cart-pay clearfix">

                    <?php if ($coupon):?>

                        <?=$coupon?>
                    <?endif?>

                    <div class="all-numbers">
                        <table>


                            <?foreach ($totals as $row):?>
                                <?if ($row['title'] == 'Total'):?>
                                    <tr>
                                        <td>Fedex Shipping:</td>
                                        <td>
                                            <?if ($row['value'] > 500):?>
                                            FedEx Priority Overnight &reg;: Free
                                            <?else:?>
                                            FedEx Ground &reg;: Free
                                            <?endif?>
                                        </td>
                                    </tr>
                                <?endif?>
                                <tr>
                                    <td><?=$row['title']?>:</td>
                                    <td><?=$row['text']?></td>
                                </tr>

                            <?endforeach?>


                        </table>
                    </div>
                </div>
                <!--*<div class="cart-header">LIMITED TIME OFFER JUST YOU</div>*-->
                <!--*<div class="wrapper-cart-box">*-->
                    <!--*<div class="one-line one-line2">*-->
                        <!--*<div class="box-img">*-->
                            <!--*<img src="/catalog/view/theme/canary/img/img271.png" alt="img">*-->
                        <!--*</div>*-->
                        <!--*<div class="text-box">*-->
                            <!--*<div class="type">Diamond</div>*-->
                            <!--*<div class="name"><span>14K WHITE PETITE DIAMOND STAR EARRINGS</span></div>*-->
                        <!--*</div>*-->
                        <!--*<div class="number-block">*-->
                            <!--*<div class="quantity">Quantity</div>*-->
                            <!--*<div class="box-number-switch">*-->
                                <!--*<a href="#" class="arrow-btn-number arrow-t" data-action="plus"><i class="fa fa-angle-up" aria-hidden="true"></i></a>*-->
                                <!--*<input type="text" value="1">*-->
                            <!--*</div>*-->
                            <!--*<div class="price">*-->
                                <!--*<span>$ 775</span>*-->
                                <!--*$ 690*-->
                            <!--*</div>*-->
                        <!--*</div>*-->
                    <!--*</div>*-->
                <!--*</div>*-->
                <div class="cards-box clearfix">
                    <div class="text">
                        <div class="title">Shipping Information</div>
                        Receive by: <?=$dey_ned?>, <?=$mont_dey?><br/>
                        <?foreach ($totals as $row):?>
                        <?if ($row['title'] == 'Total'):?>
                        <?if ($row['value'] > 500):?>
                        FedEx Priority Overnight &reg;: Free
                        <?else:?>
                        FedEx Ground &reg;: Free
                        <?endif?>
                        <?endif?>
                        <?endforeach?>
                    </div>
                    <div class="all-cards clearfix">
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card1.png" alt="card"></a>
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card2.png" alt="card"></a>
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card3.png" alt="card"></a>
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card4.png" alt="card"></a>
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card5.png" alt="card"></a>
                        <a href="#" class="one-card"><img src="/catalog/view/theme/canary/img/card6.png" alt="card"></a>
                    </div>
                    <a href="<?php echo $checkout; ?>" class="btn w-btn-orange btn-lg w-general-category" onmouseup="ga('send', 'event', 'button, 'click', 'Checkout');" role="button"><div class="icons-checkout"></div>CHECKOUT</a>
                    <a href="<?=$continue_shoping?>" class="btn w-btn-white btn-lg" role="button"><i class="fa fa-chevron-right" aria-hidden="true"></i>Continue shopping</a>
                </div>
                <div class="cart-page-info">
                    For Saturday delivery, contact customer service at <b>800-214-6550  |  24/7</b><br/>
                    View our shipping policy
                </div>
















                <?//dd($products)?>


            </div>
        </div>
    </section>
</main>

<script>
    $(document).ready(function () {
       $(document).on('change', '.quantity-input', function () {
            $('.w-form-cart-sub').submit();
       });

        $(document).on('click', '.catCheck1', function () {
            $(this).parent().find('.w-add-engrave').toggle('slow');
        });

//        $(document).on('click', '.remove-ico', function () {
//            $(this).closest('.one-line').detach();
//            return false;
//
//       });

        $(document).on('change', '.w-add-engrave', function () {
            $.ajax({
                url: '/index.php?route=checkout/cart/edit',
                type: 'post',
                dataType: 'json',
                data: $(this),
                beforeSend: function () {

                },
                complete: function () {

                },
                success: function (json) {
                    console.log(json);
                }
            });
        });

    });
</script>




<?php echo isset($footer) ? $footer : ''; ?>
