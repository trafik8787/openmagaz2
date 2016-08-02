
<?if (!empty($data_error)):?>
    <?=$data_error?>
<?else:?>
<?//dd($data)?>
    <div class="filter-product-line">
        <div class="center-bl clearfix">
            <div class="pull-left left-drop-f">
                <span>Sort By:</span>
                <div class="dropdown">
                    <select name="sortby" class="form-control" id="w-product-sortby">
                        <option value="size_Asc">Carat: low to high</option>
                        <option value="size_Desc">Carat: high to low</option>
                        <option value="Color_Asc">Color: low to high</option>
                        <option value="Color_Desc">Color: high to low</option>
                        <option value="Clarity_Asc">Clarity: low to high</option>
                        <option value="Clarity_Desc">Clarity: high to low</option>
                        <option value="Cut_Asc">Cut: low to high</option>
                        <option value="Cut_Desc">Cut: high to low</option>
                        <option selected value="Price_Asc">Price: low to high</option>
                        <option value="Price_Desc">Price: high to low</option>
                    </select>
                </div>
                <!--<span>Product compare (0)</span>-->
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
                <th>Share</th>
                <th>Carat</th>
                <th>Clatity</th>
                <th>Cut</th>
                <th>Depth</th>
                <th>Table</th>
                <th>Lab</th>
                <th>Origin</th>
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
                                    <span class="price"><?=$row->total_sales_price?>.00$</span>
                                    <!--<span class="discount"><?=$row->total_sales_price?>.00$</span>-->
                                </div>
                            </div>
                        </td>
                        <td data-th="Share"><?=$row->shape?></td>
                        <td data-th="Carat"><?=$row->size?></td>
                        <td data-th="Clatity"><?=$row->clarity?></td>
                        <td data-th="Cut"><?=$row->cut?></td>
                        <td data-th="Depth"><?=$row->depth_percent?></td>
                        <td data-th="Table"><?=$row->table_percent?></td>
                        <td data-th="Lab"><?=$row->lab?></td>
                        <td data-th="Origin">-</td>
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
