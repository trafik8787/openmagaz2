
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="form-title">
        Create an account<br>
        Hello, I'm new here.
    </div>
    <div class="contacts-form-row">
        <input id="rit1" name="firstname" value="<?php echo $firstname; ?>"  type="text" class="contacts-input required" required>
        <label for="rit1" class="label-placeholder"><?php echo $entry_firstname; ?><span class="reqstar">*</span></label>
        <?php if ($error_firstname) { ?>
        <div class="text-danger"><?php echo $error_firstname; ?></div>
        <?php } ?>
    </div>
    <div class="contacts-form-row">
        <input id="rit2" name="lastname" value="<?php echo $lastname; ?>" type="text" class="contacts-input required" required>
        <label for="rit2" class="label-placeholder"><?php echo $entry_lastname; ?><span class="reqstar">*</span></label>
    </div>
    <div class="contacts-form-row">
        <input id="rit3" type="text" name="email" value="<?php echo $email; ?>" class="contacts-input required" required>
        <label for="rit3" class="label-placeholder"><?php echo $entry_email; ?><span class="reqstar">*</span></label>
    </div>
    <div class="contacts-form-row">
        <input id="rit4" type="password" name="password" value="<?php echo $password; ?>" class="contacts-input required" required>
        <label for="rit4" class="label-placeholder"><?php echo $entry_password; ?><span class="reqstar">*</span></label>
    </div>
    <div class="contacts-form-row">
        <input id="rit5" type="password" name="confirm" value="<?php echo $confirm; ?>" class="contacts-input required" required>
        <label for="rit5" class="label-placeholder"><?php echo $entry_confirm; ?><span class="reqstar">*</span></label>
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