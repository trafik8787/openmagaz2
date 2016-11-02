<?php echo isset($header) ? $header : ''; ?>
<?//dd($products)?>

<main class="w-general-container">
    <!--*<hr class="fade-2">*-->
    <input type="hidden" class="w-action_page" value="<?php echo $action_page?>">
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

            <div class="row margin-buttom-20">
                <div class="col-md-12 col-sm-12 text-center">
                    <span class="h1"><?=$heading_title?></span>
                </div>
            </div>



            <?php echo $content_top; ?>
            <!--*<h2><?php echo $heading_title; ?></h2>*-->


        </div>

            <div class="list-product w-category-ajax">


                <div class="filter-product-line">
                    <div class="center-bl clearfix">
                        <div class="pull-left left-drop-f">
                            <span>Sort By:</span>
                            <div class="dropdown">
                                <select id="input-sort" class="form-control" onchange="input_sort(this.value);">
                                    <?php foreach ($sorts as $sorts) { ?>
                                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                    <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                    <?php } ?>
                                    <?php } ?>
                                </select>
                            </div>
                            <span>Product compare (0)</span>
                        </div>

                        <div class="view-product">
                            <button class="list-btn btn-view" data-toggle="tooltip" data-placement="top" title="list"><i class="list-ico"></i></button>
                            <button class="th-btn btn-view active" data-toggle="tooltip" data-placement="top" title="block"><i class="block-ico"></i></button>
                        </div>
                        <div class="show-b">
                            <span>Show:</span>
                            <div class="dropdown">
                                <select id="input-limit" class="form-control" onchange="input_sort(this.value);">
                                    <?php foreach ($limits as $limits) { ?>
                                    <?php if ($limits['value'] == $limit) { ?>
                                    <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                                    <?php } ?>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="wrapper-product-table main-catalog-container">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Actual photo</th>
                            <th>Stock Number</th>
                            <th>Price</th>
                            <th>Compare</th>
                            <th>Wishlist</th>
                        </tr>
                        </thead>
                        <tbody>



                            <?php foreach ($products as $product):?>
                                <tr>
                                    <td>
                                        <div class="product-item">
                                            <div class="box-img">
                                                <a href="<?php echo $product['href']; ?>" class="w-product-ajax"><img src="<?php echo $product['thumb']; ?>"  alt="<?php echo $product['name']; ?>"
                                                                 title="<?php echo $product['name']; ?>"></a>
                                            </div>
                                            <!--*<?php if ($product['rating']):?>*-->

                                                <!--*<div class="rating">*-->
                                                    <!--*<?php for ($i = 1; $i <= 5; $i++) { ?>*-->
                                                        <!--*<?php if ($product['rating'] < $i):?>*-->
                                                            <!--*<i class="star"></i>*-->
                                                        <!--*<?else:?>*-->
                                                            <!--*<i class="star active"></i>*-->
                                                        <!--*<?endif?>*-->
                                                    <!--*<?}?>*-->

                                                <!--*</div>*-->
                                            <!--*<?endif?>*-->
                                            <div class="btn-box">
                                                <a href="#" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>'); return false;" class="cart-btn-item" data-toggle="tooltip" data-placement="top" title="<?php echo $button_cart; ?>"></a>
                                                <a href="#" class="compare-btn-item" data-toggle="tooltip" onclick="compare.add('<?php echo $product['product_id']; ?>'); return false;" data-placement="top" title="<?php echo $button_compare; ?>"></a>
                                                <a href="<?php echo $product['href']; ?>" class="search-btn-item w-product-ajax" data-toggle="tooltip" data-placement="top" title="Views"></a>
                                                <a href="#" class="wishlist-btn-item" data-toggle="tooltip" onclick="wishlist.add('<?php echo $product['product_id']; ?>'); return false;" data-placement="top" title="<?php echo $button_wishlist; ?>"></a>
                                            </div>
                                            <div class="box-tovar-th">
                                                <div class="name"><?php echo $product['name']; ?></div>

                                                <?php if (!$product['special']):?>
                                                    <span class="price"><?php echo $product['price']; ?></span>
                                                <?else:?>
                                                    <span class="price"><?php echo $product['special']; ?></span>
                                                    <span class="discount"> <?php echo $product['price']; ?></span>
                                                <?endif?>


                                            </div>
                                        </div>
                                    </td>
                                    <td data-th="Name"><?php echo $product['name']; ?></td>
                                    <td data-th="Stock Number" class="stnumber-td"><?=$product['sku']?></td>
                                    <td data-th="Price"><div class="price"><?php echo $product['price']; ?></div></td>
                                    <td></td>
                                    <td>
                                        <a href="#" onclick="compare.add('<?php echo $product['product_id']; ?>'); return false;"><i class="fa fa-exchange"></i></a>
                                        <a href="#" onclick="wishlist.add('<?php echo $product['product_id']; ?>'); return false;"><i class="fa fa-heart"></i></a>
                                    </td>
                                </tr>
                            <?endforeach?>



                        </tbody>
                    </table>

                </div>
                <div class="center-bl clearfix">
                    <div class="text-center w-pagination-product"><?=isset($pagination)? $pagination : ''?></div>
                </div>
                <?if (!empty(strip_tags($description))):?>

                    <div class="box-stat-text center-bl">
                        <div class="h2">
                            TEXT ABOUT <?=$heading_title?>
                        </div>
                        <?php echo $description; ?>
                    </div>
                <?endif?>

            </div>

    </section>
</main>

<?php echo isset($footer) ? $footer : ''; ?>
