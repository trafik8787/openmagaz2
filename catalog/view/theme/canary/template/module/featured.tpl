<div class="bx-wrapper">
    <div class="bxslider">
        <?php foreach ($products as $product) :?>
        <div class="wrapper-selling">
            <div class="text-center">
                <a href="<?=$product['href']?>">
                    <img src="<?php echo $product['thumb']; ?>" width="70%" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
                </a>
                <div>
                    <a href="<?=$product['href']?>"><span class="h4 w-bx-prod-name"><?=$product['name']?></span></a>
                    <div class="icons-slider_marcer_icon"></div>
                </div>
                <div class="w-price"><?=$product['price']?></div>
            </div>
        </div>
        <?endforeach?>
    </div>
</div>
