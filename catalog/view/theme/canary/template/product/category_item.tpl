<?php foreach ($products as $product):?>
    <tr <?if(isset($ajax)):?>style="display: none;"<?endif?>>
        <td>
            <div class="product-item">
                <span class="w-item-glyphicon-bloc">
                    <i class="glyphicon glyphicon-heart w-glyphicon-heart <?if ($product['wishlist']):?> active <?endif?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>'); return false;" style="display: none"></i>
                    <i class="fa fa-exchange w-glyphicon-sort <?if ($product['compare']):?> active <?endif?>" aria-hidden="true" onclick="compare.add('<?php echo $product['product_id']; ?>'); return false;" style="display: none"></i>
                </span>
                <div class="box-img">
                    <a href="<?php echo $product['href']; ?>" ><img src="<?php echo $product['thumb']; ?>"  alt="<?php echo $product['name']; ?>"
                                                                    title="<?php echo $product['name']; ?>"></a>
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