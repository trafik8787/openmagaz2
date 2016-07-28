
<?//dd($CanaryProductCom)?>
<?//dd($CanaryDiamontCom)?>

<div class="row">

    <?php if (!empty($path) AND $path == 68)://diamonds?>


        <?php if (!empty($CanaryDiamontCom) AND empty($CanaryProductCom)):?>

            <?show_diamond_complect_bloc (1, $CanaryDiamontCom)?>
            <?show_product_complect_bloc (2, null, 1)?>
            <?show_complite_complect_bloc ()?>

        <?elseif(!empty($CanaryProductCom) AND empty($CanaryDiamontCom)):?>

            <?show_product_complect_bloc (1, $CanaryProductCom)?>
            <?show_diamond_complect_bloc (2, null, 1)?>
            <?show_complite_complect_bloc ()?>


        <?elseif(!empty($CanaryProductCom) AND !empty($CanaryDiamontCom)):?>

            <?show_diamond_complect_bloc (1, $CanaryDiamontCom)?>
            <?show_product_complect_bloc (2, $CanaryProductCom)?>
            <?show_complite_complect_bloc (1)?>

        <?else:?>

            <?show_diamond_complect_bloc (1, null, 1)?>
            <?show_product_complect_bloc (2)?>
            <?show_complite_complect_bloc ()?>

        <?endif?>




    <?else:// no diamonds?>


        <?php if (!empty($CanaryProductCom) AND empty($CanaryDiamontCom)):?>

            <?show_product_complect_bloc (1, $CanaryProductCom)?>
            <?show_diamond_complect_bloc (2, null, 1)?>
            <?show_complite_complect_bloc ()?>


        <?elseif(!empty($CanaryDiamontCom) AND empty($CanaryProductCom)):?>

            <?show_diamond_complect_bloc (1, $CanaryDiamontCom)?>
            <?show_product_complect_bloc (2, null, 1)?>
            <?show_complite_complect_bloc ()?>


        <?elseif(!empty($CanaryDiamontCom) AND !empty($CanaryProductCom)):?>

            <?show_product_complect_bloc (1, $CanaryProductCom)?>
            <?show_diamond_complect_bloc (2, $CanaryDiamontCom)?>
            <?show_complite_complect_bloc (1)?>

        <?else:?>

            <?show_product_complect_bloc (1, null, 1)?>
            <?show_diamond_complect_bloc (2)?>
            <?show_complite_complect_bloc ()?>

        <?endif?>

    <?endif?>









    <?function show_diamond_complect_bloc ($index, $CanaryDiamontCom = null, $show = null) {?>

        <?//dd($show)?>
        <div class="col-md-4 col-sm-4 col-xs-4">
            <a href="<?= !empty($show) ? '/diamonds' : $CanaryDiamontCom['href']?>" class="one-block  <?= !empty($show) ? 'active w-general-category' : '' ?>">
                <span class="box-img">
                    <img src="/catalog/view/theme/canary/img/diamond-shape.jpg" alt="img">
                </span>
                <span class="title">
                    <span><?=$index?>.SELECT YOUR</span>  DIAMOND
                </span>
                <span class="text">
                    Select from thousands of GIA certified diamonds.
                </span>
                <?php if (!empty($CanaryDiamontCom)):?>
                    <div>
                        <img src="<?=!empty($CanaryDiamontCom) ? $CanaryDiamontCom['img'] : '' ?>" width="50" alt="...">
                        <button data-href="<?=$CanaryDiamontCom['href'] ?>" class="step-eyes w-link-complect-bloc"></button>
                        <button class="step-close w-remowe-diamond-complect"></button>
                    </div>
                <?endif?>
            </a>

        </div>


    <?}?>


    <? function show_product_complect_bloc ($index, $CanaryProductCom = null, $show = null) {?>


        <div class="col-md-4 col-sm-4 col-xs-4">
            <a href="<?= !empty($show) ? '/engagement-rings' : $CanaryProductCom['href']?>" class="one-block <?= !empty($show) ? 'active w-general-category' : '' ?>">
                <span class="box-img">
                    <img src="/catalog/view/theme/canary/img/blank-engagement-ring.jpg" alt="img">
                </span>
                <span class="title">
                    <span><?=$index?>.SELECT YOUR</span> SETTING
                </span>
                <span class="text">
                    Pick the perfect setting from our large collection
                </span>
                <?php if (!empty($CanaryProductCom)):?>
                    <div>
                        <img src="<?=!empty($CanaryProductCom) ? $CanaryProductCom['img'] : '' ?>" width="50" alt="...">
                        <button data-href="<?=$CanaryProductCom['href'] ?>" class="step-eyes w-link-complect-bloc"></button>
                        <button class="step-close w-remowe-product-complect"></button>
                     </div>
                <?endif?>
            </a>

        </div>

    <?}?>





    <? function show_complite_complect_bloc ($show=null) {?>

        <div class="col-md-4 col-sm-4 col-xs-4 ">
            <a <?=!empty($show) ? 'href="/complete_diamond" id="w-complide-view"' : 'href="#"'?> class="one-block <?= !empty($show) ? 'active' : '' ?>">
                 <span class="box-img">
                    <img src="/catalog/view/theme/canary/img/engagment-ring-shape.jpg" alt="img">
                </span>
                <span class="title">
                    <span>3.COMPLETE YOUR</span> RING
                </span>
                <span class="text">
                    Free shipping via FedEx® on every order.
                </span>
            </a>
        </div>

    <?}?>

</div>
