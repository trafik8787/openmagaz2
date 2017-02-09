<div class="diamond-catalog-right-inner">
    <input type="hidden" id="w-diamond_id" value="<?php echo $diamond->diamond_id?>">
    <div class="diamond-right-controls clearfix">
        <a href="#" class="diamond-right-btn diamond-right-close"> <i class="fa fa-angle-left"></i> Close Details</a>
        <a href="/diamond_page?diamond_id=<?=$diamond->diamond_id?>" class="diamond-right-btn diamond-right-detail">More Details <i class="fa fa-angle-right"></i></a>
    </div>
    <div class="diamond-catalog-right-container">
        <!--*<div class="text-center">*-->
            <!--*<div class="rating">*-->
                <!--*<i class="star"></i>*-->
                <!--*<i class="star"></i>*-->
                <!--*<i class="star"></i>*-->
                <!--*<i class="star"></i>*-->
                <!--*<i class="star"></i>*-->
                <!--*<span><a href="" onclick="return false;">(0 customer ratings)</a></span>*-->
            <!--*</div>*-->
        <!--*</div>*-->
        <div class="diamond-catalog-right-img"><img src="<?=imageDiamont($diamond->shape)?>" alt=""></div>
        <div class="diamond-catalog-right-name"><?=$diamond->shape?> <?=$diamond->size?> CARAT <?=$diamond->color?> <?=$diamond->clarity?></div>
        <div class="diamond-catalog-right-price"><?=Currency::formatStat($diamond->total_sales_price)?></div>
        <div class="diamond-catalog-right-message">
            <div><img src="/catalog/view/theme/canary/img/diamond-catalog-message.jpg" alt=""></div>
            <p>Order loose diamond now for free
                5 days delivery. Add to jewelry
                for 2 weeks delivery
            </p>

        </div>
        <div class="text-center">
            <?if (!empty(Cookie::get('CanaryProductCom')) OR !empty(Cookie::get('CanaryDiamontCom')) OR !empty(Cookie::get('CanaryProductComGemstonToRing'))):?>
                <button type="button" id="w-button-add-diamond-complect" data-loading-text="Loading..."
                        data-dismiss="modal" aria-hidden="true"
                        data-idproduct="<?php echo $diamond->diamond_id ?>"
                        data-shape="<?php echo $diamond->shape?>"
                        class="btn w-btn-orange btn-lg text-center"><i class="bold-angle-right"></i> Select this Item</button>
            <?else:?>
                <button type="button" data-toggle="modal" data-target="#w-modal-cart" class="btn w-btn-orange btn-lg"><i class="bold-angle-right"></i> Select this Item</button>
            <?endif?>

        </div>
        <div class="text-center">
            <a href="http://www.diamondselections.com/GetCertificate.aspx?diamondid=<?=$diamond->diamond_id?>">View Certificate</a>
        </div>
        <div class="right-stone-details">
            <p><strong>STONE DETAILS</strong></p>
            <p>POLISH: <?=$diamond->polish?></p>
            <p>SYMMETRY: <?=$diamond->symmetry?></p>
            <p>FLUORESCENCE: <?=$diamond->fluor_intensity?></p>
            <p>L/W/D (MM) <?=$diamond->meas_length?> *<?=$diamond->meas_width?> *<?=$diamond->meas_depth?></p>
        </div>
    </div>
</div>



<div class="modal fade styled-modal" id="w-modal-cart" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span>&times;</span></button>
            <div class="modal-body">
                <div class="styled-modal-header">
                    <div class="styled-modal-title">What would you like to do?</div>
                    <div class="icons-quality_service_icon"></div>
                </div>
                <div class="product-modal-buttons">
                    <div class="row modal-btn-row">
                        <div class="col-xs-6">
                            <button type="button" id="w-button-add-diamond-complect" data-loading-text="Loading..."
                                    data-dismiss="modal" aria-hidden="true"
                                    data-idproduct="<?php echo $diamond->diamond_id ?>"
                                    data-shape="<?php echo $diamond->shape?>"
                                    class="btn w-btn-orange btn-lg text-center">Add diamond to a ring</button>
                        </div>
                        <div class="col-xs-6">
                            <button type="button" id="w-button-add-diamond-complect-to-pendant" data-loading-text="Loading..."
                                    data-dismiss="modal" aria-hidden="true"
                                    data-idproduct="<?php echo $diamond->diamond_id ?>"
                                    data-shape="<?php echo $diamond->shape?>"
                                    class="btn w-btn-orange btn-lg text-center">Add Diamond to a Pendant</button>
                        </div>
                    </div>
                    <button type="button" data-dismiss="modal" aria-hidden="true"
                            id="w-diamont-button-cart" data-loading-text="Loading..."
                            class="btn w-btn-orange btn-lg text-center w-modal-button"
                            onmouseup="ga('send', 'event', 'button, 'click', 'Add to Cart');"> <span class="add-tocart-ico"></span> Add to cart</button>
                </div>

            </div>

        </div>
    </div>
</div>

