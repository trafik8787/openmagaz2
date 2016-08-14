<?php echo isset($header) ? $header : ''; ?>



<main class="w-general-container">
    <hr class="fade-2">
    <section class="static-page">
        <div class="center-bl">
            <ul class="breadcrumbs">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <li>></li>
                <?php } ?>
            </ul>
        </div>




        <div class="login-page">
            <div class="center-bl">

                <?php if ($success) { ?>
                    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
                <?php } ?>

                <?php if ($error_warning) { ?>
                    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
                <?php } ?>

                <div class="contacts-top-block text-center">
                    <p class="contacts-block-title">MY ACCOUNT Log in for your account info</p>
                </div>
                <div class="mobile-login-btns">
                    <a href="#loginSide" class="mobile-login-tab-btn active">
                        Log in
                    </a>
                    <a href="#signSide" class="mobile-login-tab-btn">
                        Sign in
                    </a>
                </div>
                <div class="forms-container clearfix">
                    <div id="loginSide" class="form-side active">
                        <div class="login-form-wrapper">
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                <div class="form-title">
                                    Log in to your account<br>
                                    I have an account.
                                </div>
                                <div class="contacts-form-row">
                                    <input id="lit1" type="text" name="email" value="<?php echo $email; ?>" class="contacts-input login-input required">
                                    <label for="lit1" class="login-label-placeholder"><i class="envelope-ico"></i><span class="hide-when-valid">e-mail</span><span class="reqstar">*</span></label>
                                </div>
                                <div class="contacts-form-row contacts-form-row-mend login-password-row">
                                    <input id="lit2" type="password" name="password" value="<?php echo $password; ?>" class="contacts-input login-input required">
                                    <label for="lit2" class="login-label-placeholder"><i class="lock-ico"></i><span class="hide-when-valid">password</span><span class="reqstar">*</span></label>
                                    <a href="#" class="show-password-btn"></a>
                                </div>
                                <div class="text-right">
                                    <a href="#" class="forgot-pass" data-toggle="modal" data-target="#forgotModal">Forgot password?</a><br>
                                    <a href="#" class="forgot-pass" data-toggle="modal" data-target="#forgotModalWrong">ErrorModal</a>
                                </div>
                                <div class="text center">
                                    <button type="submit" class="login-form-btn login-continue"><?php echo $button_login; ?></button>
                                </div>
                                <div class="form-divider">
                                    <span>or</span>
                                </div>
                                <?=$login_facebook?>
                            </form>
                        </div>
                    </div>
                    <div id="signSide" class="form-side">
                        <div class="login-form-wrapper">
                            <?=$form_register?>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
</main>



<!-- Modal -->
<div id="forgotModal" class="forgot-modal modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <div class="modal-body">
                <div class="text-center">
                    <div class="remind-modal-title">Forgot Password?</div>
                    <div class="remind-modal-text">To reset your password, please enter your email address</div>
                </div>
                <form action="/index.php?route=account/forgotten" method="post" enctype="multipart/form-data">
                    <input type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" class="forgot-input">
                    <div class="text-center">
                        <button class="modal-continue" type="submit">continue</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

<!-- Modal -->
<div id="forgotModalWrong" class="forgot-modal modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <div class="modal-body">
                <div class="text-center">
                    <div class="wrong-email-text">
                        There is no account under this email address.
                        Please try again or register
                    </div>
                    <button class="modal-continue" type="button" data-dismiss="modal">close</button>
                </div>
            </div>
        </div>

    </div>
</div>





<?php echo isset($footer) ? $footer : ''; ?>