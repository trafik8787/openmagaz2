
<?//dd($CanaryProductCom)?>
<?//dd($CanaryDiamontCom)?>

<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="w-navigate-circle clearfix">
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
        </div>
    </div>
</div>




<?function show_diamond_complect_bloc ($index, $CanaryDiamontCom = null, $show = null) {?>

<?//dd($show)?>

<div class="my-div <?= !empty($show) ? 'active-circle' : '' ?> <?php if (!empty($CanaryDiamontCom)):?> w-opacity<?endif?>" data-trigger='hover' data-toggle="popover" data-placement="top" data-html='true' data-content='Briliant is selected it will be built into your ring. To vybratkoltso this Briliant go to the next step.' >
<a href="<?= !empty($show) ? '/diamonds' : $CanaryDiamontCom['href']?>"  class="w-one-block  <?= !empty($show) ? 'w-general-category' : '' ?>">
<span class="number-step"><?=$index?></span>
<span class="title hidden-xs">
<span>SELECT YOUR DIAMOND</span>
</span>
<span class="text hidden-xs">
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


<? function show_product_complect_bloc ($index, $CanaryProductCom = null, $show = null) {?>


<div class="my-div <?= !empty($show) ? 'active-circle' : '' ?> <?php if (!empty($CanaryProductCom)):?> w-opacity<?endif?>" data-toggle="popover" data-placement="top" data-html='true' data-content='You have chosen a ring, please go to the next step.'>

<a href="<?= !empty($show) ? '/engagement-rings' : $CanaryProductCom['href']?>" class="w-one-block <?= !empty($show) ? 'w-general-category' : '' ?>">
<span class="number-step"><?=$index?></span>
<span class="title hidden-xs">
<span>SELECT YOUR SETTING </span>
</span>
<span class="text hidden-xs">
Pick the perfect setting from our large collection
</span>
<!--*<?php if (!empty($CanaryProductCom)):?>*-->
<!--*<div>*-->
<!--*<img src="<?=!empty($CanaryProductCom) ? $CanaryProductCom['img'] : '' ?>" width="50" alt="...">*-->
<!--*<button data-href="<?=$CanaryProductCom['href'] ?>" class="step-eyes w-link-complect-bloc"></button>*-->
<!--*<button class="step-close w-remowe-product-complect"></button>*-->
<!--*</div>*-->
<!--*<?endif?>*-->
</a>

</div>

<?}?>





<? function show_complite_complect_bloc ($show=null) {?>


<div class="my-div <?= !empty($show) ? 'active-circle' : '' ?>" >
<a <?=!empty($show) ? 'href="/complete_diamond" id="w-complide-view"' : 'href="#"'?> class="w-one-block">
<span class="number-step">3</span>
<span class="title hidden-xs">
<span>COMPLETE YOUR RING</span>
</span>
<span class="text hidden-xs">
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
