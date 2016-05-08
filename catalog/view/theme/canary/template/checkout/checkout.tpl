<?php echo isset($header) ? $header : ''; ?>

















<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
            <h1><?php echo $heading_title; ?></h1>
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><?php echo $text_checkout_option; ?></h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-checkout-option">
                        <div class="panel-body"></div>
                    </div>
                </div>
                <?php if (!$logged && $account != 'guest') { ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><?php echo $text_checkout_account; ?></h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-payment-address">
                        <div class="panel-body"></div>
                    </div>
                </div>
                <?php } else { ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><?php echo $text_checkout_payment_address; ?></h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-payment-address">
                        <div class="panel-body"></div>
                    </div>
                </div>
                <?php } ?>
                <?php if ($shipping_required) { ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><?php echo $text_checkout_shipping_address; ?></h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-shipping-address">
                        <div class="panel-body"></div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><?php echo $text_checkout_shipping_method; ?></h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-shipping-method">
                        <div class="panel-body"></div>
                    </div>
                </div>
                <?php } ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><?php echo $text_checkout_payment_method; ?></h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-payment-method">
                        <div class="panel-body"></div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><?php echo $text_checkout_confirm; ?></h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-checkout-confirm">
                        <div class="panel-body"></div>
                    </div>
                </div>
            </div>
            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>





















<main class="w-general-container">
    <section class="static-page">
        <div class="center-bl">
            <ul class="breadcrumbs">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <li>></li>
                <?php } ?>
            </ul>
        </div>
        <div class="scheckout-page">
            <div class="center-bl">
                <div class="scheckout-page-title">Secure Checkout</div>
                <div class="row">
                    <div class="col-md-3 col-xs-3 col-sm-3">
                        <div class="checkout-info-wrap">
                            <div class="checkout-info-title">ORDER SUMMARY</div>
                            <div class="summary-item-list">
                                <div class="summary-item">
                                    <div class="summary-item-img">
                                        <img src="catalog/view/theme/canary/img/img17.png" alt="">
                                    </div>
                                    <a href="#" class="summary-item-title">This is Photoshop's version</a>
                                    <p class="summary-item-desc">Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin</p>
                                    <div class="summary-item-price">$180</div>
                                </div>
                                <div class="summary-item">
                                    <div class="summary-item-img">
                                        <img src="catalog/view/theme/canary/img/img17.png" alt="">
                                    </div>
                                    <a href="#" class="summary-item-title">This is Photoshop's version</a>
                                    <p class="summary-item-desc">Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin</p>
                                    <div class="summary-item-price">$180</div>
                                </div>
                                <div class="summary-item">
                                    <div class="summary-item-img">
                                        <img src="catalog/view/theme/canary/img/img17.png" alt="">
                                    </div>
                                    <a href="#" class="summary-item-title">This is Photoshop's version</a>
                                    <p class="summary-item-desc">Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin</p>
                                    <div class="summary-item-price">$180</div>
                                </div>
                            </div>
                            <div class="ring-size-title">ring Size</div>
                            <div class="ring-size-list">
                                <div class="one-line size-radio height-inherit" data-toggle="buttons">
                                    <label class="btn btn-filter">
                                        <input type="radio" name="Size"> 25
                                    </label>
                                    <label class="btn btn-filter">
                                        <input type="radio" name="Size"> 26
                                    </label>
                                    <label class="btn btn-filter">
                                        <input type="radio" name="Size"> 27
                                    </label>
                                    <label class="btn btn-filter active">
                                        <input type="radio" name="Size"> 28
                                    </label>
                                    <label class="btn btn-filter">
                                        <input type="radio" name="Size"> 29
                                    </label>
                                    <label class="btn btn-filter">
                                        <input type="radio" name="Size"> 30
                                    </label>
                                    <label class="btn btn-filter">
                                        <input type="radio" name="Size"> 31
                                    </label>
                                    <label class="btn btn-filter">
                                        <input type="radio" name="Size"> 32
                                    </label>
                                    <label class="btn btn-filter">
                                        <input type="radio" name="Size"> 33
                                    </label>
                                </div>
                            </div>
                            <div class="summary-price">
                                <div class="sp-text">Sub-Total:</div>
                                <div class="sp-price"><span class="text-red">$1000.00</span></div>
                            </div>
                            <div class="del-price-item"><i class="c-yellow-truck"></i><span class="spi-text">Shipping free</span> free</div>
                            <div class="del-price-item"><i class="c-yellow-label"></i><span class="spi-text">Mounting free</span> free</div>
                            <div class="del-price-item taxes-item">Taxes
                                <button type="button" class="question-filter-btn" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-original-title="" title="" aria-describedby="popover658252">
                                    <span class="question-filter"><i class="fa fa-question-circle"></i></span>
                                </button>
                            </div>
                            <div class="summary-price">
                                <div class="sp-text">Total:</div>
                                <div class="sp-price"><span class="text-red">$1000.00</span><br><span class="sp-price-smaller">Ships by Tuesday, April 12</span></div>
                            </div>
                            <input type="text" class="summary-input" placeholder="Have a diamond ?">
                            <input type="text" class="summary-input" placeholder="Enter Coupon Code">
                            <div class="summary-cart-list">
                                <div class="summary-cart-item"><img src="catalog/view/theme/canary/img/visa.png" alt=""></div>
                                <div class="summary-cart-item"><img src="catalog/view/theme/canary/img/mastercard.png" alt=""></div>
                                <div class="summary-cart-item"><img src="catalog/view/theme/canary/img/discover.png" alt=""></div>
                                <div class="summary-cart-item"><img src="catalog/view/theme/canary/img/americanexpress.png" alt=""></div>
                                <div class="summary-cart-item"><img src="catalog/view/theme/canary/img/paypal.png" alt=""></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-6 col-sm-6">
                        <div class="checkout-center">
                            <div class="cc-block">
                                <div class="cc-header">
                                    <div class="cc-title">1. SIGN IN TO CHECKOUT</div>
                                </div>
                                <div class="cc-body">
                                    <div class="login-form-wrapper">
                                        <form action="login">
                                            <a href="#" class="cc-login-text">CREATE NEW ACCOUNT</a>
                                            <div class="contacts-form-row">
                                                <input id="lit1" type="text" class="contacts-input login-input required" required>
                                                <label for="lit1" class="login-label-placeholder"><i class="envelope-ico"></i><span class="hide-when-valid">e-mail</span><span class="reqstar">*</span></label>
                                            </div>
                                            <div class="contacts-form-row contacts-form-row-mend login-password-row">
                                                <input id="lit2" type="text" class="contacts-input login-input required" required>
                                                <label for="lit2" class="login-label-placeholder"><i class="lock-ico"></i><span class="hide-when-valid">password</span><span class="reqstar">*</span></label>
                                                <a href="#" class="show-password-btn"></a>
                                            </div>
                                            <div class="text-right">
                                                <a href="#" class="forgot-pass" data-toggle="modal" data-target="#forgotModal">Forgot password?</a><br>
                                                <a href="#" class="forgot-pass" data-toggle="modal" data-target="#forgotModalWrong">ErrorModal</a>
                                            </div>
                                            <div class="text center">
                                                <button class="login-form-btn login-continue">continue</button>
                                            </div>
                                            <div class="form-divider">
                                                <span>or</span>
                                            </div>
                                            <a href="#" class="social-login-btn social-login-facebook">
                                                <span class="social-login-image"><i class="fa fa-facebook"></i></span>
                                                <span class="social-login-text">sign in with facebook</span>
                                            </a>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="cc-block">
                                <div class="cc-header">
                                    <div class="cc-title">2. PAYMENT METHOD</div>
                                </div>
                            </div>
                            <div class="cc-block">
                                <div class="cc-header">
                                    <div class="cc-title">3. SHIPPING & BILLING</div>
                                </div>
                            </div>
                            <div class="cc-block">
                                <div class="cc-header">
                                    <div class="cc-title">4. PAYMENT DETAILS</div>
                                </div>
                            </div>
                            <div class="cc-block">
                                <div class="cc-header">
                                    <div class="cc-title">5. REVIEW & CONFIRMATION</div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-3 col-xs-3 col-sm-3">
                        <div class="checkout-info-wrap">
                            <div class="checkout-info-title">PURCHASE WITH CONFIDENCE</div>
                            <ul class="faq-list">
                                <li>
                                    <span class="faq-question">Do you have a retail store </span>
                                    <div class="faq-answer-block">
                                        <div class="answer-block-question">Do you clean or provide care for jewelry sold on your site?</div>
                                        <p> does not operate retail locations. This allows us to cut overhead costs and focus exclusively on quality and service - providing you with a high quality product at a much better value than your local jewelry store.</p>
                                        <p>By the same token, we understand how important it is for our customers to see and feel jewelry - especially a piece of jewelry as personal as an engagement ring. That's why we offer free shipping on all our items, a 30-day money back guarantee, and free ring resizing for 60 days after your purchase.</p>
                                        <p>That being said, we have offices in both Maryland and New York City, in the heart of the diamond district.</p>
                                    </div>
                                </li>
                                <li>
                                    <span class="faq-question">Do you have a retail store</span>
                                    <div class="faq-answer-block">
                                        <div class="answer-block-question">Do you have a retail store located in my state?</div>
                                        <p> does not operate retail locations. This allows us to cut overhead costs and focus exclusively on quality and service - providing you with a high quality product at a much better value than your local jewelry store.</p>
                                        <p>By the same token, we understand how important it is for our customers to see and feel jewelry - especially a piece of jewelry as personal as an engagement ring. That's why we offer free shipping on all our items, a 30-day money back guarantee, and free ring resizing for 60 days after your purchase.</p>
                                        <p>That being said, we have offices in both Maryland and New York City, in the heart of the diamond district.</p>
                                    </div>
                                </li>
                                <li>
                                    <span class="faq-question">Do you have gemologists on staff?</span>
                                    <div class="faq-answer-block">
                                        <div class="answer-block-question">Do you have a retail store located in my state?</div>
                                        <p> does not operate retail locations. This allows us to cut overhead costs and focus exclusively on quality and service - providing you with a high quality product at a much better value than your local jewelry store.</p>
                                        <p>By the same token, we understand how important it is for our customers to see and feel jewelry - especially a piece of jewelry as personal as an engagement ring. That's why we offer free shipping on all our items, a 30-day money back guarantee, and free ring resizing for 60 days after your purchase.</p>
                                        <p>That being said, we have offices in both Maryland and New York City, in the heart of the diamond district.</p>
                                    </div>
                                </li>
                                <li>
                                    <span class="faq-question">Where are the corporate offices</span>
                                    <div class="faq-answer-block">
                                        <div class="answer-block-question">Do you have a retail store located in my state?</div>
                                        <p> does not operate retail locations. This allows us to cut overhead costs and focus exclusively on quality and service - providing you with a high quality product at a much better value than your local jewelry store.</p>
                                        <p>By the same token, we understand how important it is for our customers to see and feel jewelry - especially a piece of jewelry as personal as an engagement ring. That's why we offer free shipping on all our items, a 30-day money back guarantee, and free ring resizing for 60 days after your purchase.</p>
                                        <p>That being said, we have offices in both Maryland and New York City, in the heart of the diamond district.</p>
                                    </div>
                                </li>
                            </ul>
                            <ul class="faq-list">
                                <li>
                                    <span class="faq-question">Do you have a retail store </span>
                                    <div class="faq-answer-block">
                                        <div class="answer-block-question">Do you clean or provide care for jewelry sold on your site?</div>
                                        <p> does not operate retail locations. This allows us to cut overhead costs and focus exclusively on quality and service - providing you with a high quality product at a much better value than your local jewelry store.</p>
                                        <p>By the same token, we understand how important it is for our customers to see and feel jewelry - especially a piece of jewelry as personal as an engagement ring. That's why we offer free shipping on all our items, a 30-day money back guarantee, and free ring resizing for 60 days after your purchase.</p>
                                        <p>That being said, we have offices in both Maryland and New York City, in the heart of the diamond district.</p>
                                    </div>
                                </li>
                                <li>
                                    <span class="faq-question">Do you have a retail store</span>
                                    <div class="faq-answer-block">
                                        <div class="answer-block-question">Do you have a retail store located in my state?</div>
                                        <p> does not operate retail locations. This allows us to cut overhead costs and focus exclusively on quality and service - providing you with a high quality product at a much better value than your local jewelry store.</p>
                                        <p>By the same token, we understand how important it is for our customers to see and feel jewelry - especially a piece of jewelry as personal as an engagement ring. That's why we offer free shipping on all our items, a 30-day money back guarantee, and free ring resizing for 60 days after your purchase.</p>
                                        <p>That being said, we have offices in both Maryland and New York City, in the heart of the diamond district.</p>
                                    </div>
                                </li>
                                <li>
                                    <span class="faq-question">Do you have gemologists on staff?</span>
                                    <div class="faq-answer-block">
                                        <div class="answer-block-question">Do you have a retail store located in my state?</div>
                                        <p> does not operate retail locations. This allows us to cut overhead costs and focus exclusively on quality and service - providing you with a high quality product at a much better value than your local jewelry store.</p>
                                        <p>By the same token, we understand how important it is for our customers to see and feel jewelry - especially a piece of jewelry as personal as an engagement ring. That's why we offer free shipping on all our items, a 30-day money back guarantee, and free ring resizing for 60 days after your purchase.</p>
                                        <p>That being said, we have offices in both Maryland and New York City, in the heart of the diamond district.</p>
                                    </div>
                                </li>
                                <li>
                                    <span class="faq-question">Where are the corporate offices</span>
                                    <div class="faq-answer-block">
                                        <div class="answer-block-question">Do you have a retail store located in my state?</div>
                                        <p> does not operate retail locations. This allows us to cut overhead costs and focus exclusively on quality and service - providing you with a high quality product at a much better value than your local jewelry store.</p>
                                        <p>By the same token, we understand how important it is for our customers to see and feel jewelry - especially a piece of jewelry as personal as an engagement ring. That's why we offer free shipping on all our items, a 30-day money back guarantee, and free ring resizing for 60 days after your purchase.</p>
                                        <p>That being said, we have offices in both Maryland and New York City, in the heart of the diamond district.</p>
                                    </div>
                                </li>
                            </ul>
                            <div class="checkout-info-inner-wrap checkout-info-actionsblock">
                                <div class="ci-title">24/7 Customer Service</div>
                                <div class="ci-phone"><i class="c-yellow-phone"></i>543 - 557 - 3456</div>
                                <div class="ci-actions-list">
                                    <a href="#" class="ci-action-item">
                                        <span class="ci-action-ico"><i class="c-yellow-chat"></i></span>
                                        Chat now
                                    </a>
                                    <a href="#" class="ci-action-item">
                                        <span class="ci-action-ico"><i class="c-yellow-envelope"></i></span>
                                        Send massage
                                    </a>
                                    <a href="#" class="ci-action-item">
                                        <span class="ci-action-ico"><i class="c-yellow-inphone"></i></span>
                                        Call back
                                    </a>
                                </div>
                            </div>
                            <a href="#" class="tofaq-link">Try FAQ</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>




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
                    <form action="forgot">
                        <input type="text" class="forgot-input">
                        <div class="text-center">
                            <button class="modal-continue" type="button">continue</button>
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


</main>















<script type="text/javascript"><!--
$(document).on('change', 'input[name=\'account\']', function() {
	if ($('#collapse-payment-address').parent().find('.panel-heading .panel-title > *').is('a')) {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
		}
	} else {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_account; ?>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_address; ?>');
		}
	}
});

<?php if (!$logged) { ?>
$(document).ready(function() {
    $.ajax({
        url: 'index.php?route=checkout/login',
        dataType: 'html',
        success: function(html) {
           $('#collapse-checkout-option .panel-body').html(html);

			$('#collapse-checkout-option').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-option" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_option; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-checkout-option\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
<?php } else { ?>
$(document).ready(function() {
    $.ajax({
        url: 'index.php?route=checkout/payment_address',
        dataType: 'html',
        success: function(html) {
            $('#collapse-payment-address .panel-body').html(html);

			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
<?php } ?>

// Checkout
$(document).delegate('#button-account', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').val(),
        dataType: 'html',
        beforeSend: function() {
        	$('#button-account').button('loading');
		},
        complete: function() {
			$('#button-account').button('reset');
        },
        success: function(html) {
            $('.alert, .text-danger').remove();

            $('#collapse-payment-address .panel-body').html(html);

			if ($('input[name=\'account\']:checked').val() == 'register') {
				$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
			} else {
				$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
			}

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Login
$(document).delegate('#button-login', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/login/save',
        type: 'post',
        data: $('#collapse-checkout-option :input'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-login').button('loading');
		},
        complete: function() {
            $('#button-login').button('reset');
        },
        success: function(json) {
            $('.alert, .text-danger').remove();
            $('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#collapse-checkout-option .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				// Highlight any found errors
				$('input[name=\'email\']').parent().addClass('has-error');
				$('input[name=\'password\']').parent().addClass('has-error');
		   }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Register
$(document).delegate('#button-register', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/register/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
			$('#button-register').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();
            $('.form-group').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-register').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>
                var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        success: function(html) {
							// Add the shipping address
                            $.ajax({
                                url: 'index.php?route=checkout/shipping_address',
                                dataType: 'html',
                                success: function(html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

									$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

							$('#collapse-shipping-method .panel-body').html(html);

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

   							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_address',
                        dataType: 'html',
                        success: function(html) {
                            $('#collapse-shipping-address .panel-body').html(html);

							$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    complete: function() {
                        $('#button-register').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);

						$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Payment Address
$(document).delegate('#button-payment-address', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/payment_address/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-payment-address').button('loading');
		},
        complete: function() {
			$('#button-payment-address').button('reset');
        },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>
                $.ajax({
                    url: 'index.php?route=checkout/shipping_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-shipping-address .panel-body').html(html);

						$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-address\']').trigger('click');

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Shipping Address
$(document).delegate('#button-shipping-address', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/shipping_address/save',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function() {
			$('#button-shipping-address').button('loading');
	    },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-shipping-address').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-shipping-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-address').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-shipping-method .panel-body').html(html);

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');

                        $.ajax({
                            url: 'index.php?route=checkout/shipping_address',
                            dataType: 'html',
                            success: function(html) {
                                $('#collapse-shipping-address .panel-body').html(html);
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    success: function(html) {
                        $('#collapse-payment-address .panel-body').html(html);
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Guest
$(document).delegate('#button-guest', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/guest/save',
        type: 'post',
        data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
        dataType: 'json',
        beforeSend: function() {
       		$('#button-guest').button('loading');
	    },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-guest').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-payment-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                <?php if ($shipping_required) { ?>
                var shipping_address = $('#collapse-payment-address input[name=\'shipping_address\']:checked').prop('value');

                if (shipping_address) {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        complete: function() {
                            $('#button-guest').button('reset');
                        },
                        success: function(html) {
							// Add the shipping address
                            $.ajax({
                                url: 'index.php?route=checkout/guest_shipping',
                                dataType: 'html',
                                success: function(html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

									$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

						    $('#collapse-shipping-method .panel-body').html(html);

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/guest_shipping',
                        dataType: 'html',
                        complete: function() {
                            $('#button-guest').button('reset');
                        },
                        success: function(html) {
                            $('#collapse-shipping-address .panel-body').html(html);

							$('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
                <?php } else { ?>
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-guest').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                <?php } ?>
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

// Guest Shipping
$(document).delegate('#button-guest-shipping', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/guest_shipping/save',
        type: 'post',
        data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-guest-shipping').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-guest-shipping').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }

				for (i in json['error']) {
					var element = $('#input-shipping-' + i.replace('_', '-'));

					if ($(element).parent().hasClass('input-group')) {
						$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
					} else {
						$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
					}
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/shipping_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-guest-shipping').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-shipping-method .panel-body').html(html);

						$('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#button-shipping-method', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/shipping_method/save',
        type: 'post',
        data: $('#collapse-shipping-method input[type=\'radio\']:checked, #collapse-shipping-method textarea'),
        dataType: 'json',
        beforeSend: function() {
        	$('#button-shipping-method').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-shipping-method').button('reset');
                
                if (json['error']['warning']) {
                    $('#collapse-shipping-method .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-method').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-method .panel-body').html(html);

						$('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#button-payment-method', 'click', function() {
    $.ajax({
        url: 'index.php?route=checkout/payment_method/save',
        type: 'post',
        data: $('#collapse-payment-method input[type=\'radio\']:checked, #collapse-payment-method input[type=\'checkbox\']:checked, #collapse-payment-method textarea'),
        dataType: 'json',
        beforeSend: function() {
         	$('#button-payment-method').button('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-method .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/confirm',
                    dataType: 'html',
                    complete: function() {
                        $('#button-payment-method').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-checkout-confirm .panel-body').html(html);

						$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_confirm; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-checkout-confirm\']').trigger('click');
					},
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
//--></script>









<?php echo isset($footer) ? $footer : ''; ?>