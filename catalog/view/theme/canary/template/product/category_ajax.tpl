


<div class="filter-product-line">
    <input type="hidden" class="w-action_page" value="<?php echo $action_page?>">
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
            <button class="list-btn btn-view" data-toggle="tooltip" data-placement="top" title="list"><i class="fa fa-list"></i></button>
            <button class="th-btn btn-view active" data-toggle="tooltip" data-placement="top" title="block"><i class="fa fa-th"></i></button>
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
<div class="wrapper-product-table th-view">
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
                    <?php if ($product['rating']):?>

                    <div class="rating">
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($product['rating'] < $i):?>
                        <i class="star"></i>
                        <?else:?>
                        <i class="star active"></i>
                        <?endif?>
                        <?}?>

                    </div>
                    <?endif?>
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
            <td data-th="Stock Number">Oval</td>
            <td data-th="Price"><div class="price"><?php echo $product['price']; ?></div></td>
            <td><a href="#" onclick="compare.add('<?php echo $product['product_id']; ?>'); return false;"><i class="fa fa-exchange"></i></a></td>
            <td><a href="#" onclick="wishlist.add('<?php echo $product['product_id']; ?>'); return false;"><i class="fa fa-heart"></i></a></td>
        </tr>
        <?endforeach?>



        </tbody>
    </table>

</div>

<div class="center-bl clearfix">
    <div class="text-center w-pagination-product"><?=isset($pagination)? $pagination : ''?></div>
</div>