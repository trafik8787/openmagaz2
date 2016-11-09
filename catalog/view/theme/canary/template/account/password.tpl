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
                    <a href="<?=get_baners_top_random()[1]?>"><img src="<?=get_baners_top_random()[0]?>" class="bread-baner" ></a>
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
                        <div class="account-col-title"><?php echo $text_password; ?></div>
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">

                            <div class="cc-shipping-row">

                                <input class="shipping-input" type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password">
                                <?php if ($error_password) { ?>
                                <div class="text-danger"><?php echo $error_password; ?></div>
                                <?php } ?>
                            </div>

                            <div class="cc-shipping-row">
                                <input class="shipping-input" type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm">
                                <?php if ($error_confirm) { ?>
                                <div class="text-danger"><?php echo $error_confirm; ?></div>
                                <?php } ?>
                            </div>



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