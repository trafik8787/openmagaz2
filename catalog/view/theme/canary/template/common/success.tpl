<?php echo isset($header) ? $header : ''; ?>


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

            <div class="contacts-page">
                <div class="center-bl">
                    <h1><?php echo $heading_title; ?></h1>
                    <?php echo $text_message; ?>
                </div>
            </div>
        </section>
    </main>


<?php echo isset($footer) ? $footer : ''; ?>