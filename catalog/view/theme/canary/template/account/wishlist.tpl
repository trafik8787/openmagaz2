<?php echo isset($header) ? $header : ''; ?>




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

        <div class="wish-list-page">
            <div class="center-bl">
                <div class="clearfix">
                    <div class="wish-list-title">My wish list</div>
                    <div class="wish-login-text">To save your wish list, create an account or log in</div>
                    <?php if ($logged == null):?>
                        <div class="wish-login-block">
                            <a href="/index.php?route=account/login" class="btn w-btn-orange btn-lg">Login in</a>
                            <a href="/index.php?route=account/login" class="btn w-btn-orange btn-lg">Sign up</a>
                        </div>
                    <?endif?>
                </div>

                <div class="wrapper-cart-box">
                    <div class="one-line">
                        <div class="box-img">
                            <img src="/catalog/view/theme/canary/img/img-268.png" alt="img">
                        </div>
                        <div class="text-box">
                            <div class="type">Diamond</div>
                            <div class="name"><span>14k White Gold Classic Six Prong Solitaire</span> <a href="#" class="remove-ico"></a></div>
                            8140309L-W14
                        </div>
                        <div class="number-block">
                            <div class="price">$ 1,995</div>
                        </div>
                    </div>
                </div>

                <?php if ($products):?>

                    <table class="wishlist-table">
                        <thead>
                        <tr>
                            <td>Image</td>
                            <td>Product Name</td>
                            <td>Model</td>
                            <td>Unit price</td>
                            <td>Action</td>
                        </tr>
                        </thead>
                        <tbody>

                            <?php foreach ($products as $product) :?>

                                <tr>
                                    <td data-th="Image">
                                        <div class="wishlist-image">
                                            <?php if ($product['thumb']): ?>
                                                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="47" title="<?php echo $product['name']; ?>"></a>
                                            <?endif?>
                                        </div>
                                    </td>
                                    <td data-th="Product Name">
                                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                    </td>
                                    <td data-th="Model">
                                        <?php echo $product['model']; ?>
                                    </td>

                                    <td data-th="Unit price">
                                        <span class="wishlist-table-price">

                                            <?php if ($product['price']) { ?>
                                            <div class="price">
                                                <?php if (!$product['special']) { ?>
                                                <?php echo $product['price']; ?>
                                                <?php } else { ?>
                                                <b><?php echo $product['special']; ?></b> <s><?php echo $product['price']; ?></s>
                                                <?php } ?>
                                            </div>
                                            <?php } ?>

                                        </span>
                                    </td>
                                    <td data-th="Action">
                                        <!--*<a href="#" onclick="cart.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="wishlist-action wa-cart"></a>*-->
                                        <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>"  class="wishlist-action wa-delete"></a>
                                    </td>
                                </tr>

                            <?endforeach?>


                        </tbody>

                    </table>

                <?else:?>

                    <p><?php echo $text_empty; ?></p>

                <?endif?>
            </div>
        </div>
    </section>
</main>








<?php echo isset($footer) ? $footer : ''; ?>