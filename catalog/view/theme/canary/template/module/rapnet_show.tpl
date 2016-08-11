
<?if (!empty($data_error)):?>
    <hr>
    <p class="text-center"><b><?=$data_error?></b></p>
<?else:?>
<?//dd($sortby)?>
    <div class="filter-product-line">
        <div class="center-bl clearfix">
            <div class="pull-left left-drop-f">
                <span>Sort By:</span>
                <div class="dropdown">
                    <select name="sortby" class="form-control" id="w-product-sortby">
                        <option value="size_Asc" <?if ($sortby == 'size_Asc' and !empty($sortby)):?> selected <?endif?>>Carat: low to high</option>
                        <option value="size_Desc" <?if ($sortby == 'size_Desc' and !empty($sortby)):?> selected <?endif?>>Carat: high to low</option>
                        <option value="Color_Asc" <?if ($sortby == 'Color_Asc' and !empty($sortby)):?> selected <?endif?>>Color: high to low</option>
                        <option value="Color_Desc" <?if ($sortby == 'Color_Desc' and !empty($sortby)):?> selected <?endif?>>Color: low to high</option>
                        <option value="Clarity_Asc" <?if ($sortby == 'Clarity_Asc' and !empty($sortby)):?> selected <?endif?>>Clarity: high to low</option>
                        <option value="Clarity_Desc" <?if ($sortby == 'Clarity_Desc' and !empty($sortby)):?> selected <?endif?>>Clarity: low to high</option>
                        <option value="Cut_Asc" <?if ($sortby == 'Cut_Asc' and !empty($sortby)):?> selected <?endif?>>Cut: low to high</option>
                        <option value="Cut_Desc" <?if ($sortby == 'Cut_Desc' and !empty($sortby)):?> selected <?endif?>>Cut: high to low</option>
                        <option value="Price_Asc" <?if ($sortby == 'Price_Asc' and !empty($sortby)):?> selected <?endif?>>Price: low to high</option>
                        <option value="Price_Desc" <?if ($sortby == 'Price_Desc' and !empty($sortby)):?> selected <?endif?>>Price: high to low</option>
                    </select>
                </div>

            </div>

            <div class="view-product">
                <button class="list-btn btn-view" data-toggle="tooltip" data-placement="top" title="list"><i class="fa fa-list"></i></button>
                <button class="th-btn btn-view active" data-toggle="tooltip" data-placement="top" title="block"><i class="fa fa-th"></i></button>
            </div>
            <div class="show-b">
                <span>Show:</span>

                <div class="dropdown">
                    <select name="show" class="form-control" id="w-product-show">
                        <option value="15">15</option>
                        <option value="25">25</option>
                        <option value="50">50</option>
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
                <th>Shape</th>
                <th>Carat</th>
                <th>Color</th>
                <th>Clarity</th>
                <th>Cut</th>
                <th>Depth</th>
                <th>Table</th>
                <th>Lab</th>
                <th>Price</th>
                <th>Compare</th>
                <th>Wishlist</th>
            </tr>
            </thead>
            <tbody>

                <?php foreach ($data as $row):?>

                    <tr>
                        <td>
                            <div class="product-item">
                                <input type="hidden" class="w-diamond-id-category" value="<?=$row->diamond_id?>">
                                <div class="box-img">
                                    <a href="/diamond_page?diamond_id=<?=$row->diamond_id?>" data-id="<?=$row->diamond_id?>" class="w-product-diamonts"><img src="<?=imageDiamont($row->shape)?>" alt="img"></a>
                                </div>
                                <!--*<div class="rating">*-->
                                    <!--*<i class="star active"></i>*-->
                                    <!--*<i class="star active"></i>*-->
                                    <!--*<i class="star active"></i>*-->
                                    <!--*<i class="star active"></i>*-->
                                    <!--*<i class="star"></i>*-->
                                <!--*</div>*-->
                                <div class="btn-box">
                                    <a href="#" class="cart-btn-item w-diamont-button-cart-category" data-toggle="tooltip" data-placement="top" title="<?php echo $button_cart; ?>"></a>
                                    <a href="#" class="compare-btn-item" data-toggle="tooltip" data-placement="top" title="<?php echo $button_compare; ?>"></a>
                                    <a href="/diamond_page?diamond_id=<?=$row->diamond_id?>" data-id="<?=$row->diamond_id?>" class="search-btn-item w-product-diamonts" data-toggle="tooltip" data-placement="top" title="Views"></a>
                                    <a href="#" class="wishlist-btn-item" data-toggle="tooltip" data-placement="top" title="<?php echo $button_wishlist; ?>"></a>
                                </div>
                                <div class="box-tovar-th">
                                    <div class="name"><?=$row->shape?> <?=$row->size?> CARAT <?=$row->color?> <?=$row->clarity?></div>
                                    <span class="price">$<?=$row->total_sales_price?>.00</span>
                                    <!--*<span class="discount"><?=$row->total_sales_price?>.00$</span>*-->
                                </div>
                            </div>
                        </td>
                        <td data-th="Shape"><?=$row->shape?></td>
                        <td data-th="Carat"><?=$row->size?></td>
                        <td data-th="Carat"><?=$row->color?></td>
                        <td data-th="Clatity"><?=$row->clarity?></td>
                        <td data-th="Cut"><?=$row->cut?></td>
                        <td data-th="Depth"><?=$row->depth_percent?></td>
                        <td data-th="Table"><?=$row->table_percent?></td>
                        <td data-th="Lab"><?=$row->lab?></td>
                        <td data-th="Price"><div class="price"><?=$row->total_sales_price?>.00$</div></td>
                        <td><i class="fa fa-exchange"></i></td>
                        <td><i class="fa fa-heart"></i></td>
                    </tr>

                <?endforeach?>

            </tbody>
        </table>
    </div>
    <div class="center-bl clearfix">

        <div class="w-pagination-diamonts text-center"><?=isset($pagination)? $pagination : ''?></div>

    </div>
<?endif?>

<script>

    //add complect diamond
    $(document).on('click', '.w-diamont-button-cart-category', function(){


        $.ajax({
            url: 'index.php?route=checkout/cart/add_diamond',
            type: 'POST',
            data: 'diamond_id='+$(this).parents('.product-item').find('.w-diamond-id-category').val(),
            dataType: 'json',
            beforeSend: function() {
                $('#w-diamont-button-cart').button('loading');
            },
            complete: function() {
                $('#w-diamont-button-cart').button('reset');
            },
            success: function(json) {
                $('#w-but-cart').html('<span>cart ('+json['count']+')</span>');
                $('html, body').animate({ scrollTop: 0 }, 'slow');
                $('.cart-basket').load('index.php?route=common/cart/info .w-cart-basket');
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert('ошибочка вышла');
            }
        });

        return false;
    });

</script>
