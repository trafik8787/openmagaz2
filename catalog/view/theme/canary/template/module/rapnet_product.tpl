<?php echo isset($header) ? $header : ''; ?>


<?//dd($products)?>
<?//dd($product)?>
<?//dd($attribute_groups)?>



<main class="w-general-container">
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


            <?php echo $content_top; ?>

        </div>
        <div class="center-bl">
            <div class="one-product clearfix">
                <div class="one-product-slider hidden-xs">
                    <div class="slider-for">
                        <div><img src="<?=imageDiamont($product->response->body->diamond->shape)?>" style="margin-left: auto; margin-right: auto; width: 100%;"></div>
                    </div>
                    <div class="slider-nav">
                        <div class="wrapper-img-slider"><img src="<?=imageDiamont($product->response->body->diamond->shape)?>"></div>
                    </div>
                    <ul class="list-inline it-list">
                        <li>
                            <a href="#" class="it-list-link wishlist-btn-item" data-toggle="tooltip" onclick="wishlist.addDiamond('<?=$product->response->body->diamond->diamond_id?>'); return false;" data-placement="top" title="" data-original-title="Add to Wish List"><i class="it-ico it-ico-heart"></i> Wish It</a>
                        </li>
                        <li><a href="#" class="it-list-link"><i class="it-ico it-ico-mail"></i> Hint it</a></li>
                        <!--*<li><a href="#" class="it-list-link"><i class="it-ico it-ico-star"></i> Rate it</a></li>*-->
                        <li><a href="#" class="it-list-link"><i class="it-ico it-ico-print"></i> Print it</a></li>
                        <li>
                            <!-- space for chare -->
                            <img src="/catalog/view/theme/canary/img/share-space.jpg" alt="">
                        </li>

                    </ul>
                </div>
                <div class="one-product-info" id="product">
                    <div class="row">
                        <div class="col-md-8 col-sm-8">
                            <h1 class="w-product-name-h1"><?=$diamond_name?></h1>
                        </div>
                        <div class="col-md-4 col-sm-4 text-right">
                            <strong>SKU:<?=$product->response->body->diamond->diamond_id?></strong>
                        </div>
                    </div>
                    <div class="row paging-bottom-20"><?//=dd($product->response->body->diamond)?>
                        <div class="col-md-8 col-sm-8">
                            <h3 class="w-product-desc">
                                <!-- todo desc-->
                                This <?=$product->response->body->diamond->size?> Carat, <?=$product->response->body->diamond->size?>
                                <?= !empty($product->response->body->diamond->cut) ? $product->response->body->diamond->cut .'Cut,' : ''?>
                                <?=$product->response->body->diamond->color?> color, and
                                <?=$product->response->body->diamond->clarity?> clarity
                                <?=$product->response->body->diamond->shape?>
                                Shape diamond is accompanied by a GIA grading report.
                            </h3>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <!--*<div class="diamant-size-block">*-->
                                <!--*<div class="diamant-size-inner">*-->
                                    <!--*<img class="diamant-size-ruler" src="/catalog/view/theme/canary/img/diamant-size-ruler.png" alt="">*-->
                                    <!--*<i class="brilliant-ico2 brilliant-s2" style="*-->
                                    <!--*-webkit-transform: scale(0.5);*-->
                                    <!--*-moz-transform: scale(0.5);*-->
                                    <!--*-ms-transform: scale(0.5);*-->
                                    <!--*-o-transform: scale(0.5);*-->
                                    <!--*transform: scale(0.5);*-->
                                    <!--*"></i>*-->
                                    <!--*<div class="diamant-size-text">Real <?=$product->response->body->diamond->size?> Carat Size</div>*-->
                                <!--*</div>*-->
                                <!--*<div class="diamant-size-detail clearfix">*-->
                                    <!--*<div class="diamant-size-it clearfix">*-->
                                        <!--*<div class="clearfix">*-->
                                            <!--*<div class="diamant-size-left-text">1 Ct.<br>*-->
                                                <!--*(6.4 mm)</div>*-->
                                            <!--*<div class="diamant-size-detail-img diamant-size-photo">*-->
                                                <!--*<img src="/image/catalog/shapes/princess.png" alt="" style="width: 30px;">*-->
                                            <!--*</div>*-->
                                        <!--*</div>*-->
                                        <!--*<div class="diamant-size-bottom-text">1 Ct.<br>*-->
                                        <!--*(6.4 mm)</div>*-->
                                    <!--*</div>*-->
                                    <!--*<div class="diamant-size-coin text-center">*-->
                                        <!--*<div class=" diamant-size-detail-img diamant-size-coin-img"></div>*-->
                                        <!--*17.9 mm*-->
                                    <!--*</div>*-->
                                <!--*</div>*-->
                            <!--*</div>*-->
                        </div>
                    </div>
                    <div class="one-product-slider visible-xs">
                        <div class="slider-for">
                            <div><img src="<?=imageDiamont($product->response->body->diamond->shape)?>" style="margin-left: auto; margin-right: auto; width: 100%;"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="product-details">
                                <div class="hidden-xs">
                                    <div class="h3 text-center margin-top-0">DIAMOND DETAILS:</div>
                                    <div class="icons-quality_service_icon"></div>
                                    <div class="table-condensed margin-buttom-0">
                                        <table class="table">
                                            <tr>
                                                <td><span>SHAPE: <?=$product->response->body->diamond->shape?></span></td>
                                                <td><span>CLARITY: <?=$product->response->body->diamond->clarity?></span></td>
                                            </tr>
                                            <tr>
                                                <td><span>CARAT WEIGHT: <?=$product->response->body->diamond->size?></span></td>
                                                <td><span>POLISH: <?=$product->response->body->diamond->polish?></span></td>
                                            </tr>
                                            <tr>
                                                <td><span>COLOR: <?=$product->response->body->diamond->color?></span></td>
                                                <td><span><a href="#" onclick="return false;" class="prod-more-spec" data-toggle="collapse" data-target="#diamondMoreSpec"><span class="text1">More</span><span class="text2">Less</span> specifications »</a></span></td>
                                            </tr>
                                        </table>
                                        <div id="diamondMoreSpec" class="collapse">
                                            <table class="table">
                                                <tr>
                                                    <td><span>SYMMETRY: <?=$product->response->body->diamond->symmetry?></span></td>
                                                    <td><span>DEPTH %: <?=$product->response->body->diamond->depth_percent?></span></td>
                                                </tr>
                                                <tr>
                                                    <td><span>GIRDLE: <?=$product->response->body->diamond->girdle_max?></span></td>
                                                    <td><span>FLUORESCENCE: <?=$product->response->body->diamond->fluor_intensity?></span></td>
                                                </tr>
                                                <tr>
                                                    <td><span>TABLE %: <?=$product->response->body->diamond->table_percent?></span></td>
                                                    <td><span>L/W/D (MM) <?=$product->response->body->diamond->meas_length?>
                                                                        *<?=$product->response->body->diamond->meas_width?>
                                                                        *<?=$product->response->body->diamond->meas_depth?></span></td>
                                                </tr>
                                                <tr>
                                                    <td><span>CULET: <?=$product->response->body->diamond->culet_size?></span></td>
                                                    <td><span>CUT: <?=$product->response->body->diamond->cut?></span></td>
                                                </tr>
                                                <tr>
                                                    <td><span>L/W RATIO: 1.01</span></td>
                                                    <td><span>Certificate: GIA</span></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" id="w-diamond_id" value="<?php echo $product->response->body->diamond->diamond_id?>">
                                <div class="alert alert-info margin-buttom-0 product-buy-details product-buy-diamant clearfix">
                                    <div class="price-product">
                                        <span>$<?=$product->response->body->diamond->total_sales_price?>.00</span>
                                    </div>
                                    <a class="product-buy-sertificate" href="http://www.diamondselections.com/GetCertificate.aspx?diamondid=<?=$product->response->body->diamond->diamond_id?>" target="_blank"><img src="/catalog/view/theme/canary/img/icon_lab/<?=strtolower($product->response->body->diamond->lab)?>.jpg" alt="" style="width: 65px"> <span>View<br>Certificate</span></a>
                                    <button type="button" data-toggle="modal" data-target="#w-modal-cart"  class="btn w-btn-orange btn-lg"><i class="bold-angle-right"></i> Select this Item</button>
                                </div>
                                <div class="visible-xs">
                                    <div class="h3 text-center margin-top-0">DIAMOND DETAILS:</div>
                                    <div class="icons-quality_service_icon"></div>
                                    <div class="table-condensed margin-buttom-0">
                                        <table class="table">
                                            <tr>
                                                <td><span>SHAPE: <?=$product->response->body->diamond->shape?></span></td>
                                                <td><span>CLARITY: <?=$product->response->body->diamond->clarity?></span></td>
                                            </tr>
                                            <tr>
                                                <td><span>CARAT WEIGHT: <?=$product->response->body->diamond->size?></span></td>
                                                <td><span>POLISH: <?=$product->response->body->diamond->polish?></span></td>
                                            </tr>
                                            <tr>
                                                <td><span>COLOR: <?=$product->response->body->diamond->color?></span></td>
                                                <td><span><a href="#" onclick="return false;" class="prod-more-spec" data-toggle="collapse" data-target="#diamondMoreSpec1"><span class="text1">More</span><span class="text2">Less</span> specifications »</a></span></td>
                                            </tr>
                                        </table>
                                        <div id="diamondMoreSpec1" class="collapse">
                                            <table class="table">
                                                <tr>
                                                    <td><span>SYMMETRY: <?=$product->response->body->diamond->symmetry?></span></td>
                                                    <td><span>DEPTH %: <?=$product->response->body->diamond->depth_percent?></span></td>
                                                </tr>
                                                <tr>
                                                    <td><span>GIRDLE: <?=$product->response->body->diamond->girdle_max?></span></td>
                                                    <td><span>FLUORESCENCE: <?=$product->response->body->diamond->fluor_intensity?></span></td>
                                                </tr>
                                                <tr>
                                                    <td><span>TABLE %: <?=$product->response->body->diamond->table_percent?></span></td>
                                                    <td><span>L/W/D (MM) <?=$product->response->body->diamond->meas_length?>
                                                                        *<?=$product->response->body->diamond->meas_width?>
                                                                        *<?=$product->response->body->diamond->meas_depth?></span></td>
                                                </tr>
                                                <tr>
                                                    <td><span>CULET: <?=$product->response->body->diamond->culet_size?></span></td>
                                                    <td><span>CUT: <?=$product->response->body->diamond->cut?></span></td>
                                                </tr>
                                                <tr>
                                                    <td><span>L/W RATIO: 1.01</span></td>
                                                    <td><span>Certificate: GIA</span></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="alert alert-warning product-need-help visible-xs">
                        <span class="h4">Need Help?</span>
                        <ul class="list-inline w-help-ned">
                            <li><a href="#"><span class="help-ico help-ico-chat"></span> <span class="help-text">Online Chat now</span></a></li>
                            <li><a href="mailto:info@brilliantcanary.com"><span class="help-ico help-ico-mail"></span> <span class="help-text">Email</span></a></li>
                            <!-- todo phone-->
                            <li><a href="tel:800-214-6550"><span class="help-ico help-ico-phone"></span> <span class="help-text">800-214-6550 | 24/7</span></a></li>
                        </ul>
                    </div>
                    <ul class="list-inline it-list visible-xs">
                        <li>
                            <a href="#" class="it-list-link wishlist-btn-item" data-toggle="tooltip" onclick="wishlist.add('<?php echo $product_id; ?>'); return false;" data-placement="top" title="" data-original-title="Add to Wish List"><i class="it-ico it-ico-heart"></i> Wish It</a>
                        </li>
                        <li><a href="#" class="it-list-link"><i class="it-ico it-ico-mail"></i> Hint it</a></li>
                        <!--*<li><a href="#" class="it-list-link"><i class="it-ico it-ico-star"></i> Rate it</a></li>*-->
                        <li><a href="#" class="it-list-link"><i class="it-ico it-ico-print"></i> Print it</a></li>
                        <li>
                            <!-- space for chare -->
                            <img src="/catalog/view/theme/canary/img/share-space.jpg" alt="">
                        </li>

                    </ul>

                    <?=$bloc_product_advantages ?>


                </div>
            </div>

            <?=$blok_need_help?>

            <div id="diamant-more-spec" class="diamant-more-spec clearfix">
                <div class="diamant-more-left">
                    <div class="product-details">
                        <div class="h3 margin-top-0">Diamond Specifications</div>
                        <div class="table-condensed margin-buttom-0">
                            <table class="table">
                                <tr>
                                    <td><span>SHAPE: <?=$product->response->body->diamond->shape?></span></td>
                                    <td><span>POLISH: <?=$product->response->body->diamond->polish?></span></td>
                                    <td><span>DEPTH %: <?=$product->response->body->diamond->depth_percent?></span></td>
                                </tr>
                                <tr>
                                    <td><span>CARAT WEIGHT: <?=$product->response->body->diamond->size?></span></td>
                                    <td><span>SYMMETRY: <?=$product->response->body->diamond->symmetry?></span></td>
                                    <td><span>GIRDLE: <?=$product->response->body->diamond->girdle_max?></span></td>
                                </tr>
                                <tr>
                                    <td><span>COLOR: <?=$product->response->body->diamond->color?></span></td>
                                    <td><span>FLUORESCENCE: <?=$product->response->body->diamond->fluor_intensity?></span></td>
                                    <td><span>TABLE %: <?=$product->response->body->diamond->table_percent?></span></td>
                                </tr>
                                <tr>
                                    <td><span>CLARITY: <?=$product->response->body->diamond->clarity?></span></td>
                                    <td><span>L/W/D (MM) <?=$product->response->body->diamond->meas_length?>
                                        *<?=$product->response->body->diamond->meas_width?>
                                        *<?=$product->response->body->diamond->meas_depth?></span></td>
                                    <td><span>CULET: <?=$product->response->body->diamond->culet_size?></span></td>
                                </tr>
                                <tr>
                                    <td><span>CUT: <?=$product->response->body->diamond->cut?></span></td>
                                    <td><span>L/W RATIO: 1.01</span></td>
                                    <td><span>Certificate: GIA</span></td>
                                </tr>
                            </table>
                        </div>
                        <div class="alert alert-info margin-buttom-0 product-buy-details product-buy-diamant clearfix">
                            <strong>SKU:71995555</strong>
                            <div class="price-product">
                                <span>$<?=$product->response->body->diamond->total_sales_price?></span>
                            </div>
                            <a class="product-buy-sertificate" href="http://www.diamondselections.com/GetCertificate.aspx?diamondid=<?=$product->response->body->diamond->diamond_id?>"><img src="/catalog/view/theme/canary/img/icon_lab/<?=strtolower($product->response->body->diamond->lab)?>.jpg" alt="" style="width: 65px"> <span>View<br>Certificate</span></a>
                            <button type="button" data-toggle="modal" data-target="#w-modal-cart"  class="btn w-btn-orange btn-lg"><i class="bold-angle-right"></i> Select this Item</button>
                        </div>
                    </div>
                </div>
                <div class="diamant-more-right">
                    <div class="product-diamond-help">
                        <div class="h3 margin-top-0">DIAMOND HELP</div>
                        <div class="format">
                            <h5>Shape</h5>
                            <p>A diamond’s cut is the most important characteristic in determining a diamond’s beauty. The cut of a diamond refers not to its visual shape, but its ability to properly reflect light. A diamond cut to the highest standards of proportion, provides the most beauty and sparkle. A diamond’s cut grade is determined by three types of reflected light</p>
                            <h5>CLARITY</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias nam nisi nobis, odio sapiente unde veniam voluptatem. A blanditiis, reiciendis.</p>
                            <h5>GIRDLE</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, aspernatur assumenda at cum dicta distinctio doloribus eaque eius exercitationem expedita nesciunt obcaecati, porro quam reprehenderit sapiente, vel vitae voluptatem voluptatum?</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <?=$blok_your_order_includes ?>

    </section>

    <?=$diamond_similar?>


    <div class="modal fade styled-modal" id="w-modal-cart" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span>&times;</span></button>
                <div class="modal-body">
                    <div class="line-price-product clearfix">
                        <p>

                        </p>


                        <p></p>
                    </div>

                    <div class="styled-modal-header">
                        <div class="styled-modal-title">What would you like to do?</div>
                        <div class="icons-quality_service_icon"></div>
                    </div>
                    <div class="product-modal-buttons">
                        <div class="modal-btn-row">
                            <button type="button" id="w-button-add-diamond-complect" data-loading-text="Loading..."
                                    data-dismiss="modal" aria-hidden="true"
                                    data-idproduct="<?php echo $product->response->body->diamond->diamond_id ?>"
                                    data-shape="<?php echo $product->response->body->diamond->shape?>"
                                    class="btn w-btn-orange btn-lg text-center">Add Diamond to a Ring</button>
                        </div>
                        <button type="button" data-dismiss="modal" aria-hidden="true"
                                id="w-diamont-button-cart" data-loading-text="Loading..."
                                class="btn w-btn-orange btn-lg text-center w-modal-button"
                                onmouseup="ga('send', 'event', 'button, 'click', 'Add to Cart');"> <span class="add-tocart-ico"></span> Add Diamond to Cart</button>
                    </div>

                </div>

            </div>
        </div>
    </div>
</main>


<script>



    $('.diamant-size-inner').click(function() {
        $(this).toggleClass('active');
    });

    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav',
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    arrows: true
                }
            }
        ]

    });


    $('.slider-nav').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: false,
        focusOnSelect: true,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            }
        ]
    });



    var similarStoneslider = $('.similar-list-4 .wrapper-product-table .table tbody');
    var $settings = {
        dots: false,
        infinite: true,
        arrows: true,
        draggable: false,
        speed: 500,
        slidesToShow: 1,
        prevArrow: '<div class="slick-prev"></div>',
        nextArrow: '<div class="slick-next"></div>'
    };
    if ($(window).width() < 481) {
        similarStoneslider.slick($settings);
    }
    $(window).on('resize', function() {
        if ($(window).width() > 480) {
            if (similarStoneslider.hasClass('slick-initialized')) {
                similarStoneslider.slick('unslick');
            }
            return
        }
        if (!similarStoneslider.hasClass('slick-initialized')) {
            return similarStoneslider.slick($settings);
        }
        setTimeout(function(){
            similarStoneslider.slick('setPosition');
        }, 500);

    });

</script>

<?php echo isset($footer) ? $footer : ''; ?>
