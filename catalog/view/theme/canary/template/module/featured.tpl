<div class="bx-wrapper">
    <div class="bxslider">
        <?php foreach ($products as $product) :?>
        <div class="wrapper-selling">
            <div class="text-center">
                <a href="<?=$product['href']?>">
                    <img src="<?php echo $product['thumb']; ?>" width="147" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" >
                </a>
                <div>
                    <a href="<?=$product['href']?>"><span class="h4 w-bx-prod-name"><?=$product['name']?></span></a>
                    <div class="icons-slider_marcer_icon"></div>
                </div>
                <!--*<div class="w-price"><?=$product['price']?></div>*-->
                <?php if (!$product['special']):?>
                    <div class="w-price"><?=$product['price']?></div>
                <?else:?>
                    <span class="price" style="color: #2b2a29; font-size: 18px!important; font-weight: bold;"><?php echo $product['special']; ?></span>
                    <b class="w-special-price"><?php echo $product['price']; ?></b>
                <?endif?>
            </div>
        </div>
        <?endforeach?>
    </div>
</div>
