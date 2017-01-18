<?php echo isset($header) ? $header : ''; ?>


    <main class="w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <li>&nbsp;»&nbsp;</li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-12 padding-0">
                    <a href="<?=get_baners_top_random()[1]?>"><img src="<?=get_baners_top_random()[0]?>" class="bread-baner" ></a>
                </div>
            </div>
        </div>
    </div>
        <section class="static-page">

            <div class="contacts-page">
                <div class="center-bl">
                    <h1><?php echo $heading_title; ?></h1>
                    <?php echo $text_message; ?>


                    <script>
                        dataLayer.push(<?=$tags_marceting?>);

                    </script>

                </div>
            </div>
        </section>
    </main>

<!-- Google Code for Sale Conversion Page --> <script
        type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 878299355;
    var google_conversion_language = "en";
    var google_conversion_format = "3";
    var google_conversion_color = "ffffff";
    var google_conversion_label = "rQrGCKyXoG0Q25HnogM"; var
            google_conversion_value = 80.00; var google_conversion_currency = "USD"; var
            google_remarketing_only = false;
    /* ]]> */
</script>
<script type="text/javascript"
        src="//www.googleadservices.com/pagead/conversion.js">
</script>

<?php echo isset($footer) ? $footer : ''; ?>