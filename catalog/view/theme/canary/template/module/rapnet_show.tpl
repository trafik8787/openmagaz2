
<?if (!empty($data_error)):?>
    <hr>
    <p class="text-center"><b><?=$data_error?></b></p>
<?else:?>
<?//dd($sortby)?>

    <div class="center-bl">
        <div class="diamond-catalog-top clearfix">
            <div class="left">
                <div class="total-items">Total <?=$total_diamonds?> items</div>
                <div class="diamond-catalog-tocompare"><a href="#">Product compare (0)</a></div>
            </div>
            <div class="center">
                <div class="diamond-catalog-top-pages">
                    <a href="#" class="diamond-catalog-top-pages-link arrow-btn-number prev" data-action="minus"> </a>
                    <span>Page</span>
                    <input type="text" class="form-control" value="1">
                    <span>of 3</span>
                    <a href="#" class="diamond-catalog-top-pages-link arrow-btn-number next" data-action="plus"> </a>
                </div>
            </div>
            <div class="right">
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
                        <td><span>Compare</span></td>
                        <td><span>Shape</span></td>
                        <td><span>Color</span></td>
                        <td><span>Clarity</span></td>
                        <td><span>Cut</span></td>
                        <td><span>Carat</span></td>
                        <!-- sort-col-up -->
                        <!--*<td class="sort-col sort-col-down"><span>Popularity</span></td>*-->
                        <td><span>Price</span></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($data as $row):?>
                    <?//dd($row)?>
                    <tr class="diamond-tr" data-diamond-id="<?=$row->diamond_id?>">
                        <td>
                            <input id="diamond<?=$row->diamond_id?>" type="checkbox" class="diamond-compare-checkbox">
                            <label for="diamond<?=$row->diamond_id?>" class="diamond-catalog-label"></label>
                        </td>
                        <td>
                            <span class="diamond-table-shapeimg">
                                <img src="<?=imageDiamontIcon($row->shape)?>" alt="">
                            </span>
                            <span class="hide-shapename"><?=$row->shape?></span>
                        </td>
                        <td><?=$row->color?></td>
                        <td><?=$row->clarity?></td>
                        <td><?=$row->cut?></td>
                        <td><?=$row->size?>
                            <!--*<i class="fa fa-exclamation-triangle"></i>*-->
                        </td>
                        <!--*<td class="sort-col">*-->
                        <!--*<div class="rating">*-->
                        <!--*<i class="star active"></i>*-->
                        <!--*<i class="star active"></i>*-->
                        <!--*<i class="star active"></i>*-->
                        <!--*<i class="star active"></i>*-->
                        <!--*<i class="star"></i>*-->
                        <!--*</div>*-->
                        <!--*</td>*-->
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
        <!--*<p class="diamonds-catalog-star-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, repellendus.</p>*-->

        <!--*<div class="box-stat-text">*-->
            <!--*<div class="h2">*-->
                <!--*TEXT ABOUT DIAMONDS*-->
            <!--*</div>*-->
            <!--*<p></p>*-->
        <!--*</div>*-->
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

    $('.diamond-tr').on('click', function(event) {

        var self = $(this),
            diamondId = $(this).attr('data-diamond-id'), // <-- diamond id
            catalogClass = $('.diamond-catalog');

       // console.log(diamondId);

        $.ajax({
            url: 'index.php?route=module/rapnet/getproductListAjax',
            type: 'POST',
            data: 'diamond_id='+diamondId,
            dataType: 'HTML',
            beforeSend: function() {
                //$('#w-diamont-button-cart').button('loading');
            },
            complete: function() {
                //$('#w-diamont-button-cart').button('reset');
            },
            success: function(json) {
                $('.diamond-catalog-right').html(json);

            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert('ошибочка вышла');
            }
        });


        if (!$(event.target).is('.diamond-compare-checkbox') && !$(event.target).is('.diamond-catalog-label')) {
            if (self.hasClass('active')) {
                catalogClass.removeClass('show-detail');
                self.removeClass('active');
            } else {
                catalogClass.addClass('show-detail');
                $('.diamond-tr').removeClass('active');
                self.addClass('active');

                // ajax here

            }
        }


    });

    $(document).on('click', '.diamond-right-close', function(event) {
        event.preventDefault();
        $('.diamond-catalog').removeClass('show-detail');
        $('.diamond-tr').removeClass('active');
    });



</script>
