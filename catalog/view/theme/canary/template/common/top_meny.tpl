<?//dd($categories[2]['children'])?>
<div class="menu">
    <ul id="horizontal">
        <li class="dropdown-b"><!--engagement rings-->
            <a href="<?php echo $categories[1]['href']?>" class="w-general-category <?=$categories[1]['class_activ']?>"><span></span><?php echo $categories[1]['name']?></a>
            <div class="dropdown-inside">
                <div class="title">engagement setting rings</div>
                <ul class="brilliant-style">
                    <li><a href="<?php echo $categories[1]['children'][0]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s1"></i><br/><?php echo $categories[1]['children'][0]['name']?></a></li>
                    <li><a href="<?php echo $categories[1]['children'][1]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s2"></i><br/><?php echo $categories[1]['children'][1]['name']?></a></li>
                    <li><a href="<?php echo $categories[1]['children'][2]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s7"></i><br/><?php echo $categories[1]['children'][2]['name']?></a></li>
                    <li><a href="<?php echo $categories[1]['children'][3]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s5"></i><br/><?php echo $categories[1]['children'][3]['name']?></a></li>
                    <li><a href="<?php echo $categories[1]['children'][4]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s8"></i><br/><?php echo $categories[1]['children'][4]['name']?></a></li>
                    <li><a href="<?php echo $categories[1]['children'][5]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s3"></i><br/><?php echo $categories[1]['children'][5]['name']?></a></li>
                    <li><a href="<?php echo $categories[1]['children'][6]['href']?>" class="w-general-category"><i class="brilliant-ico brilliant-s6"></i><br/><?php echo $categories[1]['children'][6]['name']?></a></li>
                    <li><a href="<?php echo $categories[1]['href']?>" class="w-general-category"><i class="all-menu-i"></i><br/>All</a></li>
                </ul>
                <div class="title">browse settings by metal</div>
                <div class="clearfix">
                    <div class="col-xs-7">
                        <ul class="w-checed-list engagement-list-colorfull">
                            <li class="list__item btn"><a href="/engagement-rings&filter=13" class="label--checkbox"><span><span class="number-circle"></span>Platinum</span></a></li>
                            <li class="list__item btn"><a href="/engagement-rings&filter=11" class="label--checkbox"><span class="yellow-g"><span class="number-circle">14</span>Yellow Gold</span></a></li>
                            <li class="list__item btn"><a href="/engagement-rings&filter=12" class="label--checkbox"><span class="yellow-g"><span class="number-circle">18</span>Yellow Gold</span></a></li>
                            <li class="list__item btn"><a href="/engagement-rings&filter=6" class="label--checkbox"><span><span class="number-circle">14</span>White Gold</span></a></li>
                            <li class="list__item btn"><a href="/engagement-rings&filter=5" class="label--checkbox"><span><span class="number-circle">18</span>White Gold</span></a></li>
                            <li class="list__item btn"><a href="/engagement-rings&filter=14" class="label--checkbox"><span class="rose-g"><span class="number-circle">14</span>Rose Gold</span></a></li>
                            <li class="list__item btn"><a href="/engagement-rings&filter=15" class="label--checkbox"><span class="rose-g"><span class="number-circle">18</span>Rose Gold</span></a></li>
                            <li class="list__item btn"><a href="/engagement-rings&filter=16" class="label--checkbox"><span><span class="number-circle"></span>Palladium</span></a></li>
                            <li class="list__item btn all-label"><a href="/engagement-rings&filter=7" class="label--checkbox"><i class="all-menu-i"></i><span>All</span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="engagement-img-menu clearfix">
                    <img src="/catalog/view/theme/canary/img/demo_new_template/meny-engagament.jpg" alt="img" class="img-under-style">
                </div>
            </div>
        </li>
        <li class="dropdown-b"><!--*WEDDING RINGS*-->
            <a href="<?php echo $categories[2]['href']?>" class="w-general-category <?=$categories[2]['class_activ']?>"><span></span><?php echo $categories[2]['name']?></a>
            <div class="dropdown-inside">
                <div class="clearfix">
                    <div class="col-md-8 col-sm-8 col-xs-8">
                        <div class="title">BROWSE WEDDING RINGS FOR WOMAN</div><!--*woman*-->
                        <ul class="brilliant-style brilliant-style-long ul-first-drop">
                            <li><a href="<?php echo $categories[2]['children'][2]['href']?>" class="w-general-category"><i class="wedding1"></i><br/>CLASSIC</a></li>
                            <li><a href="<?php echo $categories[2]['children'][3]['href']?>" class="w-general-category"><i class="wedding3"></i><br/>DIAMOND</a></li>
                            <li><a href="<?php echo $categories[2]['children'][4]['href']?>" class="w-general-category"><i class="wedding5"></i><br/>ETERNITY</a></li>
                            <li><a href="<?php echo $categories[2]['children'][5]['href']?>" class="w-general-category"><i class="wedding2"></i><br/>STACKABLE</a></li>
                            <li><a href="<?=$categories[2]['children'][1]['href']?>" class="w-general-category"><i class="all-menu-i"></i><br>All</a></li>
                        </ul>
                        <div class="title">BROWSE WEDDING RINGS FOR MEN</div><!--*men*-->
                        <ul class="brilliant-style brilliant-style-long ul-first-drop" style="width: 73%">
                            <?if (!empty($categories[2]['children'][4])):?>
                                <li><a href="<?php echo $categories[2]['children'][6]['href']?>" class="w-general-category"><i class="wedding1"></i><br/>CLASSIC</a></li>
                            <?endif?>
                            <?if (!empty($categories[2]['children'][5])):?>
                                <li><a href="<?php echo $categories[2]['children'][7]['href']?>" class="w-general-category"><i class="wedding3"></i><br/>DIAMOND</a></li>
                            <?endif?>
                            <?if (!empty($categories[2]['children'][6])):?>
                                <li><a href="<?php echo $categories[2]['children'][8]['href']?>" class="w-general-category"><i class="wedding7"></i><br/>MODERN</a></li>
                                <li><a href="<?=$categories[2]['children'][0]['href']?>" class="w-general-category"><i class="all-menu-i"></i><br>All</a></li>
                            <?endif?>
                        </ul>
                        <div class="set-for-him">
                            <!--*<a href="#"><div class="icons-rings_icon"></div><span>Sets for him and her</span></a>*-->
                        </div>
                    </div>
                </div>
                <div class="menu-wedding-img">
                    <img src="/catalog/view/theme/canary/img/demo_new_template/meny-wedingrings.jpg" alt="img" class="img-under-style">
                </div>
            </div>
        </li>
        <li class="dropdown-b"><!--*DIAMONDS*-->
            <a href="<?php echo $categories[0]['href']?>" class="w-general-category <?=$categories[0]['class_activ']?>"><span></span><?php echo $categories[0]['name']?></a>
            <div class="dropdown-inside">
                <div class="title">Browse diamonds by share</div>
                <ul class="brilliant-style">
                    <li><a href="/diamonds?&shape=Round" class="w-general-category"><i class="brilliant-ico2 brilliant-s1"></i><br/>Round</a></li>
                    <li><a href="/diamonds?&shape=Princess" class="w-general-category"><i class="brilliant-ico2 brilliant-s2"></i><br/>Princess</a></li>
                    <li><a href="/diamonds?&shape=Emerald" class="w-general-category"><i class="brilliant-ico2 brilliant-s10"></i><br/>Emerald</a></li>
                    <li><a href="/diamonds?&shape=Asscher" class="w-general-category"><i class="brilliant-ico2 brilliant-s3"></i><br/>Asscher</a></li>
                    <li><a href="/diamonds?&shape=Oval" class="w-general-category"><i class="brilliant-ico2 brilliant-s6"></i><br/>Oval</a></li>
                    <li><a href="/diamonds?&shape=Radiant" class="w-general-category"><i class="brilliant-ico2 brilliant-s7"></i><br/>Radiant</a></li>
                    <li><a href="/diamonds?&shape=Pear" class="w-general-category"><i class="brilliant-ico2 brilliant-s8"></i><br/>Pear</a></li>
                    <li><a href="/diamonds?&shape=Heart" class="w-general-category"><i class="brilliant-ico2 brilliant-s9"></i><br/>Heart</a></li>
                    <li><a href="/diamonds?&shape=Marquise" class="w-general-category"><i class="brilliant-ico2 brilliant-s5"></i><br/>Marquise</a></li>
                    <li><a href="/diamonds?&shape=Cushion" class="w-general-category"><i class="brilliant-ico2 brilliant-s4"></i><br/>Cushion</a></li>
                    <li><a href="<?php echo $categories[0]['href']?>" class="w-general-category"><i class="all-menu-i"></i><br>All</a></li>
                </ul>
                <div class="clearfix">
                    <div class="jewelry-wrapper">
                        <div class="title">Browse diamonds jewelry</div>
                        <ul class="brilliant-style jewelry-style1">
                            <li><a href="/engagement-rings" class="w-general-category"><span><i class="own-b own-b-7"></i></span><br/>Diamond<br/>engagement rings</a></li>
                            <li><a href="/fine-jewelry/diamond_studs" class="w-general-category"><span><i class="own-b own-b-1"></i></span><br/>Diamond<br/>studs</a></li>
                            <li><a href="/fine-jewelry/diamond_pendants" class="w-general-category"><span><i class="own-b own-b-4"></i></span><br/>Diamond<br/>pendant</a></li>
                        </ul>
                    </div>
                </div>
                <div class="jewelry-img clearfix">
                    <img src="/catalog/view/theme/canary/img/img14.png" alt="img" class="img-under-style">
                </div>
            </div>
        </li>
        <li class="dropdown-b" data-target="menu4">
            <a href="<?php echo $categories[4]['href']?>" class="w-general-category <?=$categories[4]['class_activ']?>"><span></span><?php echo $categories[4]['name']?></a>
            <div class="dropdown-inside">
                <div class="clearfix">
                    <div class="col-xs-3">
                        <div class="title">Browse settings by stone</div>
                        <ul class="brilliant-style gemstones-box">
                            <li><a href="<?php echo $categories[4]['href']?>&stone_type_gem=1"><i class="gemstones gemstones1"></i><span>blue sapphire</span></a></li>
                            <li><a href="<?php echo $categories[4]['href']?>&stone_type_gem=5"><i class="gemstones gemstones2"></i><span>pink sapphire</span></a></li>
                            <li><a href="<?php echo $categories[4]['href']?>&stone_type_gem=4"><i class="gemstones gemstones3"></i><span>yellow sapphire</span></a></li>
                            <li><a href="<?php echo $categories[4]['href']?>&stone_type_gem=2"><i class="gemstones gemstones4"></i><span>red ruby</span></a></li>
                            <li><a href="<?php echo $categories[4]['href']?>&stone_type_gem=3"><i class="gemstones gemstones5"></i><span>green emerald</span></a></li>
                            <li><a href="<?php echo $categories[4]['href']?>"><i class="all-menu-i"></i><span>All</span></a></li>
                        </ul>
                    </div>
                    <div class="col-xs-3">
                        <div class="title">Browse settings by color</div>
                        <ul class="color-menu-block">
                            <li class="blue-green"><a href="<?php echo $categories[4]['href']?>&primary_color_gem=0,1"><span></span>Blue Green</a></li>
                            <li class="blue"><a href="<?php echo $categories[4]['href']?>&primary_color_gem=2"><span></span>Blue</a></li>
                            <li class="green"><a href="<?php echo $categories[4]['href']?>&primary_color_gem=3"><span></span>Green</a></li>
                            <li class="pink"><a href="<?php echo $categories[4]['href']?>&primary_color_gem=8"><span></span>Pink</a></li>
                            <li class="red"><a href="<?php echo $categories[4]['href']?>&primary_color_gem=10"><span></span>Red</a></li>
                            <li><a href="<?php echo $categories[4]['href']?>&primary_color_gem=0"><i class="all-menu-i"></i>All</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-4">
                        <div class="title">Browse settings by shape</div>
                        <ul class="brilliant-style brilliant-style-f4 clearfix">
                            <li><a href="<?php echo $categories[4]['href']?>&shape_gem=12" class="w-general-category"><i class="brilliant-ico2 brilliant-s1"></i><br>Round</a></li>
                            <li><a href="<?php echo $categories[4]['href']?>&shape_gem=9" class="w-general-category"><i class="brilliant-ico2 brilliant-s2"></i><br>Princess</a></li>
                            <li><a href="<?php echo $categories[4]['href']?>&shape_gem=10" class="w-general-category"><i class="brilliant-ico2 brilliant-s8"></i><br>Pear Shape</a></li>
                            <li><a href="<?php echo $categories[4]['href']?>&shape_gem=8" class="w-general-category"><i class="brilliant-ico2 brilliant-s6"></i><br>Oval</a></li>
                            <li><a href="<?php echo $categories[4]['href']?>&shape_gem=11" class="w-general-category"><i class="brilliant-ico2 brilliant-s7"></i><br>Radiant</a></li>
                            <li><a href="<?php echo $categories[4]['href']?>&shape_gem=0" class="w-general-category"><i class="all-menu-i"></i><br>All</a></li>
                        </ul>
                    </div>
                    <img src="/catalog/view/theme/canary/img/demo_new_template/meny-gemstones.jpg" alt="img" class="img-under-style">
                </div>
            </div>
        </li>
        <li class="dropdown-b">
            <a href="<?php echo $categories[3]['href']?>" class="w-general-category <?=$categories[3]['class_activ']?>"><span></span><?php echo $categories[3]['name']?></a>
            <div class="dropdown-inside">
                <div class="clearfix">
                    <div class="col-md-4 col-sm-4 col-xs-4">
                        <div class="title">Browse jewelry by type</div>
                        <ul class="style-br-long ul-first-drop">
                            <li><a href="<?php echo $categories[3]['children'][4]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-15" style="background-position-y: 5px; background-position-x: -4px;"></i></span> <span><?php echo $categories[3]['children'][4]['name']?></span></a></li>
                            <li><a href="<?php echo $categories[3]['children'][2]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-earring" style="background-position-y: -12px;"></i></span> <span><?php echo $categories[3]['children'][2]['name']?></span></a></li>
                            <li><a href="<?php echo $categories[3]['children'][6]['href']?>&filter=7" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-fashion-necklace" style="background-position-y: -8px;"></i></span> <span><?php echo $categories[3]['children'][6]['name']?></span></a></li>
                            <li><a href="<?php echo $categories[3]['children'][9]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-gemstone-bracelet"></i></span> <span><?php echo $categories[3]['children'][9]['name']?></span></a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-4">
                        <div class="title">Browse popular jewelry</div>
                        <ul class="style-br-long w-margin-li">
                            <li><a href="<?php echo $categories[3]['children'][1]['href']?>" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-9" style="background-position-y: 1px;"></i></span> <span><?php echo $categories[3]['children'][1]['name']?></span></a></li>
                            <li><a href="<?php echo $categories[3]['children'][10]['href']?>" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-12" style="background-position-y: -7px;"></i></span> <span><?php echo $categories[3]['children'][10]['name']?></span></a></li>
                            <li><a href="<?php echo $categories[3]['children'][3]['href']?>"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-13" style="background-position-y: 10px;"></i></span> <span><?php echo $categories[3]['children'][3]['name']?></span></a></li>
                            <li><a href="<?php echo $categories[3]['children'][0]['href']?>"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-16" style="background-position-y: 0;" ></i></span> <span><?php echo $categories[3]['children'][0]['name']?></span></a></li>
                            <li><a href="<?php echo $categories[3]['children'][8]['href']?>"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-diamond-bracelet"></i></span> <span><?php echo $categories[3]['children'][8]['name']?></span></a></li>
                            <li><a href="<?php echo $categories[3]['href']?>" class="w-general-category"><span class="wrap-ico2"><i class="all-menu-i"></i></span> <span>All</span></a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-4 text-right">
                        <img src="/catalog/view/theme/canary/img/demo_new_template/meny-jewerly.jpg" alt="img" class="img-under-style">
                    </div>
                </div>
            </div>
        </li>
        <li>
            <!--*<a href="/education"  class="w-general-category">INFO</a>*-->
            <a href="#"  class="w-general-category"></a>
        </li>
    </ul>
</div>
<?//dd($categories[3])?>