
<div class="diamond-down-show">
    <input type="hidden" id="w-diamond_id" value="<?php echo $diamond->diamond_id?>">
    <div class="col-md-2 col-xs-12 col-sm-12 diamond-down-show-bloc1">
        <div class="diamond-catalog-right-img"><img src="<?=imageDiamont($diamond->shape)?>" alt=""></div>
        <p class="text-center"><a href="/diamond_page?diamond_id=<?=$diamond->diamond_id?>">More Details >></a></p>
    </div>
    <div class="col-md-3 col-xs-12 col-sm-12 diamond-down-show-bloc2">
        <div class="diamond-catalog-right-name"><?=$diamond->shape?> <br> <?=$diamond->size?> CARAT <?=$diamond->color?> <?=$diamond->clarity?></div>
        <div class="diamond-catalog-right-price"><?=Currency::formatStat($diamond->total_sales_price)?></div>
        <div class="text-center certif-link">
            <a href="http://www.diamondselections.com/GetCertificate.aspx?diamondid=<?=$diamond->diamond_id?>">View Certificate</a>
        </div>
    </div>
    <div class="col-md-4 col-xs-12 col-sm-12 diamond-down-show-bloc3">
        <div class="h3 product-advantages-title text-center">Diamond Details</div>
        <div class="icons-quality_service_icon"></div>
        <div>
            <div class="col-md-6">
                <div class="bloc3-1">
                    <ul>
                        <li>Shape: <a href="#"><i class="fa fa-info-circle" aria-hidden="true"></i></a> <?=$diamond->shape?></li>
                        <li>Polish: <?=$diamond->polish?></li>
                        <li>Symmetry: <?=$diamond->symmetry?></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6">
                <div class="bloc3-2">
                    <ul>
                        <li>Fluorescence: <?=$diamond->fluor_intensity?></li>
                        <li>L/W/D (MM) <?=$diamond->meas_length?> *<?=$diamond->meas_width?> *<?=$diamond->meas_depth?></li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
    <div class="col-md-3 col-xs-12 col-sm-12 diamond-down-show-bloc4">
        <div class="text-center"><img src="/catalog/view/theme/canary/img/diamond-catalog-message1.jpg" alt=""></div>
        <p class="text-center">Order loose diamond now for free
            5 days delivery. Add to jewelry
            for 2 weeks delivery
        </p>
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
    </div>
</div>


    <div class="modal fade styled-modal" id="w-modal-cart" tabindex="2"  aria-labelledby="mySmallModalLabel" aria-hidden="true">
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
