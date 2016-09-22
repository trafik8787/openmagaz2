
<ul class="bxslider">
    <?php foreach ($products as $product) :?>
        <li>
            <div class="text-center">
                <a href="<?=$product['href']?>">
                    <img class="img-circle" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
                </a>
                <div><span class="h4"><?=$product['name']?></span></div>
                <div class="w-price"><?=$product['price']?></div>
            </div>
        </li>
    <?endforeach?>
</ul>