
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

        <div class="col-sm-6 col-md-4 <?= !empty($show) ? 'alert-success' : '' ?>">
            <div class="thumbnail">
                <img src="<?=!empty($CanaryDiamontCom) ? $CanaryDiamontCom['img'] : '' ?>" width="100" alt="...">
                <div class="caption">
                    <h3><?=$index?>. Diamond</h3>
                    <p>diamond</p>
                    <p>
                        <?php if (!empty($CanaryDiamontCom)):?>
                            <a href="<?=$CanaryDiamontCom['href'] ?>" class="btn btn-primary" role="button">View</a>
                            <a href="#" class="btn btn-default w-remowe-diamond-complect" role="button">Remove</a>
                        <?endif?>
                    </p>
                </div>
            </div>
        </div>

    <?}?>


    <? function show_product_complect_bloc ($index, $CanaryProductCom = null, $show = null) {?>

        <div class="col-sm-6 col-md-4 <?= !empty($show) ? 'alert-success' : '' ?>">
            <div class="thumbnail">
                <img src="<?=!empty($CanaryProductCom) ? $CanaryProductCom['img'] : '' ?>" alt="...">
                <div class="caption">
                    <h3><?=$index?>. Ring</h3>
                    <p>ring</p>
                    <p>
                        <?php if (!empty($CanaryProductCom)):?>
                            <a href="<?=$CanaryProductCom['href'] ?>" class="btn btn-primary" role="button">View</a>
                            <a href="#" class="btn btn-default w-remowe-product-complect" role="button">Remove</a>
                        <?endif?>
                    </p>
                </div>
            </div>
        </div>

    <?}?>





    <? function show_complite_complect_bloc ($show=null) {?>

        <div class="col-sm-6 col-md-4 <?= !empty($show) ? 'alert-success' : '' ?>">
            <div class="thumbnail">
                <img data-src="holder.js/300x200" alt="...">
                <div class="caption">
                    <h3>3. Complete</h3>
                    <p>complete</p>
                    <p>
                        <?php if (!empty($show)):?>
                            <a href="/complete_diamond" id="w-complide-view" class="btn btn-primary" role="button">View</a>
                        <?endif?>
                    </p>
                </div>
            </div>
        </div>

    <?}?>

</div>