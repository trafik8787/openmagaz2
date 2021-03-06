<?php echo !empty($header) ? $header : '' ?>


<main class="w-general-container">
    <hr class="fade-2">
    <section class="static-page">
        <div class="center-bl">
            <ul class="breadcrumbs">

                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <li>></li>
                <?php } ?>

            </ul>
        </div>
        <div class="about-page">
            <div class="center-bl">
                <div class="about-page-title"><?php echo $heading_title; ?></div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-sm-8">
                                <?php echo $description; ?>
                            </div>
                            <div class="col-sm-4">
                                <div class="about-infoblock">
                                    <div class="about-infoimg">
                                        <i class="shipping-ico"></i>
                                    </div>
                                    <div class="about-infotitle">
                                        FREE SHIPPING
                                    </div>
                                    <div class="about-infodesc">
                                        Donec at mattis purus, ut accumsan nisl. Lorem ipsum dolor sit amet.
                                    </div>
                                </div>
                                <div class="about-infoblock">
                                    <div class="about-infoimg">
                                        <i class="money-ico"></i>
                                    </div>
                                    <div class="about-infotitle">
                                        100% MONEY BACK
                                    </div>
                                    <div class="about-infodesc">
                                        Donec at mattis purus, ut accumsan nisl. Lorem ipsum dolor sit amet, consectetur
                                    </div>
                                </div>
                                <div class="about-infoblock">
                                    <div class="about-infoimg">
                                        <i class="support-ico"></i>
                                    </div>
                                    <div class="about-infotitle">
                                        ONLINE SUPPORT 24/7
                                    </div>
                                    <div class="about-infodesc">
                                        Donec at mattis purus, ut accumsan nisl. Lorem ipsum dolor sit amet
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>




<?php echo !empty($footer) ? $footer : '' ?>