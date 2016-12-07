<div class="list-product w-category-ajax">
    <div class="filter-product-line">
        <div class="center-bl clearfix" style="max-width: 1247px;">
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
                            <a href="<?php echo $product['href']; ?>" ><img src="<?php echo $product['thumb']; ?>"  alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"></a>
                        </div>
                        <div class="box-tovar-th">
                            <div class="name"><?php echo $product['name']; ?></div>

                            <?php if (!$product['special']):?>
                                <span class="price"><?php echo $product['price']; ?></span>
                            <?else:?>
                                <span class="price" style="color: #2b2a29; font-size: 18px!important; font-weight: bold;"><?php echo $product['special']; ?></span>
                                <b class="w-special-price"> <?php echo $product['price']; ?></b>
                            <?endif?>
                        </div>
                    </div>
                </td>
                <td data-th="Name"><?php echo $product['name']; ?></td>
                <td data-th="Stock Number" class="stnumber-td"><?=$product['sku']?></td>
                <td data-th="Price">
                    <?php if (!$product['special']):?>
                        <span class="price"><?php echo $product['price']; ?></span>
                    <?else:?>
                        <b class="w-special-price"> <?php echo $product['price']; ?></b>
                        <span class="price" style="color: #2b2a29; font-size: 18px!important; font-weight: bold;"><?php echo $product['special']; ?></span>
                    <?endif?>
                </td>
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
<script>
    $(function () {
        if ($.cookie('TableGrid')) {
            $('.list-product .wrapper-product-table').addClass($.cookie('TableGrid'));
        } else {
            $('.list-product .wrapper-product-table').addClass("th-view");
        }
    });
</script>