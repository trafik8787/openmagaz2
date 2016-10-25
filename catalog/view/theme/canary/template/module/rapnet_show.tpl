
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

    <div class="diamond-catalog">
        <div class="diamond-catalog-left">
            <table class="diamond-catalog-table">
                <thead>
                    <tr>
                        <td>Compare</td>
                        <td>Shape</td>
                        <td>Color</td>
                        <td>Clarity</td>
                        <td>Cut</td>
                        <td>Carat</td>
                        <td>Popularity</td>
                        <td>Price</td>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data as $row):?>

                    <tr>
                        <td>
                            <input id="diamond<?=$row->diamond_id?>" type="checkbox" class="diamond-compare-checkbox">
                            <label for="diamond<?=$row->diamond_id?>" class="diamond-catalog-label"></label>
                        </td>
                        <td>
                            <img src="/catalog/view/theme/canary/img/diamant-4.png" alt="" class="diamond-table-shapeimg">
                            <?=$row->shape?>
                        </td>
                        <td><?=$row->color?></td>
                        <td><?=$row->clarity?></td>
                        <td><?=$row->cut?></td>
                        <td><?=$row->size?> <i class="fa fa-exclamation-triangle"></i></td>
                        <td>
                            <div class="rating">
                                <i class="star active"></i>
                                <i class="star active"></i>
                                <i class="star active"></i>
                                <i class="star active"></i>
                                <i class="star"></i>
                            </div>
                        </td>
                        <td>$<?=$row->total_sales_price?>.00</td>
                    </tr>

                    <?endforeach?>

                    <tr class="pagination-tr">
                        <td colspan="8">
                            <div class="w-pagination-diamonts text-center"><?=isset($pagination)? $pagination : ''?></div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="diamond-catalog-right">

        </div>
    </div>

    <div class="alert alert-warning product-need-help diamonds-catalog-help">
        <span class="h4">Need Help?</span>
        <ul class="list-inline w-help-ned">
            <li><a href="#"><span class="help-ico help-ico-chat"></span> <span class="help-text">Online Chat now</span></a></li>
            <li><a href="#"><span class="help-ico help-ico-mail"></span> <span class="help-text">Email</span></a></li>
            <!-- todo phone-->
            <li><a href="#"><span class="help-ico help-ico-phone"></span> <span class="help-text">800-214-6550 | 24/7</span></a></li>
        </ul>
    </div>
    <p class="diamonds-catalog-star-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, repellendus.</p>

    <div class="box-stat-text center-bl">
        <div class="h2">
            TEXT ABOUT DIAMONDS
        </div>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor ea eos illo in praesentium rerum tempore voluptatum. Culpa dolorem error inventore nobis repudiandae. Ad amet animi asperiores assumenda autem beatae, dolorem dolorum eos eum expedita, facilis ipsa ipsum iste laudantium minus nihil porro quae quia quidem quis recusandae, rem suscipit tempora voluptatem voluptatibus! Aliquam blanditiis consequatur deleniti doloribus ducimus, ea enim esse est harum incidunt, laborum magni nesciunt, nobis recusandae rerum veniam voluptas? At atque eos esse eum harum molestias necessitatibus nemo provident quaerat quas sed, soluta vel voluptas. Cumque earum eum exercitationem! Ab culpa enim fuga laborum natus optio possimus sapiente, velit vero. A alias assumenda consequatur culpa dignissimos harum hic laudantium qui. Consectetur consequatur eaque enim itaque minus nesciunt officia porro, quas saepe sunt unde vero voluptate! Ad adipisci, corporis cupiditate ducimus earum eligendi facilis ipsam itaque nam placeat, porro quasi, quo quos saepe suscipit unde veniam voluptatum!</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab accusantium culpa cumque delectus deleniti doloribus, earum error eveniet fuga, harum in incidunt ipsa mollitia nam natus nemo, officiis optio perferendis porro quaerat quas quisquam quod quos rerum saepe tempora velit voluptatum! Doloribus exercitationem facilis molestiae nam, nesciunt officia reiciendis sit sunt suscipit. Aliquam animi aspernatur consectetur deleniti dignissimos, distinctio expedita facilis fuga nulla, pariatur quae quis tempore veritatis vero voluptate. Dolores earum et fuga quas recusandae tempora vel? Asperiores autem corporis eligendi, et exercitationem illo illum iusto maiores molestias necessitatibus optio pariatur praesentium provident, quas recusandae sint tempora ullam vel.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor ea eos illo in praesentium rerum tempore voluptatum. Culpa dolorem error inventore nobis repudiandae. Ad amet animi asperiores assumenda autem beatae, dolorem dolorum eos eum expedita, facilis ipsa ipsum iste laudantium minus nihil porro quae quia quidem quis recusandae, rem suscipit tempora voluptatem voluptatibus! Aliquam blanditiis consequatur deleniti doloribus ducimus, ea enim esse est harum incidunt, laborum magni nesciunt, nobis recusandae rerum veniam voluptas? At atque eos esse eum harum molestias necessitatibus nemo provident quaerat quas sed, soluta vel voluptas. Cumque earum eum exercitationem! Ab culpa enim fuga laborum natus optio possimus sapiente, velit vero. A alias assumenda consequatur culpa dignissimos harum hic laudantium qui. Consectetur consequatur eaque enim itaque minus nesciunt officia porro, quas saepe sunt unde vero voluptate! Ad adipisci, corporis cupiditate ducimus earum eligendi facilis ipsam itaque nam placeat, porro quasi, quo quos saepe suscipit unde veniam voluptatum!</p>
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
