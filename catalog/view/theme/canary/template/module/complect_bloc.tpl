<?//dd($CanaryProductCom)?>
<?//dd($CanaryDiamontCom)?>
<?//dd($CanaryProductComGemstonToRing)?>
<?//dd($path)?>

<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="w-navigate-circle clearfix">



            <?php if (empty($CanaryProductCom) AND empty($CanaryDiamontCom)  AND empty($CanaryProductComGemstonToRing))://не добавлено ничего?>

                <?//определяем в какой категории или странице находимся?>
                <?if ((!empty($path) AND $path == 68) OR (!empty($path) AND $path == 'diamond_page')): //если находимся либо на странице каталога брилиантов либо на карточке брилианта?>

                    <?show_diamond_complect_bloc (1, null, 1)?>
                    <?show_product_complect_bloc (2)?>
                    <?show_complite_complect_bloc ()?>

                <?elseif ((!empty($path) AND $path == 94)): //находимся на странице цветного камня или каталога цветных камней?>

                    <?show_gemston_complect_bloc (1, null, 1)?>
                    <?show_product_complect_bloc (2)?>
                    <?show_complite_complect_bloc ()?>

                <?elseif ((!empty($path) AND $path == 82)): //находимся на jeverrly?>

                    <?show_jeverly_complect_bloc (1, null, 1)?>
                    <?show_diamond_complect_bloc (2)?>
                    <?show_complite_complect_bloc ()?>

                <?else: //все остальные?>

                    <?show_product_complect_bloc (1, null, 1)?>
                    <?show_diamond_complect_bloc (2)?>
                    <?show_complite_complect_bloc ()?>

                <?endif?>


            <?elseif (!empty($CanaryProductCom) AND empty($CanaryDiamontCom) AND empty($CanaryProductComGemstonToRing)): //добавлено только кольцо?>

                <?if ((!empty($path) AND $path == 68) OR (!empty($path) AND $path == 'diamond_page')): //если находимся либо на странице каталога брилиантов либо на карточке брилианта?>

                    <?show_product_complect_bloc (1, $CanaryProductCom)?>
                    <?show_diamond_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?elseif ((!empty($path) AND $path == 94)): //находимся на странице цветного камня или каталога цветных камней?>

                    <?show_product_complect_bloc (1, $CanaryProductCom)?>
                    <?show_gemston_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?elseif ((!empty($path) AND $path == 82)): //находимся на jeverrly?>

                    <?show_jeverly_complect_bloc (1, $CanaryProductCom)?>
                    <?show_diamond_complect_bloc (2)?>
                    <?show_complite_complect_bloc ()?>

                <?else: //все остальные?>

                    <?show_product_complect_bloc (1, $CanaryProductCom)?>
                    <?show_diamond_complect_bloc (2)?>
                    <?show_complite_complect_bloc ()?>

                <?endif?>

            <?elseif (empty($CanaryProductCom) AND !empty($CanaryDiamontCom) AND empty($CanaryProductComGemstonToRing)): //добавлен только брилиант?>

                <?if ((!empty($path) AND $path == 68) OR (!empty($path) AND $path == 'diamond_page')): //если находимся либо на странице каталога брилиантов либо на карточке брилианта?>

                    <?show_diamond_complect_bloc (1, $CanaryDiamontCom)?>
                    <?show_product_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?elseif ((!empty($path) AND $path == 82)): //находимся на jeverrly?>

                    <?show_diamond_complect_bloc (1, $CanaryDiamontCom)?>
                    <?show_jeverly_complect_bloc (2)?>
                    <?show_complite_complect_bloc ()?>

                <?else: //все остальные?>

                    <?show_diamond_complect_bloc (1, $CanaryDiamontCom)?>
                    <?show_product_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>
                <?endif?>

            <?elseif (empty($CanaryProductCom) AND empty($CanaryDiamontCom) AND !empty($CanaryProductComGemstonToRing)): //добавлен только цветной камень?>

                <?if ((!empty($path) AND $path == 68) OR (!empty($path) AND $path == 'diamond_page')): //если находимся либо на странице каталога брилиантов либо на карточке брилианта?>

                    <?show_gemston_complect_bloc (1, $CanaryProductComGemstonToRing)?>
                    <?show_product_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?elseif ((!empty($path) AND $path == 82)): //находимся на jeverrly?>

                    <?show_gemston_complect_bloc (1, $CanaryProductComGemstonToRing)?>
                    <?show_jeverly_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?else: //все остальные?>

                    <?show_gemston_complect_bloc (1, $CanaryProductComGemstonToRing)?>
                    <?show_product_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?endif?>

            <?elseif (!empty($CanaryProductCom) AND !empty($CanaryDiamontCom) AND empty($CanaryProductComGemstonToRing)): //добавлено кольцо и брилиант?>

                <?show_diamond_complect_bloc (1, $CanaryDiamontCom)?>
                <?show_product_complect_bloc (2, $CanaryProductCom)?>
                <?show_complite_complect_bloc (1)?>

            <?elseif (!empty($CanaryProductCom) AND empty($CanaryDiamontCom) AND !empty($CanaryProductComGemstonToRing)): //добавлено кольцо и цветной камень?>

                <?show_product_complect_bloc (1, $CanaryProductCom)?>
                <?show_gemston_complect_bloc (2, $CanaryProductComGemstonToRing)?>
                <?show_complite_complect_bloc (1)?>

            <?endif?>






        </div>
    </div>
</div>




<?function show_diamond_complect_bloc ($index, $CanaryDiamontCom = null, $show = null) {?>

<?//dd($show)?>

    <div class="my-div <?= !empty($show) ? 'active-circle' : '' ?> <?php if (!empty($CanaryDiamontCom)):?> w-opacity<?endif?>">
        <a href="<?= !empty($show) ? '/diamonds' : $CanaryDiamontCom['href']?>"  class="w-one-block  <?= !empty($show) ? 'w-general-category' : '' ?>">
            <span class="number-step"><?=$index?></span>
            <span class="title">
                <span>SELECT YOUR DIAMOND</span>
            </span>
            <span class="text">
                Select from thousands of GIA certified diamonds.
            </span>
            <!--*<?php if (!empty($CanaryDiamontCom)):?>*-->
            <!--*<div>*-->
            <!--*<img src="<?=!empty($CanaryDiamontCom) ? $CanaryDiamontCom['img'] : '' ?>" width="50" alt="...">*-->
            <!--*<button data-href="<?=$CanaryDiamontCom['href'] ?>" class="step-eyes w-link-complect-bloc"></button>*-->
            <!--*<button class="step-close w-remowe-diamond-complect"></button>*-->
            <!--*</div>*-->
            <!--*<?endif?>*-->
        </a>
    </div>
<?}?>



<?function show_gemston_complect_bloc ($index, $CanaryProductComGemstonToRing = null, $show = null) {?>

    <div class="my-div <?= !empty($show) ? 'active-circle' : '' ?> <?php if (!empty($CanaryProductComGemstonToRing)):?> w-opacity<?endif?>">
        <a href="<?= !empty($show) ? '/engagement-rings' : $CanaryProductComGemstonToRing['href']?>" class="w-one-block <?= !empty($show) ? 'w-general-category' : '' ?>">
            <span class="number-step"><?=$index?></span>
            <span class="title">
                        <span>SELECT YOUR GEMSTON</span>
                    </span>
            <span class="text">
                        Pick the perfect setting from our large collection
                    </span>

        </a>
    </div>
<?}?>


<? function show_product_complect_bloc ($index, $CanaryProductCom = null, $show = null) {?>


    <div class="my-div <?= !empty($show) ? 'active-circle' : '' ?> <?php if (!empty($CanaryProductCom)):?> w-opacity<?endif?>">

        <a href="<?= !empty($show) ? '/engagement-rings' : $CanaryProductCom['href']?>" class="w-one-block <?= !empty($show) ? 'w-general-category' : '' ?>">
        <span class="number-step"><?=$index?></span>
        <span class="title">
        <span>SELECT YOUR SETTING </span>
        </span>
        <span class="text">
        Pick the perfect setting from our large collection
        </span>
        </a>

    </div>

<?}?>


<? function show_jeverly_complect_bloc ($index, $CanaryProductCom = null, $show = null) {?>


    <div class="my-div <?= !empty($show) ? 'active-circle' : '' ?> <?php if (!empty($CanaryProductCom)):?> w-opacity<?endif?>">

        <a href="<?= !empty($show) ? '/engagement-rings' : $CanaryProductCom['href']?>" class="w-one-block <?= !empty($show) ? 'w-general-category' : '' ?>">
            <span class="number-step"><?=$index?></span>
            <span class="title">
            <span>SELECT YOUR JEVERLY </span>
            </span>
            <span class="text">
            Pick the perfect jeverly from our large collection
            </span>
        </a>

    </div>

<?}?>



<? function show_complite_complect_bloc ($show=null) {?>


    <div class="my-div <?= !empty($show) ? 'active-circle' : '' ?>" >
        <a <?=!empty($show) ? 'href="/complete_diamond"' : 'href="#"'?> class="w-one-block">
        <span class="number-step">3</span>
        <span class="title">
        <span>COMPLETE YOUR RING</span>
        </span>
        <span class="text">
        Free shipping via FedEx® on every order.
        </span>
        </a>
    </div>

<?}?>

<script>
    $(document).ready(function () {
        $(".w-opacity").popover({ trigger: "hover" });

    });

</script>
