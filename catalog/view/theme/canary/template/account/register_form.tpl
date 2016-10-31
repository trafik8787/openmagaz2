
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="right-checkout">
    <div class="form-title">
        Create an account<br>
        Hello, I'm new here.
    </div>
    <div>
        <div class="contacts-form-row bl-input must">
            <input id="rit1" name="firstname" placeholder="<?php echo $entry_firstname; ?>" value="<?php echo $firstname; ?>"  type="text" class="contacts-input required" required>
            <?php if ($error_firstname) { ?>
            <div class="text-danger"><?php echo $error_firstname; ?></div>
            <?php } ?>
        </div>
    </div>
    <div>
        <div class="contacts-form-row bl-input must">
            <input id="rit2" name="lastname" placeholder="<?php echo $entry_lastname; ?>" value="<?php echo $lastname; ?>" type="text" class="contacts-input required" required>
        </div>
    </div>
    <div>
        <div class="contacts-form-row bl-input must">
            <input id="rit3" type="text" name="email" placeholder="<?php echo $entry_email; ?>" value="<?php echo $email; ?>" class="contacts-input required" required>
        </div>
    </div>
   <div>
       <div class="contacts-form-row bl-input must">
           <input id="rit4" type="password" placeholder="<?php echo $entry_password; ?>" name="password" value="<?php echo $password; ?>" class="contacts-input required" required>
       </div>
   </div>
    <div>
        <div class="contacts-form-row bl-input must">
            <input id="rit5" type="password" placeholder="<?php echo $entry_confirm; ?>" name="confirm" value="<?php echo $confirm; ?>" class="contacts-input required" required>
        </div>
    </div>

    <?php echo $captcha; ?>

    <div class="gender-reg clearfix">
        <input class="gender-radio" type="radio" name="genderradio" id="gr1" checked>
        <label for="gr1">Woman</label>
        <input class="gender-radio" type="radio" name="genderradio" id="gr2">
        <label for="gr2">man</label>
    </div>

    <?php if ($text_agree): ?>
    <div class="text-left" style="margin-top: 16px;">
        <?php if ($agree) { ?>
        <input type="checkbox" name="agree" value="1" checked="checked"  class="styled-checkbox styled-checkbox-before" id="ch2">
        <?php } else { ?>
        <input type="checkbox" name="agree" value="1" class="styled-checkbox styled-checkbox-before" id="ch2">
        <?php } ?>
        <label for="ch2" class="special-offers-check"><?php echo $text_agree; ?></label>
    </div>
    <?endif?>

    <div class="text center">
        <button type="submit" class="login-form-btn"><?php echo $button_continue; ?></button>
    </div>
    <div class="text-right">
        <input type="checkbox" name="newsletter" value="1" class="styled-checkbox styled-checkbox-before" id="ch1">
        <label for="ch1" class="special-offers-check">Sign up for special offers </label>
    </div>

</form>