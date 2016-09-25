<?php echo isset($header) ? $header : ''; ?>


<?//dd($cart)?>

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
        <div class="scheckout-page">
            <div class="center-bl">
                <div class="scheckout-page-title">Secure Checkout</div>
                <div class="row">
                    <div class="col-md-3 col-xs-3 col-sm-3">
                        <div class="checkout-info-wrap">
                            <div class="checkout-info-title">ORDER SUMMARY</div>
                            <div class="summary-item-list">

                                <?foreach ($cart['products'] as $row_cart):?>

                                    <div class="summary-item">
                                        <div class="summary-item-img">
                                            <img src="<?=$row_cart['thumb']?>" alt="">
                                        </div>
                                        <a href="<?=$row_cart['href']?>" class="summary-item-title"><?=$row_cart['name']?> :X <?=$row_cart['quantity']?></a>
                                        <p class="summary-item-desc"><?=$row_cart['model']?></p>
                                        <?if (!empty($row_cart['option'])):?>
                                            <p class="summary-item-desc">
                                                <?foreach ($row_cart['option'] as $rows):?>
                                                   <span><?=$rows['name']?>: <?=$rows['value']?></span><br>

                                                <?endforeach?>
                                            </p>
                                        <?endif?>
                                        <div class="summary-item-price"><?=$row_cart['price']?></div>
                                    </div>
                                <?endforeach?>

                            </div>

                            <div class="summary-price">
                                <div class="sp-text"><?=$cart['totals'][0]['title']?>:</div>
                                <div class="sp-price"><span class="text-red"><?=$cart['totals'][0]['text']?></span></div>
                            </div>
                            <div class="del-price-item"><i class="c-yellow-truck"></i><span class="spi-text">Shipping free</span> free</div>
                            <div class="del-price-item"><i class="c-yellow-label"></i><span class="spi-text">Mounting free</span> free</div>
                            <div class="del-price-item taxes-item">Taxes
                                <button type="button" class="question-filter-btn" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-original-title="" title="" aria-describedby="popover658252">
                                    <span class="question-filter"><i class="fa fa-question-circle"></i></span>
                                </button>
                            </div>
                            <div class="summary-price">
                                <div class="sp-text"><?=$cart['totals'][1]['title']?>:</div>
                                <div class="sp-price"><span class="text-red"><?=$cart['totals'][1]['text']?></span><br>
                                    <!--<span class="sp-price-smaller">Ships by Tuesday, April 12</span>-->
                                </div>
                            </div>
                            <input type="text" class="summary-input" placeholder="Have a diamond ?">
                            <input type="text" class="summary-input" placeholder="Enter Coupon Code">
                            <div class="summary-cart-list">
                                <div class="summary-cart-item"><img src="/catalog/view/theme/canary/img/visa.png" alt=""></div>
                                <div class="summary-cart-item"><img src="/catalog/view/theme/canary/img/mastercard.png" alt=""></div>
                                <div class="summary-cart-item"><img src="/catalog/view/theme/canary/img/discover.png" alt=""></div>
                                <div class="summary-cart-item"><img src="/catalog/view/theme/canary/img/americanexpress.png" alt=""></div>
                                <div class="summary-cart-item"><img src="/catalog/view/theme/canary/img/paypal.png" alt=""></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-6 col-sm-6">


                        <div class="checkout-center panel-group" id="accordion">
                            <div class="panel cc-block">
                                <!--*1. SIGN IN TO CHECKOUT*-->
                                <div class="cc-header">
                                    <div class="cc-title"><?php echo $text_checkout_option; ?></div>
                                </div>
                                <div id="collapse-checkout-option">
                                    <div class="cc-body">

                                    </div>
                                </div>
                            </div>


                            <?php if (!$logged && $account != 'guest') :?>

                                <div class="panel cc-block">
                                    <div class="cc-header">
                                        <div class="cc-title"><?php echo $text_checkout_account; ?></div>
                                    </div>

                                    <div class="panel-collapse collapse" id="collapse-payment-address">
                                        <div class="cc-body">

                                        </div>
                                    </div>

                                </div>

                            <?else:?>

                                <div class="panel cc-block">
                                    <div class="cc-header">
                                        <div class="cc-title"><?php echo $text_checkout_payment_address; ?></div>
                                    </div>
                                    <div id="collapse-payment-address">
                                        <div class="cc-body">

                                        </div>
                                    </div>

                                </div>

                            <?endif?>


                            <?php if ($shipping_required) : ?>

                                <div class="panel cc-block">
                                    <div class="cc-header">
                                        <div class="cc-title"><?php echo $text_checkout_shipping_address; ?></div>
                                    </div>

                                    <div id="collapse-shipping-address">
                                        <div class="cc-body">

                                        </div>
                                    </div>

                                </div>

                                <div class="panel cc-block">
                                    <div class="cc-header">
                                        <div class="cc-title"><?php echo $text_checkout_shipping_method; ?></div>
                                    </div>

                                    <div id="collapse-shipping-method">
                                        <div class="cc-body">

                                        </div>
                                    </div>

                                </div>

                            <?endif?>



                            <div class="panel cc-block">
                                <div class="cc-header">
                                    <div class="cc-title"><?php echo $text_checkout_payment_method; ?></div>
                                </div>

                                <div id="collapse-payment-method">
                                    <div class="cc-body">

                                    </div>
                                </div>

                            </div>


                            <div class="panel cc-block">
                                <div class="cc-header">
                                    <div class="cc-title"><?php echo $text_checkout_confirm; ?></div>
                                </div>

                                <div id="collapse-checkout-confirm">
                                    <div class="cc-body">

                                    </div>
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
                                <div class="ci-phone"><i class="c-yellow-phone"></i>800-214-6550</div>
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
                            <a href="/faq" class="tofaq-link w-general-category">Try FAQ</a>
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
	if ($('#collapse-payment-address').parent().find('.cc-header .cc-title > *').is('a')) {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.cc-header .cc-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
		} else {
			$('#collapse-payment-address').parent().find('.cc-header .cc-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
		}
	} else {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_account; ?>');
		} else {
			$('#collapse-payment-address').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_payment_address; ?>');
		}
	}
});

<?php if (!$logged) { ?>
$(document).ready(function() {
    $.ajax({
        url: 'index.php?route=checkout/login',
        dataType: 'html',
        success: function(html) {
           $('#collapse-checkout-option .cc-body').html(html);

			$('#collapse-checkout-option').parent().find('.cc-header .cc-title').html('<a href="#collapse-checkout-option" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_option; ?> <i class="fa fa-caret-down"></i></a>');

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
            $('#collapse-payment-address .cc-body').html(html);

			$('#collapse-payment-address').parent().find('.cc-header .cc-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
<?php } ?>

// Checkout
$(document).on('click', '#button-account', function() {
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

            $('#collapse-payment-address .cc-body').html(html);

			if ($('input[name=\'account\']:checked').val() == 'register') {
				$('#collapse-payment-address').parent().find('.cc-header .cc-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
			} else {
				$('#collapse-payment-address').parent().find('.cc-header .cc-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
			}

			$('a[href=\'#collapse-payment-address\']').trigger('click');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });


        $('.styled-select').select2();



    return false;
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
                $('#collapse-checkout-option .cc-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

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
$(document).on('click', '#button-register', function() {
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
            $('.cc-shipping-row').removeClass('has-error');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-register').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address .cc-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
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
                                    $('#collapse-shipping-address .cc-body').html(html);

									$('#collapse-shipping-address').parent().find('.cc-header .cc-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

							$('#collapse-shipping-method .cc-body').html(html);

							$('#collapse-shipping-method').parent().find('.cc-header .cc-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

   							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_confirm; ?>');
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
                            $('#collapse-shipping-address .cc-body').html(html);

							$('#collapse-shipping-address').parent().find('.cc-header .cc-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_confirm; ?>');
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
                        $('#collapse-payment-method .cc-body').html(html);

						$('#collapse-payment-method').parent().find('.cc-header .cc-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_confirm; ?>');
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
                        $('#collapse-payment-address .cc-body').html(html);

						$('#collapse-payment-address').parent().find('.cc-header .cc-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
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
$(document).on( 'click', '#button-payment-address', function() {

    $(this).parents('.collapse').collapse('hide');

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
                    $('#collapse-payment-address .cc-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
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
                        $('#collapse-shipping-address .cc-body').html(html);

						$('#collapse-shipping-address').parent().find('.cc-header .cc-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-address\']').trigger('click');

						$('#collapse-shipping-method').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_shipping_method; ?>');
						$('#collapse-payment-method').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_confirm; ?>');
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
                        $('#collapse-payment-method .cc-body').html(html);

						$('#collapse-payment-method').parent().find('.cc-header .cc-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_confirm; ?>');
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
                        $('#collapse-payment-address .cc-body').html(html);
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

    $(this).parents('.collapse').collapse('hide');

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
                    $('#collapse-shipping-address .cc-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
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
                        $('#collapse-shipping-method .cc-body').html(html);

						$('#collapse-shipping-method').parent().find('.cc-header .cc-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_confirm; ?>');

                        $.ajax({
                            url: 'index.php?route=checkout/shipping_address',
                            dataType: 'html',
                            success: function(html) {
                                $('#collapse-shipping-address .cc-body').html(html);
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
                        $('#collapse-payment-address .cc-body').html(html);
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
                    $('#collapse-payment-address .cc-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
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
                                    $('#collapse-shipping-address .cc-body').html(html);

									$('#collapse-shipping-address').parent().find('.cc-header .cc-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });

						    $('#collapse-shipping-method .cc-body').html(html);

							$('#collapse-shipping-method').parent().find('.cc-header .cc-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-method\']').trigger('click');

							$('#collapse-payment-method').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_confirm; ?>');
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
                            $('#collapse-shipping-address .cc-body').html(html);

							$('#collapse-shipping-address').parent().find('.cc-header .cc-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

							$('a[href=\'#collapse-shipping-address\']').trigger('click');

							$('#collapse-shipping-method').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_shipping_method; ?>');
							$('#collapse-payment-method').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_payment_method; ?>');
							$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_confirm; ?>');
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
                        $('#collapse-payment-method .cc-body').html(html);

						$('#collapse-payment-method').parent().find('.cc-header .cc-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_confirm; ?>');
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
                    $('#collapse-shipping-address .cc-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
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
                        $('#collapse-shipping-method .cc-body').html(html);

						$('#collapse-shipping-method').parent().find('.cc-header .cc-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i>');

						$('a[href=\'#collapse-shipping-method\']').trigger('click');

						$('#collapse-payment-method').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_payment_method; ?>');
						$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_confirm; ?>');
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

    $(this).parents('.collapse').collapse('hide');

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
                    $('#collapse-shipping-method .cc-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/payment_method',
                    dataType: 'html',
                    complete: function() {
                        $('#button-shipping-method').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-method .cc-body').html(html);

						$('#collapse-payment-method').parent().find('.cc-header .cc-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

						$('a[href=\'#collapse-payment-method\']').trigger('click');

						$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<?php echo $text_checkout_confirm; ?>');
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

    $(this).parents('.collapse').collapse('hide');

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
                    $('#collapse-payment-method .cc-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                    $('#button-payment-method').button('reset');
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/confirm',
                    dataType: 'html',
                    complete: function() {
                        $('#button-payment-method').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-checkout-confirm .cc-body').html(html);

						$('#collapse-checkout-confirm').parent().find('.cc-header .cc-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_confirm; ?> <i class="fa fa-caret-down"></i></a>');

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