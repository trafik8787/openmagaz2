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

        <div class="account-page">
            <div class="center-bl">


                <div class="account-page-header">
                    <div class="account-page-title"><?php echo $heading_title; ?></div>

                </div>
                <div class="row">
                    <div class="col-md-9">
                        <div class="account-col-title"><?php echo $entry_newsletter; ?></div>
                        <form action="<?php echo $action; ?>"  method="post" enctype="multipart/form-data">

                            <?php if ($newsletter): ?>

                                <div class="pay-radio-row">
                                    <input type="radio" name="newsletter" value="1" checked="checked" id="newsletter1" class="styled-radio styled-radio-before">
                                    <label for="newsletter1"><?php echo $text_yes; ?></label>
                                </div>

                                <div class="pay-radio-row">
                                    <input type="radio" name="newsletter" value="0" id="newsletter2" class="styled-radio styled-radio-before">
                                    <label for="newsletter2"><?php echo $text_no; ?></label>
                                </div>
                            <?else:?>


                                <div class="pay-radio-row">
                                    <input type="radio" name="newsletter" value="1" id="newsletter1" class="styled-radio styled-radio-before">
                                    <label for="newsletter1"><?php echo $text_yes; ?></label>
                                </div>

                                <div class="pay-radio-row">
                                    <input type="radio" name="newsletter" value="0" checked="checked" id="newsletter2" class="styled-radio styled-radio-before" >
                                    <label for="newsletter2"><?php echo $text_no; ?></label>
                                </div>

                            <?endif?>

                            <div class="include-price-row no-bottom-margin">
                                <button type="submit" name="accaut_edit_submit" value="1" style="width: 50%"
                                        class="cc-continue-btn"><?php echo $button_continue; ?></button>
                            </div>


                        </form>


                    </div>

                    <div class="col-md-3">
                        <!--<div class="account-col-title">My wish list</div>-->
                        <?=$right_meny_accaunt?>
                    </div>
                </div>

            </div>
        </div>
    </section>
</main>


<?php echo isset($footer) ? $footer : ''; ?>