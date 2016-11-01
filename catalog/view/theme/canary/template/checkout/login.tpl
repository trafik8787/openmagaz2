<div class="row margin-top-30">
    <div class="col-md-6 col-sm-12">

        <div class="login-form-wrapper">
            <div>
                <div class="form-group">
                    <input id="lit1" type="text" name="email" required="required" class="form-control" placeholder="<?php echo $entry_email; ?>">
                </div>
                <div class="form-group">
                    <input id="lit2" type="password" name="password"  required="required" class="form-control" placeholder="<?php echo $entry_password; ?>">
                </div>
                <div class="text-right">
                    <a href="<?php echo $forgotten; ?>" class="forgot-pass"><?php echo $text_forgotten; ?></a><br>
                </div>
                <div class="text center">
                    <button id="button-login" data-loading-text="<?php echo $text_loading; ?>" class="login-form-btn login-continue"><?php echo $button_login; ?></button>
                </div>
                <div class="form-divider">
                    <span>or</span>
                </div>
                <?=$login_facebook?>
            </div>

        </div>


    </div>


    <div class="col-md-6 col-sm-12">

        New and Guest Customers

       <p> You are not required to sign in and may check out as a guest.
        By using guest checkout, you agree to Blue Nile's Terms and Conditions and Privacy Policy.</p>

        <input type="radio" name="account" value="register" checked="checked" style="display: none;"/>
        <div class="text-right">
            <button id="button-account" data-loading-text="Loading..." class="login-form-btn login-continue"><?php echo $button_continue; ?></button>
        </div>


    </div>
</div>


