
<?//dd($wsubcategory)?>
<div class="filter-box clearfix">
    <div class="filter-wrapper clearfix thumbnail">
        <?if (!empty($wsubcategory)):?>
            <?if ($category_id == 20): //ENGAGEMENT RINGS?>
            <div class="wrapper-filter-close">
                <!--*<div class="filter-row">*-->
                    <!--*<div class="filter-col filter-line-col wide-title">*-->
                        <!--*<div class="filter-col-title">For anyone</div>*-->
                        <!--*<div class="filter-col-options">*-->
                            <!--*<div class=" btn-group-filter box-color gemstones-box rings-box">*-->
                                <!--*<div class="all-line-filter">*-->
                                    <!--*<a href="#" class="active">All</a>*-->
                                    <!--*<a href="#">Women</a>*-->
                                    <!--*<a href="#">Sets for him and her</a>*-->
                                <!--*</div>*-->
                            <!--*</div>*-->
                        <!--*</div>*-->
                    <!--*</div>*-->
                <!--*</div>*-->
                <div class="filter-row">
                    <div class="filter-col wide-title">
                        <div class="filter-col-title">Style</div>
                        <div class="filter-col-options">
                            <div class=" btn-group-filter box-color gemstones-box rings-box" >
                                <div class="all-line-filter">
                                    <a href="/engagement-rings" class="active">All</a>
                                </div>
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
                                <label class="btn btn-filter <?php if ($child_id == $row['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $row['href']?>"><i class="brilliant-ico brilliant-s<?=$brilliant_s?>"></i></a>

                                    <!--*<input type="radio" class="w-wsubcat" data-href="<?php echo $row['href']?>"> <i class="brilliant-ico brilliant-s<?=$brilliant_s?>"></i>*-->
                                    <br>
                                    <a href="<?php echo $row['href']?>"><?php echo $row['name']?></a>
                                </label>



                                <?endforeach?>
                            </div>
                        </div>
                    </div>
                </div>

            <?elseif($category_id == 69): //WEDDING RINGS?>
            <div class="wrapper-filter-close">
                <div class="filter-row stay-table-cell">
                    <div class="filter-col filter-line-col wide-title">
                        <div class="filter-col-title">
                            For anyone
                        </div>
                        <div class="filter-col-options">
                            <div class="all-line-filter">

                                <div class="visible-xs visible-sm">
                                    <a href="/wedding-rings"  <?php if ($child_id == 0):?> class="active" <?endif?>>All</a>
                                    <a class="hidden-xs hidden-sm" href="<?php echo $wsubcategory[0]['href']?>" <?php if ($child_id == $wsubcategory[0]['cat_id'] or $child_id == 72 or $child_id == 74 or $child_id == 75):?> class="active" <?endif?>>Men</a>
                                    <a class="hidden-xs" href="<?php echo $wsubcategory[1]['href']?>" <?php if ($child_id == $wsubcategory[1]['cat_id'] or $child_id == 77 or $child_id == 79 or $child_id == 81 or $child_id == 78):?> class="active" <?endif?>>Women</a>
                                </div>

                                <div class="hidden-xs hidden-sm">
                                    <a href="/wedding-rings"  <?php if ($child_id == 0):?> class="active" <?endif?>>All</a>
                                    <a style="display: inline-block;margin-left: 44px;"  href="<?php echo $wsubcategory[1]['href']?>" <?php if ($child_id == $wsubcategory[1]['cat_id'] or $child_id == 77 or $child_id == 79 or $child_id == 81 or $child_id == 78):?> class="active" <?endif?>>Women</a>
                                </div>
                                <!--*<a href="#" class="visible-xs-inline-block">Sets for him and her</a>*-->

                            </div>
                        </div>
                    </div>
                    <div class="filter-col filter-line-col hidden-xs">
                            <div class="filter-col-options">
                                <div class="all-line-filter" style="margin-left: 160px;">
                                    <a href="<?php echo $wsubcategory[0]['href']?>" <?php if ($child_id == $wsubcategory[0]['cat_id'] or $child_id == 72 or $child_id == 74 or $child_id == 75):?> class="active" <?endif?>>Men</a>
                                </div>
                            </div>
                            <!--*<div class="filter-col-options">*-->
                                <!--*<div class="all-line-filter">*-->
                                    <!--*<a href="#">Sets for him and her</a>*-->
                                <!--*</div>*-->
                            <!--*</div>*-->
                    </div>
                </div>


                <div class="filter-row stay-table-cell">
                    <div class="filter-col wide-title">
                        <div class="filter-col-title">
                            <div class="hidden-xs">
                                Style
                            </div>
                            <div class="visible-xs all-line-filter">
                                <a href="<?php echo $wsubcategory[1]['href']?>" <?php if ($child_id == $wsubcategory[1]['cat_id'] or $child_id == 77 or $child_id == 79 or $child_id == 81 or $child_id == 78):?> class="active" <?endif?>>Women</a>
                            </div>
                        </div>
                        <div class="filter-col-options">
                            <div class=" btn-group-filter box-color gemstones-box rings-box filter-rings">

                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[2]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[2]['href']?>" class="filter-option-img-wrapper"><i class="wedding1"></i></a>
                                    <span>Classic</span>
                                </label>
                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[3]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[3]['href']?>" class="filter-option-img-wrapper"><i class="wedding3"></i></a>
                                    <span>Diamond</span>
                                </label>
                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[4]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[4]['href']?>" class="filter-option-img-wrapper"><i class="wedding5"></i></a>
                                    <span>Eternity</span>
                                </label>
                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[5]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[5]['href']?>" class="filter-option-img-wrapper"><i class="wedding2"></i></a>
                                    <span>Stackable</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="filter-col empty-title wide-blocks">
                        <div class="filter-col-title">
                            <div class="visible-xs all-line-filter">
                                <a href="<?php echo $wsubcategory[0]['href']?>" <?php if ($child_id == $wsubcategory[0]['cat_id'] or $child_id == 72 or $child_id == 74 or $child_id == 75):?> class="active" <?endif?>>Men</a>
                            </div>
                        </div>
                        <div class="filter-col-options">
                            <div class=" btn-group-filter box-color gemstones-box rings-box filter-rings">

                                <label class="btn btn-filter<?php if ($child_id == $wsubcategory[6]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[6]['href']?>" class="filter-option-img-wrapper"><i class="wedding1"></i></a>
                                    <span>Classic</span>
                                </label>
                                <label class="btn btn-filter<?php if ($child_id == $wsubcategory[7]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[7]['href']?>" class="filter-option-img-wrapper"><i class="wedding3"></i></a>
                                    <span>Diamond</span>
                                </label>
                                <label class="btn btn-filter<?php if ($child_id == $wsubcategory[8]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[8]['href']?>" class="filter-option-img-wrapper"><i class="wedding7"></i></a>
                                    <span>Modern</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>




            <?elseif($category_id == 82): //FINE JEWERLY?>
            <div class="wrapper-filter-close">
                <div class="filter-row">
                    <div class="filter-col filter-line-col wide-title">
                        <div class="filter-col-title">
                            TYPE
                        </div>
                        <div class="filter-col-options">
                            <div class="all-line-filter">
                                <a href="/fine_jeverly" class="active">All</a>
                            </div>

                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[0]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[0]['href']?>"><i class="own-b own-b-16"></i></a>
                                    <!--*<input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[0]['href']?>"><i class="own-b own-b-16"></i>*-->
                                    <br>Diamond <br>studs
                                </label>
                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[1]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[1]['href']?>"><i class="own-b own-b-9"></i></a>
                                    <!--*<input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[1]['href']?>"><i class="own-b own-b-9"></i>*-->
                                    <br>Diamond <br>earrings
                                </label>
                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[2]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[2]['href']?>&filter=7"><i class="own-b own-b-gemstone-earring"></i></a>
                                    <!--*<input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[2]['href']?>&filter=7"><i class="own-b own-b-gemstone-earring"></i>*-->
                                    <br>Gemstone <br>earrings
                                </label>

                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[3]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[3]['href']?>"><i class="own-b own-b-13"></i></a>
                                    <!--*<input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[3]['href']?>"> <i class="own-b own-b-13"></i>*-->
                                    <br>Diamond <br>rings
                                </label>
                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[4]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[4]['href']?>&filter=7"><i class="own-b own-b-15"></i></a>
                                    <!--*<input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[4]['href']?>&filter=7"> <i class="own-b own-b-15"></i>*-->
                                    <br>Gemstone <br>rings
                                </label>
                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[5]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[5]['href']?>"><i class="own-b own-b-14"></i></a>
                                    <!--*<input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[5]['href']?>"> <i class="own-b own-b-14"></i>*-->
                                    <br>Diamond <br>pendants
                                </label>
                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[6]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[6]['href']?>&filter=7"><i class="own-b own-b-gemstone-fashion-necklace"></i></a>
                                    <!--*<input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[6]['href']?>&filter=7"> <i class="own-b own-b-gemstone-fashion-necklace"></i>*-->
                                    <br>Gemstone <br>pendants
                                </label>
                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[7]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[7]['href']?>"><i class="own-b own-b-12"></i></a>
                                    <!--*<input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[7]['href']?>"> <i class="own-b own-b-12"></i>*-->
                                    <br>Fashion <br>necklaces
                                </label>
                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[8]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[8]['href']?>"><i class="own-b own-b-diamond-bracelet"></i></a>
                                    <!--*<input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[8]['href']?>"> <i class="own-b own-b-diamond-bracelet"></i>*-->
                                    <br>Diamond <br>bracelets
                                </label>
                                <label class="btn btn-filter <?php if ($child_id == $wsubcategory[9]['cat_id']):?> active <?endif?> brackets">
                                    <a href="<?php echo $wsubcategory[9]['href']?>"><i class="own-b own-b-gemstone-bracelet"></i></a>
                                    <!--*<input type="radio" name="fine_jewerly" class="w-wsubcat" data-href="<?php echo $wsubcategory[9]['href']?>"> <i class="own-b own-b-gemstone-bracelet"></i>*-->
                                    <br>Gemstone <br>bracelets
                                </label>

                        </div>
                    </div>
                </div>



            <?endif?>



        <?endif?>



