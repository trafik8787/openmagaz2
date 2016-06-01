

<section class="new-products">
    <h2><?php echo $heading_title; ?></h2>
    <div class="panel product-tabs panel-default">
        <!--<div class="panel-heading">-->
            <!--<ul class="nav nav-tabs">-->
                <!--<li class="active"><a href="#product6" data-toggle="tab">DIAMONDS</a></li>-->
                <!--<li><a href="#product7" data-toggle="tab">ENGAGEMENT RINGS</a></li>-->
                <!--<li><a href="#product8" data-toggle="tab">WEDDING RINGS</a></li>-->
                <!--<li><a href="#product9" data-toggle="tab">GEMSTONES</a></li>-->
                <!--<li><a href="#product10" data-toggle="tab">FINE JEWELRY</a></li>-->
            <!--</ul>-->
        <!--</div>-->
        <div class="panel-body product-panel-body center-bl">
            <div class="tab-content">
                <div class="tab-pane fade in active" id="product6">
                    <div class="clearfix">
                        <?php foreach ($products as $product) :?>
                            <div class="col-xs-3 col-sm-3 col-md-3">
                                <div class="wrapper-block">
                                    <div class="box-img">
                                        <a href="<?=$product['href']?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                                </div>
                                    <div class="title"><a href="<?=$product['href']?>"><?=$product['name']?></a></div>
                                </div>
                            </div>
                        <?endforeach?>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
