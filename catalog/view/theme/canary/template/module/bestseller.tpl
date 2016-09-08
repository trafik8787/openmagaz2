

<section class="new-products">
    <h2><?php echo $heading_title; ?></h2>
    <div class="panel product-tabs panel-default">

        <div class="panel-body product-panel-body center-bl">
            <div class="tab-content">
                <div class="tab-pane fade in active" id="product6">
                    <div class="clearfix">
                        <?php foreach ($products as $product) :?>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="<?=$product['href']?>" class="w-product-ajax"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                                </div>
                                    <div class="title"><a href="<?=$product['href']?>" class="w-product-ajax"><?=$product['name']?></a></div>
                                </div>
                            </div>
                        <?endforeach?>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
