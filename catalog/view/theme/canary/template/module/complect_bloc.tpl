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

                    <?show_product_complect_bloc (1, $CanaryProductCom, 1)?>
                    <?show_diamond_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?elseif ((!empty($path) AND $path == 94)): //находимся на странице цветного камня или каталога цветных камней?>

                    <?show_product_complect_bloc (1, $CanaryProductCom, 1)?>
                    <?show_gemston_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?elseif ((!empty($path) AND $path == 82)): //находимся на jeverrly?>

                    <?show_jeverly_complect_bloc (1, $CanaryProductCom, 1)?>
                    <?show_diamond_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?else: //все остальные?>

                    <?show_product_complect_bloc (1, $CanaryProductCom, 1)?>
                    <?show_diamond_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?endif?>

            <?elseif (empty($CanaryProductCom) AND !empty($CanaryDiamontCom) AND empty($CanaryProductComGemstonToRing)): //добавлен только брилиант?>

                <?if ((!empty($path) AND $path == 68) OR (!empty($path) AND $path == 'diamond_page')): //если находимся либо на странице каталога брилиантов либо на карточке брилианта?>

                    <?show_diamond_complect_bloc (1, $CanaryDiamontCom, 1)?>
                    <?show_product_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?elseif ((!empty($path) AND $path == 82)): //находимся на jeverrly?>

                    <?show_diamond_complect_bloc (1, $CanaryDiamontCom, 1)?>
                    <?show_jeverly_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?else: //все остальные?>

                    <?show_diamond_complect_bloc (1, $CanaryDiamontCom, 1)?>
                    <?show_product_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>
                <?endif?>

            <?elseif (empty($CanaryProductCom) AND empty($CanaryDiamontCom) AND !empty($CanaryProductComGemstonToRing)): //добавлен только цветной камень?>

                <?if ((!empty($path) AND $path == 68) OR (!empty($path) AND $path == 'diamond_page')): //если находимся либо на странице каталога брилиантов либо на карточке брилианта?>

                    <?show_gemston_complect_bloc (1, $CanaryProductComGemstonToRing, 1)?>
                    <?show_product_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?elseif ((!empty($path) AND $path == 82)): //находимся на jeverrly?>

                    <?show_gemston_complect_bloc (1, $CanaryProductComGemstonToRing, 1)?>
                    <?show_jeverly_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?else: //все остальные?>

                    <?show_gemston_complect_bloc (1, $CanaryProductComGemstonToRing, 1)?>
                    <?show_product_complect_bloc (2, null, 1)?>
                    <?show_complite_complect_bloc ()?>

                <?endif?>

            <?elseif (!empty($CanaryProductCom) AND !empty($CanaryDiamontCom) AND empty($CanaryProductComGemstonToRing)): //добавлено кольцо и брилиант?>

                <?show_diamond_complect_bloc (1, $CanaryDiamontCom, 1)?>
                <?show_product_complect_bloc (2, $CanaryProductCom, 1)?>
                <?show_complite_complect_bloc (1)?>

            <?elseif (!empty($CanaryProductCom) AND empty($CanaryDiamontCom) AND !empty($CanaryProductComGemstonToRing)): //добавлено кольцо и цветной камень?>

                <?show_product_complect_bloc (1, $CanaryProductCom, 1)?>
                <?show_gemston_complect_bloc (2, $CanaryProductComGemstonToRing, 1)?>
                <?show_complite_complect_bloc (1)?>

            <?endif?>






        </div>
    </div>
</div>




<?function show_diamond_complect_bloc ($index, $CanaryDiamontCom = null, $show = null) {?>

<?//dd($show)?>

    <div class="my-div <?= !empty($show) ? 'active-circle' : '' ?> <?php if (!empty($CanaryDiamontCom)):?> w-opacity<?endif?>">
        <?if ($show !== null):?>
            <a href="<?= !empty($CanaryDiamontCom['href']) ? $CanaryDiamontCom['href'] : '/diamonds'?>"  class="w-one-block  <?= !empty($show) ? 'w-general-category' : '' ?>">
                <span class="number-step"><?=$index?></span>
                <span class="title">
                    <span>SELECT YOUR DIAMOND</span>
                </span>
                <span class="text">
                    Select from thousands of GIA certified diamonds.
                </span>

            </a>
        <?else:?>
            <span class="w-one-block">
                <span class="number-step"><?=$index?></span>
                <span class="title">
                    <span>SELECT YOUR DIAMOND</span>
                </span>
                <span class="text">
                    Select from thousands of GIA certified diamonds.
                </span>
            </span>
        <?endif?>
    </div>
<?}?>



<?function show_gemston_complect_bloc ($index, $CanaryProductComGemstonToRing = null, $show = null) {?>

    <div class="my-div <?= !empty($show) ? 'active-circle' : '' ?> <?php if (!empty($CanaryProductComGemstonToRing)):?> w-opacity<?endif?>">
        <?if ($show !== null):?>
            <a href="<?= !empty($CanaryProductComGemstonToRing['href']) ? $CanaryProductComGemstonToRing['href'] : '/gemstones' ?>" class="w-one-block <?= !empty($show) ? 'w-general-category' : '' ?>">
                <span class="number-step"><?=$index?></span>
                <span class="title">
                    <span>SELECT YOUR GEMSTON</span>
                </span>
                <span class="text">
                   Pick the perfect setting from our large collection
                </span>
            </a>
        <?else:?>
            <span class="w-one-block">
                <span class="number-step"><?=$index?></span>
                <span class="title">
                    <span>SELECT YOUR GEMSTON</span>
                </span>
                <span class="text">
                   Pick the perfect setting from our large collection
                </span>
            </span>
        <?endif?>
    </div>
<?}?>


<? function show_product_complect_bloc ($index, $CanaryProductCom = null, $show = null) {?>


    <div class="my-div <?= !empty($show) ? 'active-circle' : '' ?> <?php if (!empty($CanaryProductCom)):?> w-opacity<?endif?>">

        <?if ($show !== null):?>
            <a href="<?= !empty($CanaryProductCom['href']) ? $CanaryProductCom['href'] : '/engagement-rings' ?>" class="w-one-block <?= !empty($show) ? 'w-general-category' : '' ?>">
                <span class="number-step"><?=$index?></span>
                <span class="title">
                <span>SELECT YOUR SETTING </span>
                </span>
                <span class="text">
                Pick the perfect setting from our large collection
                </span>
            </a>

        <?else:?>

            <span class="w-one-block">
                 <span class="number-step"><?=$index?></span>
                <span class="title">
                <span>SELECT YOUR SETTING </span>
                </span>
                <span class="text">
                Pick the perfect setting from our large collection
                </span>
            </span>

        <?endif?>

    </div>

<?}?>


<? function show_jeverly_complect_bloc ($index, $CanaryProductCom = null, $show = null) {?>


    <div class="my-div <?= !empty($show) ? 'active-circle' : '' ?> <?php if (!empty($CanaryProductCom)):?> w-opacity<?endif?>">
        <?if ($show !== null):?>
            <a href="<?= !empty($CanaryProductCom['href']) ? $CanaryProductCom['href'] : '/fine-jewelry' ?>" class="w-one-block <?= !empty($show) ? 'w-general-category' : '' ?>">
                <span class="number-step"><?=$index?></span>
                <span class="title">
                <span>SELECT YOUR JEWELRY </span>
                </span>
                <span class="text">
                Pick the perfect jewelry from our large collection
                </span>
            </a>
        <?else:?>
            <span class="w-one-block">
                 <span class="number-step"><?=$index?></span>
                <span class="title">
                <span>SELECT YOUR JEWELRY </span>
                </span>
                <span class="text">
                Pick the perfect jewelry from our large collection
                </span>
            </span>
        <?endif?>
    </div>

<?}?>



<? function show_complite_complect_bloc ($show=null) {?>


    <div class="my-div <?= !empty($show) ? 'active-circle' : '' ?>" >
        <?if ($show !== null):?>
            <a <?=!empty($show) ? 'href="/complete_diamond"' : 'href="#"'?> class="w-one-block">
                <span class="number-step">3</span>
                <span class="title">
                <span>COMPLETE YOUR RING</span>
                </span>
                <span class="text">
                Free shipping via FedEx® on every order.
                </span>
            </a>
        <?else:?>
            <span class="w-one-block">
                 <span class="number-step">3</span>
                <span class="title">
                <span>COMPLETE YOUR RING</span>
                </span>
                <span class="text">
                Free shipping via FedEx® on every order.
                </span>
            </span>
        <?endif?>
    </div>

<?}?>

<script>
    $(document).ready(function () {
        $(".w-opacity").popover({ trigger: "hover" });

    });

</script>
