

<div class="login-form-wrapper">
    <div>
        <a href="#" id="button-account" class="cc-login-text">CREATE NEW ACCOUNT</a>
        <div class="contacts-form-row">
            <input id="lit1" type="text" name="email" class="contacts-input login-input required" required>
            <label for="lit1" class="login-label-placeholder"><i class="envelope-ico"></i><span class="hide-when-valid"><?php echo $entry_email; ?></span><span class="reqstar">*</span></label>
        </div>
        <div class="contacts-form-row contacts-form-row-mend login-password-row">
            <input id="lit2" type="password" name="password" class="contacts-input login-input required" required>
            <label for="lit2" class="login-label-placeholder"><i class="lock-ico"></i><span class="hide-when-valid"><?php echo $entry_password; ?></span><span class="reqstar">*</span></label>
            <a href="#" class="show-password-btn"></a>
        </div>
        <div class="text-right">
            <a href="<?php echo $forgotten; ?>" class="forgot-pass" data-toggle="modal" data-target="#forgotModal"><?php echo $text_forgotten; ?></a><br>
            <a href="#" class="forgot-pass" data-toggle="modal" data-target="#forgotModalWrong">ErrorModal</a>
        </div>
        <div class="text center">
            <button id="button-login" data-loading-text="<?php echo $text_loading; ?>" class="login-form-btn login-continue"><?php echo $button_login; ?></button>
        </div>
        <div class="form-divider">
            <span>or</span>
        </div>
        <?=$login_facebook?>
    </div>
    <input type="radio" name="account" value="register" checked="checked" style="display: none;"/>
</div>