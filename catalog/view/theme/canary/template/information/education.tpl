<?php echo !empty($header) ? $header : '' ?>

<main class="w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <li> » </li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-12 padding-0">
                    <a href=""><img src="<?=get_baners_top_random()?>" class="bread-baner" ></a>
                </div>
            </div>
        </div>
    </div>
    <section class="static-page">


        <div class="center-bl education-center clearfix">
            <div class="title-education">Education Center</div>
            <div class="clearfix">
                <div class="one-block">
                    <div class="box-img">
                        <a href="/education_find#diamonds"><img src="catalog/view/theme/canary/img/shutterstock_337174439.jpg" alt="img"></a>
                    </div>
                    <div class="education-block">
                        <div class="title-e"><a href="/education_find#diamonds">LOOSE DIAMONDS</a></div>
                        Purchasing a diamond is a big decision! We advise you to education yourself on the many aspects of diamonds to make the best decision for you. In our education center you will learn about more than just the 4C’s (cut, color, clarity, carat weight), but every aspect that contributes to a diamond’s beauty and value.
                    </div>
                </div>
                <div class="one-block">
                    <div class="box-img">
                        <a href="/education_find#engagement_rings"><img src="catalog/view/theme/canary/img/engagement rings.jpg" alt="img"></a>
                    </div>
                    <div class="education-block">
                        <div class="title-e"><a href="/education_find#engagement_rings">ENGAGEMENT RINGS</a></div>
                        When selecting the perfect engagement ring setting, there are many things to consider. Our education center will educate you on metal options and the advantages of each, as well as the variety of engagement ring styles available to choose from. The engagement ring you pick will ultimately be determined by your budget and a reflection of your personal style.
                    </div>
                </div>
                <div class="one-block">
                    <div class="box-img">
                        <a href="/education_find#gamestones"><img src="catalog/view/theme/canary/img/gemstones.jpg" alt="img"></a>
                    </div>
                    <div class="education-block">
                        <div class="title-e"><a href="/education_find#gamestones">GEMSTONES</a></div>
                        Gemstone jewelry is the perfect way to express your style in a beautiful and unique way. From the rich blue in sapphires to the romanic red in rubies to the elegant purple in amethyst, gemstone jewelry lets you add stunning color to your jewelry collection that is personal to you. Our education center will help you understand gemstones and how they each vary with their color and clarity characteristics. Each gemstone is unique and educating yourself on their special characteristics will help you decide which gemstone is perfect for your collection.
                    </div>
                </div>
                <div class="one-block">
                    <div class="box-img">
                        <a href="/education_find#wedding_rings"><img src="catalog/view/theme/canary/img/wedding bands.jpg" alt="img"></a>
                    </div>
                    <div class="education-block">
                        <div class="title-e"><a href="/education_find#wedding_rings">WEDDING RINGS</a></div>
                        Wedding rings represent your everlasting love and deciding what style to choose can seem very daunting. Wedding rings should represent the two of you as a couple as well as express your individual style. In our education center, you can learn about all the different styles of weddings rings and the benefits of each. Whether you choose to have bands that look very similar or completely different, the decision is unique to each couple’s style.
                    </div>
                </div>
                <div class="one-block">
                    <div class="box-img">
                        <a href="/education_find#fine_jewerly"><img src="catalog/view/theme/canary/img/41022.jpg" alt="img"></a>
                    </div>
                    <div class="education-block">
                        <div class="title-e"><a href="/education_find#fine_jewerly">FINE JEWELRY</a></div>
                        Fine jewelry is a wonderful way to extend any woman’s jewelry collection. Our education center will educate you on the various types of fine jewelry and gemstones and all the advantages of each so you can purchase with confidence.
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>




<?php echo !empty($footer) ? $footer : '' ?>