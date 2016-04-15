
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


        <div class="col-md-4 col-sm-4 col-xs-4">
            <a href="#" class="one-block <?= !empty($show) ? 'active' : '' ?>">
                <span class="box-img">
                    <img src="catalog/view/theme/canary/img/img20.png" alt="img">
                </span>
                <span class="title">
                    <span>2.CHOOSE YOUR</span>  SOLITAIRE
                </span>
                <span class="text">
                    from our vast range of certified diamonds, in various carat weights and shapes like Princess, Round, Heart, Pear etc. Just a tip: Round is the most popular shape for a solitaire ring
                </span>

            </a>
            <p>
                <?php if (!empty($CanaryDiamontCom)):?>
                <img src="<?=!empty($CanaryDiamontCom) ? $CanaryDiamontCom['img'] : '' ?>" width="100" alt="...">
                <a href="<?=$CanaryDiamontCom['href'] ?>" class="btn btn-primary" role="button">View</a>
                <a href="#" class="btn btn-default w-remowe-diamond-complect" role="button">Remove</a>
                <?endif?>
            </p>
        </div>


    <?}?>


    <? function show_product_complect_bloc ($index, $CanaryProductCom = null, $show = null) {?>


        <div class="col-md-4 col-sm-4 col-xs-4">
            <a href="#" class="one-block <?= !empty($show) ? 'active' : '' ?>">
                <span class="box-img">
                    <img src="catalog/view/theme/canary/img/img19.png" alt="img">
                </span>
                <span class="title">
                    <span>1.SELECT YOUR</span> SETTING
                </span>
                <span class="text">
                    We offer both white gold or yellow gold either in 4 prong or 6 prongs.
                </span>
            </a>
            <p>
                <?php if (!empty($CanaryProductCom)):?>
                <img src="<?=!empty($CanaryProductCom) ? $CanaryProductCom['img'] : '' ?>" width="100" alt="...">
                <a href="<?=$CanaryProductCom['href'] ?>" class="btn btn-primary" role="button">View</a>
                <a href="#" class="btn btn-default w-remowe-product-complect" role="button">Remove</a>
                <?endif?>
            </p>
        </div>

    <?}?>





    <? function show_complite_complect_bloc ($show=null) {?>

        <div class="col-md-4 col-sm-4 col-xs-4 ">
            <a href="#" class="one-block <?= !empty($show) ? 'active' : '' ?>">
                 <span class="box-img">
                    <img src="catalog/view/theme/canary/img/img21.png" alt="img">
                </span>
                <span class="title">
                    <span>3.COMPLETE YOUR</span> RING
                </span>
                <span class="text">
                    by choosing your ring size. Your ring will be couriered to you.
                </span>
            </a>
            <p>
                <?php if (!empty($show)):?>
                <a href="/complete_diamond" id="w-complide-view" class="btn btn-primary" role="button">View</a>
                <?endif?>
            </p>
        </div>

    <?}?>

</div>