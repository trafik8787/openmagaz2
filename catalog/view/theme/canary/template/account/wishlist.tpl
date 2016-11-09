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
                    <a href="<?=get_baners_top_random()[1]?>"><img src="<?=get_baners_top_random()[0]?>" class="bread-baner" ></a>
                </div>
            </div>
        </div>
    </div>
    <section class="static-page">

        <div class="wish-list-page">
            <div class="center-bl">
                <div class="clearfix">
                    <div class="wish-list-title">My wish list</div>
                    <div class="wish-login-text">To save your wish list, create an account or log in</div>
                    <?php if ($logged == null):?>
                        <div class="wish-login-block">
                            <a href="/login" class="btn w-btn-orange btn-lg">Login in</a>
                        </div>
                    <?endif?>
                </div>
                <?php if ($products):?>
                    <?php foreach ($products as $product) :?>
                        <div class="wrapper-cart-box">
                            <div class="one-line">
                                <div class="box-img">
                                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="47" title="<?php echo $product['name']; ?>"></a>
                                </div>
                                <div class="text-box">
                                    <!--*<div class="type">Diamond</div>*-->
                                    <div class="name"><a href="<?php echo $product['href']; ?>"><span><?php echo $product['name']; ?></span></a> <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>"  class="wishlist-action remove-ico"></a></div>
                                    SKU: <?php echo $product['sku']; ?>
                                </div>
                                <div class="number-block">
                                    <div class="price"><?php echo $product['price']; ?></div>
                                </div>
                            </div>
                        </div>
                    <?endforeach?>
                <?else:?>
                    <p><?php echo $text_empty; ?></p>
                <?endif?>

            </div>
        </div>
    </section>
</main>








<?php echo isset($footer) ? $footer : ''; ?>