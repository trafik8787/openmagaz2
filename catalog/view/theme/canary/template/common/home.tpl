
<?php echo $header; ?>
<?//dd($categories)?>
<!--*center-bl*-->
<main class="w-general-container">
    <section class="containaer-home">
        <div class="visible-xs">
            <?=$home_banner?>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12 padding-0">
                <div class="home-top-baneer">
                    <div class="row">
                        <div class="center-bl w-content-baner clearfix">
                            <div class="col-md-6 col-sm-5">
                                <div class="w-button-in-baner">
                                    <a href="/diamonds" class="btn w-btn-orange btn-lg" role="button"><div class="icons-diamond_icon"></div>Start With a Diamond</a>
                                    <a href="/engagement-rings" class="btn w-btn-orange btn-lg" role="button"><div class="icons-rings_icon"></div>Start With a Setting</a>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-7 hidden-xs">
                                <?=$home_top_slider?>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="hidden-xs">
            <?=$home_banner?>
        </div>

        <?=$home_best_quality_and_service?>



        <?=$home_bloc_category?>

        <div class="visible-xs">
            <?=$home_top_slider?>
        </div>



        <?=$home_search_for_diamond?>



        <?php echo $content_bottom; ?>

    </section>






    <div class="panel-group brilliant-panel-main" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m1" aria-expanded="false">
                        DIAMONDS
                    </a>
                </h4>
            </div>
            <div id="collapse-m1" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <ul class="brilliant-style clearfix">
                        <li>
                            <a href="/diamonds?&shape=Round" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s1"></i></span><span>Round Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Princess" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s2"></i></span><span>Princess Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Emerald" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s10"></i></i></span><span>Emerald Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Asscher" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s3"></i></span><span>Asscher Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Oval" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s6"></i></span><span>Oval Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Radiant" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s7"></i></span><span>Radiant Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Pear" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s8"></i></span><span>Pear Shaped</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Heart" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s9"></i></span><span>Heart Shaped</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Marquise" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s5"></i></span><span>Marquise Cut</span></a>
                        </li>
                        <li>
                            <a href="/diamonds?&shape=Cushion" class="w-general-category"><span class="box-ico"><i class="brilliant-ico2 brilliant-s4"></i></span><span>Cushion Cut</span></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m2" aria-expanded="false">
                        <?php echo $categories[1]['name']?><!--*ENGAGEMENT RINGS*-->
                    </a>
                </h4>
            </div>
            <div id="collapse-m2" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <ul class="brilliant-style">

                        <li>
                            <a href="<?php echo $categories[1]['children'][0]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s1"></i></span><span><?php echo $categories[1]['children'][0]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][1]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s2"></i></span><span><?php echo $categories[1]['children'][1]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][2]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s7"></i></span><span><?php echo $categories[1]['children'][2]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][3]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s5"></i></span><span><?php echo $categories[1]['children'][3]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][4]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s8"></i></span><span><?php echo $categories[1]['children'][4]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][5]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s3"></i></span><span><?php echo $categories[1]['children'][5]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[1]['children'][6]['href']?>" class="w-general-category"><span class="box-ico"><i class="brilliant-ico brilliant-s6"></i></span><span><?php echo $categories[1]['children'][6]['name']?></span></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m3" aria-expanded="false">
                        WEDDING RINGS
                    </a>
                </h4>
            </div>
            <div id="collapse-m3" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <div class="title">woman</div>
                    <ul class="brilliant-style brilliant-style-long ul-first-drop clearfix">
                        <li>
                            <a href="<?php echo $categories[2]['children'][0]['href']?>" class="w-general-category"><i class="wedding1"></i><?php echo $categories[2]['children'][0]['name']?></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[2]['children'][1]['href']?>" class="w-general-category"><i class="wedding3"></i><?php echo $categories[2]['children'][1]['name']?></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[2]['children'][2]['href']?>" class="w-general-category"><i class="wedding5"></i><?php echo $categories[2]['children'][2]['name']?></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[2]['children'][3]['href']?>" class="w-general-category"><i class="wedding2"></i><?php echo $categories[2]['children'][3]['name']?></a>
                        </li>

                    </ul>
                    <div class="title">man</div>
                    <ul class="brilliant-style brilliant-style-long ul-first-drop clearfix">
                        <li>
                            <a href="<?php echo $categories[2]['children'][4]['href']?>" class="w-general-category"><i class="wedding1"></i><?php echo $categories[2]['children'][4]['name']?></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[2]['children'][5]['href']?>" class="w-general-category"><i class="wedding3"></i><?php echo $categories[2]['children'][5]['name']?></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[2]['children'][6]['href']?>" class="w-general-category"><i class="wedding7"></i><?php echo $categories[2]['children'][6]['name']?></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m5" aria-expanded="false">
                        FINE JEWELRY
                    </a>
                </h4>
            </div>
            <div id="collapse-m5" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <div class="title">EARRINGS</div>
                    <ul class="style-br-long ul-first-drop fine-jewerly-ul">

                        <li>
                            <a href="<?php echo $categories[3]['children'][0]['href']?>"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-15"></i></span> <span><?php echo $categories[3]['children'][0]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][1]['href']?>"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-9"></i></span> <span><?php echo $categories[3]['children'][1]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][2]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-earring"></i></span> <span><?php echo $categories[3]['children'][2]['name']?></span></a>
                        </li>

                    </ul>
                    <div class="title">Necklaces</div>
                    <ul class="style-br-long ul-first-drop fine-jewerly-ul">

                        <li>
                            <a href="<?php echo $categories[3]['children'][5]['href']?>" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-14" ></i></span> <span><?php echo $categories[3]['children'][5]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][6]['href']?>&filter=7" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-12" ></i></span> <span><?php echo $categories[3]['children'][6]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][7]['href']?>" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-fashion-necklace" ></i></span> <span><?php echo $categories[3]['children'][7]['name']?></span></a>
                        </li>

                    </ul>

                    <div class="title">Rings</div>
                    <ul class="style-br-long ul-first-drop fine-jewerly-ul">

                        <li>
                            <a href="<?php echo $categories[3]['children'][3]['href']?>"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-13"></i></span> <span><?php echo $categories[3]['children'][3]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][4]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-gemstone-ring"></i></span> <span><?php echo $categories[3]['children'][4]['name']?></span></a>
                        </li>

                    </ul>
                    <div class="title">Bracelets</div>
                    <ul class="style-br-long ul-first-drop fine-jewerly-ul">

                        <li>
                            <a href="<?php echo $categories[3]['children'][8]['href']?>"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-diamond-bracelet"></i></span> <span><?php echo $categories[3]['children'][8]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][9]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-gemstone-bracelet"></i></span> <span><?php echo $categories[3]['children'][9]['name']?></span></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading collapse-add" role="tab">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-m6" aria-expanded="false">
                        <?php echo $categories[4]['name']?>
                    </a>
                </h4>
            </div>
            <div id="collapse-m6" class="panel-collapse collapse" role="tabpanel">
                <div class="panel-body">
                    <div class="title">Search Gemstones Gallery</div>
                    <ul class="brilliant-style gemstones-box">
                        <li>
                            <a href="/gemstones&stone_type=1"><i class="gemstones gemstones1"></i><span>blue sapphire</span></a>
                        </li>
                        <li>
                            <a href="/gemstones&stone_type=5"><i class="gemstones gemstones2"></i><span>pink sapphire</span></a>
                        </li>
                        <li>
                            <a href="/gemstones&stone_type=4"><i class="gemstones gemstones3"></i><span>yellow sapphire</span></a>
                        </li>
                        <li>
                            <a href="/gemstones&stone_type=2"><i class="gemstones gemstones4"></i><span>red ruby</span></a>
                        </li>
                        <li>
                            <a href="/gemstones&stone_type=3"><i class="gemstones gemstones5"></i><span>green emerald</span></a>
                        </li>

                    </ul>
                    <div class="title">Gemstone Jewelry</div>
                    <ul class="style-br-long ul-first-drop">
                        <li>
                            <a href="<?php echo $categories[3]['children'][6]['href']?>&filter=7" class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-fashion-necklace" style="background-position-y: -8px;background-position-x: 3px;"></i></span> <span><?php echo $categories[3]['children'][6]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][4]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-15" style="background-position-y: 6px;"></i></span> <span><?php echo $categories[3]['children'][4]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][2]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico2"><i class="own-b own-b-gemstone-earring" style="background-position-y: -12px;"></i></span> <span><?php echo $categories[3]['children'][2]['name']?></span></a>
                        </li>
                        <li>
                            <a href="<?php echo $categories[3]['children'][9]['href']?>&filter=7"  class="w-general-category"><span class="wrap-ico3"><i class="own-b own-b-gemstone-bracelet"></i></span> <span><?php echo $categories[3]['children'][9]['name']?></span></a>
                        </li>
                    </ul>

                </div>
            </div>
        </div>

    </div>
    <ul class="mobile-link-menu">
        <li><a href="/education">EDUCATION</a></li>
        <li><a href="/faq">FAQ</a></li>
        <li><a href="/about_us">ABOUT</a></li>
    </ul>


</main>
<?php echo $footer; ?>