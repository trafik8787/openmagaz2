
<div class="w-cc-payment">
    <?php if ($error_warning) { ?>
    <div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
    <?php } ?>
    <?php if ($payment_methods):?>
        <p><?php echo $text_payment_method; ?></p>
        <?php foreach ($payment_methods as $payment_method): ?>

            <div class="pay-radio-row">

                <?php if ($payment_method['code'] == $code || !$code) { ?>
                <?php $code = $payment_method['code']; ?>
                    <input type="radio" name="payment_method" id="<?php echo $payment_method['code']; ?>" class="styled-radio styled-radio-before" value="<?php echo $payment_method['code']; ?>" checked="checked"/>
                <?php } else { ?>
                    <input type="radio" name="payment_method" id="<?php echo $payment_method['code']; ?>" class="styled-radio styled-radio-before" value="<?php echo $payment_method['code']; ?>"/>
                <?php } ?>

                <label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?>

                    <?if ($payment_method['code'] == 'authorizenet_aim' OR $payment_method['code'] == 'authorizenet_sim'):?>
                        <span class="cc-carts">
                            <img src="catalog/view/theme/canary/img/cc-cart1.png" alt="">
                            <img src="catalog/view/theme/canary/img/cc-cart2.png" alt="">
                            <img src="catalog/view/theme/canary/img/cc-cart3.png" alt="">
                            <img src="catalog/view/theme/canary/img/cc-cart4.png" alt="">
                        </span>
                    <?endif?>

                    <?if ($payment_method['code'] == 'pp_express'):?>
                        <span class="cc-carts">
                            <img src="catalog/view/theme/canary/img/cc-btn-pay1.png" alt="" width="50%">
                        </span>
                    <?endif?>

                </label>
            </div>

        <?endforeach?>
    <?endif?>

    <br>


    <p><strong><?php echo $text_comments; ?></strong></p>
    <p>
        <textarea name="comment" rows="8" class="form-control"><?php echo $comment; ?></textarea>
    </p>


    <?php if ($text_agree) { ?>

        <div>
            <p>
                <?php if ($agree) { ?>
                    <input type="checkbox" class="styled-checkbox styled-checkbox-before" id="w-agree" name="agree" value="1" checked="checked"/>
                <?php } else { ?>
                    <input type="checkbox" class="styled-checkbox styled-checkbox-before" id="w-agree" name="agree" value="1"/>
                <?php } ?>

                <label for="w-agree"><?php echo $text_agree; ?></label>
            </p>
            <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method"
                   data-loading-text="<?php echo $text_loading; ?>" class="cc-continue-btn"/>
        </div>

    <?php } else { ?>

            <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method"
                   data-loading-text="<?php echo $text_loading; ?>" class="cc-continue-btn"/>

    <?php } ?>

</div>
