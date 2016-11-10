<?//dd($payment_methods)?>

<?php if ($error_warning) { ?>
<div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
<?php } ?>
<div class="title-c">PAYMENT METHOD</div>


<?php if ($payment_methods):?>
    <!--*<p><?php echo $text_payment_method; ?></p>*-->
    <?php foreach ($payment_methods as $payment_method): ?>



        <?php if ($payment_method['code'] == $code || !$code) { ?>
            <?php $code = $payment_method['code']; ?>


                <?if ($payment_method['code'] == 'pp_pro'):?>
                    <div>
                        <input type="radio" name="payment_method" id="<?php echo $payment_method['code']; ?>" value="<?php echo $payment_method['code']; ?>" checked="checked"><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?>
                            <img src="/catalog/view/theme/canary/img/visa.png" alt="img">
                            <img src="/catalog/view/theme/canary/img/mastercard.png" alt="img">
                            <img src="/catalog/view/theme/canary/img/discover.png" alt="img">
                            <img src="/catalog/view/theme/canary/img/americanexpress.png" alt="img">
                        </label>
                    </div>
                <?endif?>

                <?if ($payment_method['code'] == 'pp_express'):?>
                    <div>
                        <input type="radio" name="payment_method" id="<?php echo $payment_method['code']; ?>" value="<?php echo $payment_method['code']; ?>" checked="checked"><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?>
                            <img src="/catalog/view/theme/canary/img/paypal.png" alt="img">
                        </label>
                    </div>
                <?endif?>
                <?if ($payment_method['code'] != 'pp_express' AND $payment_method['code'] != 'pp_pro'):?>
                    <div>
                        <input type="radio" name="payment_method" id="<?php echo $payment_method['code']; ?>" value="<?php echo $payment_method['code']; ?>" checked="checked"><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></label>
                    </div>
                <?endif?>
        <?php } else { ?>


            <?if ($payment_method['code'] == 'pp_pro'):?>
                <div>
                    <input type="radio" name="payment_method" id="<?php echo $payment_method['code']; ?>" value="<?php echo $payment_method['code']; ?>" ><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?>
                        <img src="/catalog/view/theme/canary/img/visa.png" alt="img">
                        <img src="/catalog/view/theme/canary/img/mastercard.png" alt="img">
                        <img src="/catalog/view/theme/canary/img/discover.png" alt="img">
                        <img src="/catalog/view/theme/canary/img/americanexpress.png" alt="img">
                    </label>
                </div>
            <?endif?>
            <?if ($payment_method['code'] == 'pp_express'):?>
                <div>
                    <input type="radio" name="payment_method" id="<?php echo $payment_method['code']; ?>" value="<?php echo $payment_method['code']; ?>"><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?>
                        <img src="/catalog/view/theme/canary/img/paypal.png" alt="img">
                    </label>
                </div>
            <?endif?>
            <?if ($payment_method['code'] != 'pp_express' AND $payment_method['code'] != 'pp_pro'):?>
                <div>
                    <input type="radio" name="payment_method" id="<?php echo $payment_method['code']; ?>" value="<?php echo $payment_method['code']; ?>"><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></label>
                </div>
            <?endif?>
        <?php } ?>

    <?endforeach?>

    <input type="hidden" id="w-agree" name="agree" value="1" checked="checked"/>
<?endif?>



<!--*<p><strong><a data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample"><?php echo $text_comments; ?></a></strong></p>*-->
<!--*<p>*-->
    <!--*<textarea name="comment" rows="8" class="form-control collapse" id="collapseExample"><?php echo $comment; ?></textarea>*-->
<!--*</p>*-->












<!--*<div class="w-cc-payment">*-->




    <!--*<?php if ($text_agree) { ?>*-->

        <!--*<div style="margin-top: 20px;">*-->
            <!--*<p>*-->
                <!--*<?php if ($agree) { ?>*-->
                    <!--*<input type="checkbox" class="styled-checkbox styled-checkbox-before" id="w-agree" name="agree" value="1" checked="checked"/>*-->
                <!--*<?php } else { ?>*-->
                    <!--*<input type="checkbox" class="styled-checkbox styled-checkbox-before" id="w-agree" name="agree" value="1"/>*-->
                <!--*<?php } ?>*-->

                <!--*<label for="w-agree"><?php echo $text_agree; ?></label>*-->
            <!--*</p>*-->

            <!--*<div class="text-right">*-->
                <!--*<input type="button" class="btn login-form-btn btn-lg active-c" id="button-payment-method" value="<?php echo $button_continue; ?>" data-loading-text="<?php echo $text_loading; ?>"*-->
                       <!--*style="width: 200px; display: inline-block;" />*-->
            <!--*</div>*-->
        <!--*</div>*-->

    <!--*<?php } else { ?>*-->


            <!--*<div class="text-right">*-->
                <!--*<input type="button" class="btn login-form-btn btn-lg active-c" id="button-payment-method" value="<?php echo $button_continue; ?>" data-loading-text="<?php echo $text_loading; ?>"*-->
                       <!--*style="width: 200px; display: inline-block;" />*-->
            <!--*</div>*-->

    <!--*<?php } ?>*-->

<!--*</div>*-->
