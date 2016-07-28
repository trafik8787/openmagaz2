
<?//dd($wsubcategory)?>
<div class="filter-box clearfix">
    <div class="filter-wrapper padding-b0 clearfix">
        <?if (!empty($wsubcategory)):?>

            <?if ($category_id == 20): //ENGAGEMENT RINGS?>
                <div class="one-line brilliant-style height-inherit w-group-wsubcat">
                    <div class=" btn-group-filter box-color gemstones-box rings-box" data-toggle="buttons">
                        <?php foreach ($wsubcategory as $key => $row):?>
                                <?php

                                    switch ($key) {
                                        case 0:
                                            $brilliant_s = 1;
                                            break;
                                        case 1:
                                            $brilliant_s = 2;
                                            break;
                                        case 2:
                                            $brilliant_s = 7;
                                            break;
                                        case 3:
                                            $brilliant_s = 5;
                                            break;
                                        case 4:
                                            $brilliant_s = 8;
                                            break;
                                        case 5:
                                            $brilliant_s = 3;
                                            break;
                                         case 6:
                                            $brilliant_s = 6;
                                            break;
                                    }
                                ?>

                                <label class="btn btn-filter <?php if ($child_id == $row['cat_id']):?> active <?endif?>">
                                    <input type="radio" class="w-wsubcat" data-href="<?php echo $row['href']?>"> <i class="brilliant-ico brilliant-s<?=$brilliant_s?>"></i>
                                    <br><?php echo $row['name']?>
                                </label>

                        <?endforeach?>
                    </div>
                </div>

            <?elseif($category_id == 69): //WEDDING RINGS?>

                <div class="one-line brilliant-style height-inherit gender-box clearfix">
                    <div class="gender-title clearfix">
                        <div class="title">woman</div>
                        <div class="title">man</div>
                    </div>
                    <div class=" btn-group-filter box-color gemstones-box rings-box" data-toggle="buttons">
                        <label class="btn btn-filter <?php if ($child_id == $wsubcategory[0]['cat_id']):?> active <?endif?>">
                            <input type="radio" name="wedding_rings" class="w-wsubcat" data-href="<?php echo $wsubcategory[0]['href']?>"> <i class="wedding1"></i><br><?php echo $wsubcategory[0]['name']?>
                        </label>
                        <label class="btn btn-filter <?php if ($child_id == $wsubcategory[1]['cat_id']):?> active <?endif?>">
                            <input type="radio" name="wedding_rings" class="w-wsubcat" data-href="<?php echo $wsubcategory[1]['href']?>"> <i class="wedding3"></i><br><?php echo $wsubcategory[1]['name']?>
                        </label>
                        <label class="btn btn-filter <?php if ($child_id == $wsubcategory[2]['cat_id']):?> active <?endif?>">
                            <input type="radio" name="wedding_rings" class="w-wsubcat" data-href="<?php echo $wsubcategory[2]['href']?>"> <i class="wedding5"></i><br><?php echo $wsubcategory[2]['name']?>
                        </label>
                        <label class="btn btn-filter <?php if ($child_id == $wsubcategory[3]['cat_id']):?> active <?endif?>">
                            <input type="radio" name="wedding_rings" class="w-wsubcat" data-href="<?php echo $wsubcategory[3]['href']?>"> <i class="wedding2"></i><br><?php echo $wsubcategory[3]['name']?>
                        </label>


                        <!-- MAN -->
                        <label class="btn btn-filter filter-r <?php if ($child_id == $wsubcategory[6]['cat_id']):?> active <?endif?>">
                            <input type="radio" name="wedding_rings" class="w-wsubcat" data-href="<?php echo $wsubcategory[6]['href']?>"> <i class="wedding7"></i><br><?php echo $wsubcategory[6]['name']?>
                        </label>
                        <label class="btn btn-filter filter-r <?php if ($child_id == $wsubcategory[5]['cat_id']):?> active <?endif?>">
                            <input type="radio" name="wedding_rings" class="w-wsubcat" data-href="<?php echo $wsubcategory[5]['href']?>"> <i class="wedding3"></i><br><?php echo $wsubcategory[5]['name']?>
                        </label>
                        <label class="btn btn-filter filter-r<?php if ($child_id == $wsubcategory[4]['cat_id']):?> active <?endif?>">
                            <input type="radio" name="wedding_rings" class="w-wsubcat" data-href="<?php echo $wsubcategory[4]['href']?>"> <i class="wedding1"></i><br><?php echo $wsubcategory[4]['name']?>
                        </label>


                    </div>
                </div>


            <?elseif($category_id == 82): //FINE JEWERLY?>

                <div class="one-line brilliant-style height-inherit product-p-5 clearfix">
                    <div class=" btn-group-filter box-color gemstones-box rings-box" data-toggle="buttons">
                        <label class="btn btn-filter">
                            <input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[0]['href']?>"><i class="own-b own-b-15"></i><br><?php echo $wsubcategory[0]['name']?>
                        </label>
                        <label class="btn btn-filter">
                            <input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[1]['href']?>"><i class="own-b own-b-9"></i><br><?php echo $wsubcategory[1]['name']?>
                        </label>
                        <label class="btn btn-filter">
                            <input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[2]['href']?>"><i class="own-b own-b-gemstone-earring"></i><br><?php echo $wsubcategory[2]['name']?>
                        </label>

                        <label class="btn btn-filter">
                            <input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[3]['href']?>"> <i class="own-b own-b-13"></i><br><?php echo $wsubcategory[3]['name']?>
                        </label>
                        <label class="btn btn-filter">
                            <input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[4]['href']?>"> <i class="own-b own-b-gemstone-ring"></i><br><?php echo $wsubcategory[4]['name']?>
                        </label>
                        <label class="btn btn-filter">
                            <input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[5]['href']?>"> <i class="own-b own-b-14"></i><br><?php echo $wsubcategory[5]['name']?>
                        </label>
                        <label class="btn btn-filter">
                            <input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[6]['href']?>"> <i class="own-b own-b-12"></i><br><?php echo $wsubcategory[6]['name']?>
                        </label>
                        <label class="btn btn-filter">
                            <input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[7]['href']?>"> <i class="own-b own-b-gemstone-fashion-necklace"></i><br><?php echo $wsubcategory[7]['name']?>
                        </label>
                        <label class="btn btn-filter">
                            <input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[8]['href']?>"> <i class="own-b own-b-diamond-bracelet"></i><br><?php echo $wsubcategory[8]['name']?>
                        </label>
                        <label class="btn btn-filter">
                            <input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[9]['href']?>"> <i class="own-b own-b-gemstone-bracelet"></i><br><?php echo $wsubcategory[9]['name']?>
                        </label>
                    </div>

                </div>

            <?endif?>



        <?endif?>



