
<?if (!empty($data_error)):?>
    <hr>
    <p class="text-center"><b><?=$data_error?></b></p>
<?else:?>
<?//dd($sortby)?>

    <div class="diamond-catalog-top clearfix">
            <div class="left">
                <div class="total-items">Total 999 items</div>
                <div class="diamond-catalog-tocompare"><a href="#">Product compare (0)</a></div>
            </div>
            <div class="center">
                <div class="diamond-catalog-top-pages">
                    <a href="#" class="diamond-catalog-top-pages-link prev"></a>
                    <span>Page</span>
                    <input type="text" class="form-control" value="1">
                    <span>of 3</span>
                    <a href="#" class="diamond-catalog-top-pages-link next"></a>
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
                        <td class="sort-col sort-col-down"><span>Popularity</span></td>
                        <td><span>Price</span></td>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data as $row):?>

                    <tr class="diamond-tr" data-diamond-id="<?=$row->diamond_id?>">
                        <td>
                            <input id="diamond<?=$row->diamond_id?>" type="checkbox" class="diamond-compare-checkbox">
                            <label for="diamond<?=$row->diamond_id?>" class="diamond-catalog-label"></label>
                        </td>
                        <td>
                            <img src="/catalog/view/theme/canary/img/diamant-4.png" alt="" class="diamond-table-shapeimg">
                            <span class="hide-shapename"><?=$row->shape?></span>
                        </td>
                        <td><?=$row->color?></td>
                        <td><?=$row->clarity?></td>
                        <td><?=$row->cut?></td>
                        <td><?=$row->size?> <i class="fa fa-exclamation-triangle"></i></td>
                        <td class="sort-col">
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
            <div class="diamond-catalog-right-inner">

                <div class="diamond-right-controls clearfix">
                    <a href="#" class="diamond-right-btn diamond-right-close"> <i class="fa fa-angle-left"></i> Close Details</a>
                    <a href="/diamond_page?diamond_id=71995555" class="diamond-right-btn diamond-right-detail">More Details <i class="fa fa-angle-right"></i></a>
                </div>
                <div class="diamond-catalog-right-container">
                    <div class="text-center">
                        <div class="rating">
                            <i class="star"></i>
                            <i class="star"></i>
                            <i class="star"></i>
                            <i class="star"></i>
                            <i class="star"></i>
                            <span><a href="" onclick="return false;">(0 customer ratings)</a></span>
                        </div>
                    </div>
                    <div class="diamond-catalog-right-img"><img src="/image/shapes/round.jpg" alt=""></div>
                    <div class="diamond-catalog-right-name">14k White Gold Twisted Band</div>
                    <div class="diamond-catalog-right-price">$220.00</div>
                    <div class="diamond-catalog-right-message">
                        <div><img src="/catalog/view/theme/canary/img/diamond-catalog-message.jpg" alt=""></div>
                        <p>Order loos diamond now for free
                            5 days delivery. Add to jewerly
                            for 2 weeks delivery
                        </p>

                    </div>
                    <div class="text-center">
                        <button type="button" data-toggle="modal" data-target="#w-modal-cart" class="btn w-btn-orange btn-lg"><i class="bold-angle-right"></i> Select This Diamond</button>
                    </div>
                    <div class="text-center">
                        <a href="#">View Certificate</a>
                    </div>
                    <div class="right-stone-details">
                        <p><strong>STONE DETAILS</strong></p>
                        <p>POLISH: good</p>
                        <p>SYMMETRY: good</p>
                        <p>FLUORESCENCE: None</p>
                        <p>L/W/D (MM) 4.32 *4.23 *3.3</p>
                    </div>
                </div>


            </div>
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

    <div class="box-stat-text">
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

    $('.diamond-tr').on('click', function(event) {

        var self = $(this),
            diamondId = $(this).attr('data-diamond-id'), // <-- diamond id
            catalogClass = $('.diamond-catalog');

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

    $('.diamond-right-close').on('click', function(event) {
        event.preventDefault();
        $('.diamond-catalog').removeClass('show-detail');
        $('.diamond-tr').removeClass('active');
    });



</script>
