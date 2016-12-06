<?php echo isset($header) ? $header : ''; ?>


<?//dd($cart['products'])?>

<main class="w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <li>&nbsp;»&nbsp;</li>
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
        <div class="scheckout-page">
            <div class="center-bl">
                <div class="col-md-12 col-sm-12 text-center">
                    <span class="h1">CHECKOUT & SUBMIT ORDER</span>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-5">
                        <div class="box-order">
                            <div class="title">Review Order</div>
                            <div class="summary-item-list">
                                <?foreach ($cart['products'] as $row_cart):?>

                                <?if (!empty($row_cart[0])):?>

                                    <div class="summary-item">
                                        <div class="summary-item-img">
                                            <img src="<?=$row_cart[0]['thumb']?>" alt="">
                                            <!--*<img src="<?=$row_cart[1]['thumb']?>" alt="">*-->
                                        </div>
                                        <div class="wrapper-text-checkout">
                                            <a href="<?=$row_cart[0]['href']?>" class="summary-item-title"><?=$row_cart[0]['name']?> :X <?=$row_cart[0]['quantity']?></a>
                                            <a href="<?=$row_cart[1]['href']?>" class="summary-item-title"><?=$row_cart[1]['name']?> :X <?=$row_cart[1]['quantity']?></a>
                                            <p class="summary-item-desc">
                                                <?=$row_cart[0]['model']?>
                                                <?=$row_cart[1]['model']?>
                                                <?if (!empty($row_cart[0]['option'])):?> &nbsp;&nbsp;
                                                <?foreach ($row_cart[0]['option'] as $rows):?>
                                                    <span><?=$rows['name']?>: <?=$rows['value']?></span><br>

                                                <?endforeach?>

                                            </p>
                                            <?endif?>
                                            <div class="summary-item-price"><?=$row_cart[0]['price']?></div>
                                            <div class="summary-item-price" style="margin-top: 20px"><?=$row_cart[1]['price']?></div>
                                        </div>
                                    </div>

                                <?else:?>

                                    <div class="summary-item">
                                        <div class="summary-item-img">
                                            <img src="<?=$row_cart['thumb']?>" alt="">
                                        </div>
                                        <div class="wrapper-text-checkout">
                                            <a href="<?=$row_cart['href']?>" class="summary-item-title"><?=$row_cart['name']?> :X <?=$row_cart['quantity']?></a>
                                            <p class="summary-item-desc">
                                                <?=$row_cart['model']?>
                                                <?if (!empty($row_cart['option'])):?> &nbsp;&nbsp;
                                                <?foreach ($row_cart['option'] as $rows):?>
                                                <span><?=$rows['name']?>: <?=$rows['value']?></span><br>

                                                <?endforeach?>
                                            </p>
                                            <?endif?>
                                            <div class="summary-item-price"><?=$row_cart['price']?></div>
                                        </div>
                                    </div>

                                <?endif?>
                                <?endforeach?>
                            </div>
                            <div class="edit-shopping-cart">
                                <a href="/shop-cart">Edit Shopping Cart</a>
                            </div>
                        </div>
                        <div class="box-order">
                            <div class="title">ORDER TOTAL</div>
                            <div class="wrapper-t">
                                <table>
                                    <tbody>

                                    <?foreach ($cart['totals'] as $row):?>
                                        <?if ($row['title'] == 'Total'):?>
                                            <tr>
                                                <td>Fedex Shipping:</td>
                                                <td>
                                                    <?if ($row['value'] > 500):?>
                                                    FedEx Priority Overnight &reg;
                                                    <?else:?>
                                                    FedEx Ground &reg;
                                                    <?endif?>
                                                </td>
                                            </tr>
                                        <?endif?>
                                        <tr>
                                            <td><?=$row['title']?>:</td>
                                            <td><?=$row['text']?></td>
                                        </tr>

                                    <?endforeach?>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>











                    <div class="col-md-8">
                        <form action="">

                            <div class="right-checkout">

                                <div id="collapse-payment-address">
                                    <?=$payment_address?>
                                </div>



                                <?if ($logged):?>
                                    <div class="airplane-block w-calculate-cost">
                                        <div class="check-bl radio-bl">
                                            <div class="title-c">CALCULATE SHIPPING COST</div>
                                            <div>
                                                <input type="radio" value="0" id="cost1" name="cost" checked="checked"><label for="cost1">FedEx Priority Overnight®: $0,00</label>
                                            </div>
                                            <div>
                                                <input type="radio" value="35" id="cost2" name="cost"><label for="cost2">Saturday Delivery (Priority): $35,00</label>
                                            </div>
                                            <div>
                                                <input type="radio" value="0" id="cost3" name="cost"><label for="cost3">Hold at Location (FedEx): $0,00</label>
                                            </div>
                                        </div>
                                        <img src="/catalog/view/theme/canary/img/airplane.png" alt="airplane" class="airplane-img">
                                    </div>
                                    <div class="check-bl radio-bl" id="collapse-payment-method">

                                        <?=$payment_method?>

                                    </div>

                                    <div class="blue-check">


                                    </div>
                                <?endif?>
                            </div>
                                <?if ($logged):?>
                                    <div class="agree-checkout-box">
                                        <input type="checkbox" id="agreeCheckout"><label for="agreeCheckout">I've read and agree to Brilliant Canary's <a class="agree" href="/index.php?route=information/information/agree&information_id=5">Terms & Conditions</a> and <a class="agree" href="/index.php?route=information/information/agree&information_id=3">Privacy Policy</a></label>
                                    </div>
                                    <div class="box-btn-checkout">
                                        <button class="btn login-form-btn btn-lg w-submit-order-checout" id="button-confirm" data-loading-text="Loading..."> <i class="submit-order-ico"></i> SUBMIT ORDER</button>

                                    </div>
                                <?endif?>
                        </form>
                    </div>




                </div>


            </div>
        </div>
    </section>

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














<script type="text/javascript">
    $(document).ready(function() {
        $('#button-confirm').prop('disabled', true);

        $(document).on('change', '#agreeCheckout', function () {
            if ($(this).prop('checked')) {
                $('.w-submit-order-checout').addClass('active-c');
                $('.w-submit-order-checout').prop('disabled', false);
            } else {
                $('.w-submit-order-checout').removeClass('active-c');
                $('.w-submit-order-checout').prop('disabled', true);
            }

        });
        $(document).on('change', '.w-calculate-cost input', function () {
            $.ajax({
                url: 'index.php?route=checkout/confirm',
                type: 'post',
                dataType: 'html',
                data: '&cost='+ $(this).val(),
                complete: function() {

                },
                success: function(html) {


                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });
        });

        //$('.w-calculate-cost').prop('checked')

    <?if ($logged):?>


            $.ajax({
                url: 'index.php?route=checkout/payment_address',
                dataType: 'html',
                success: function(html) {
                    $('#collapse-payment-address').html(html);

                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });


            $.ajax({
                url: 'index.php?route=checkout/payment_method/save',
                type: 'post',
                data: $('#collapse-payment-method input[type=\'radio\']:checked, #collapse-payment-method input[type=\'checkbox\']:checked, #collapse-payment-method input#w-agree, #collapse-payment-method textarea'),
                dataType: 'json',
                beforeSend: function() {
                    $('#button-payment-method').button('loading');
                },
                success: function(json) {
                    //console.log(json);
                    $('.alert, .text-danger').remove();

                    if (json['redirect']) {
                        //location = json['redirect'];
                    } else if (json['error']) {
                        if (json['error']['warning']) {
                            $('#collapse-payment-method').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                        }
                    } else {

                        $.ajax({
                            url: 'index.php?route=checkout/confirm',
                            type: 'post',
                            dataType: 'html',
                            data: '&flag_load_paymants_form=1',
                            complete: function() {
                                $('#button-payment-method').button('reset');
                            },
                            success: function(html) {

                                $('.blue-check').html(html);

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
        <?endif?>
        });








$(document).on('change', '#collapse-payment-method input[type=\'radio\']', function () {

    //$('select[name="address_id"]').val();

    $.ajax({
        url: 'index.php?route=checkout/payment_method/save',
        type: 'post',
        data: $('#collapse-payment-method input[type=\'radio\']:checked, #collapse-payment-method input[type=\'checkbox\']:checked, #collapse-payment-method input#w-agree, #collapse-payment-method textarea'),
        dataType: 'json',
        beforeSend: function() {
            $('#button-payment-method').button('loading');
        },
        success: function(json) {
            //console.log(json);
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                if (json['error']['warning']) {
                    $('#collapse-payment-method').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {

                $.ajax({
                    url: 'index.php?route=checkout/confirm',
                    type: 'post',
                    dataType: 'html',
                    data: '&flag_load_paymants_form=2',
                    complete: function() {

                    },
                    success: function(html) {

                        $('.blue-check').html(html);

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


//$(document).on('click', '.w-submit-order-checout', function () {
//
//
//    $.ajax({
//        url: 'index.php?route=checkout/confirm',
//        type: 'post',
//        dataType: 'html',
//        data: '&flag_load_paymants_form=2',
//        complete: function() {
//
//        },
//        success: function(html) {
//
//            //$('.blue-check').html(html);
//
//        },
//        error: function(xhr, ajaxOptions, thrownError) {
//            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
//        }
//    });
//
//});



















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
            console.log(json);
            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-register').button('reset');

                if (json['error']['warning']) {
                    $('#collapse-payment-address').prepend('<div class="alert alert-danger we"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
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

                $.ajax({
                    url: 'index.php?route=checkout/payment_address',
                    dataType: 'html',
                    complete: function() {
                        $('#button-register').button('reset');
                    },
                    success: function(html) {
                        $('#collapse-payment-address').html(html);

                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });

                location.reload();
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
    return false;
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


</script>









<?php echo isset($footer) ? $footer : ''; ?>