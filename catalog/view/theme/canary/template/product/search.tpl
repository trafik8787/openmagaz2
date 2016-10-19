<?php echo isset($header) ? $header : ''; ?>



<main class="w-general-container">
    <hr class="fade-2">
    <input type="hidden" class="w-action_page" value="<?php echo $action_page?>">
    <section class="static-page">


        <div class="center-bl">

            <ul class="breadcrumbs">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <li>></li>
                <?php } ?>
            </ul>

            <?php echo $content_top; ?>
            <!--*<h2><?php echo $heading_title; ?></h2>*-->


        </div>

        <div class="list-product w-category-ajax">

            <?php if ($products) :?>
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
                            <th>Metal</th>
                            <th>Width</th>
                            <th>Prong Metal</th>
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
                                        <a href="#" class="compare-btn-item" data-toggle="tooltip" onclick="compare.add('<?php echo $product['product_id']; ?>');" data-placement="top" title="<?php echo $button_compare; ?>"></a>
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
                            <td data-th="Metal">0, 70</td>
                            <td data-th="Width">L5</td>
                            <td data-th="Prong Metal">VERY GOOD</td>
                            <td data-th="Price"><div class="price"><?php echo $product['price']; ?>$</div></td>
                            <td><i class="fa fa-exchange"></i></td>
                            <td><i class="fa fa-heart"></i></td>
                        </tr>
                        <?endforeach?>



                        </tbody>
                    </table>

                </div>


                <div class="center-bl clearfix">
                    <div class="text-center w-pagination-product"><?=isset($pagination)? $pagination : ''?></div>
                </div>
            <?else:?>
                <div class="center-bl clearfix">
                    <p><?php echo $text_empty; ?></p>
                </div>
            <?endif?>




        </div>

    </section>
</main>














<script type="text/javascript">
$('#button-search').on('click', function() {

	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
</script>
<?php echo isset($footer) ? $footer : ''; ?>