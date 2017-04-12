<?php echo isset($header) ? $header : ''; ?>


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
                                                        FedEx Priority Overnight &reg;: Free
                                                        <?else:?>
                                                        FedEx Ground &reg;: Free
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

                        <form action="" method="post" id="w-form-regystry-checkout">
                            <div class="col-md-8">
                                <!--*<form action="">*-->

                                    <div class="right-checkout">

                                        <div id="collapse-payment-address">
                                            <?if (!empty($register_json)):?>
                                                <?foreach ($register_json['error'] as $row):?>
                                                    <div class="alert alert-danger"><?=$row?></div>
                                                <?endforeach?>
                                            <?endif?>


                                            <?if ($logged):?>




                                                <?=$logined_address?>




                                            <?else:?>

                                                <div class="line-with-input">
                                                    <div class="title-c">CUSTOMER INFORMATION</div>
                                                    <div class="clearfix">
                                                        <div class="bl-input must">
                                                            <input type="text" name="email" id="input-payment-email"  placeholder="Enter Email" >
                                                        </div>
                                                        <div class="text-right-input">
                                                            or <a href="/login">login</a> with an existing account and return to checkout
                                                        </div>
                                                    </div>
                                                </div>

                                                <hr>
                                                <div class="line-with-input">
                                                    <div class="title-c">DELIVERY  INFORMATION</div>
                                                    <div class="clearfix">
                                                        <div class="bl-input must">
                                                            <input type="text" name="firstname"  id="input-payment-firstname" placeholder="First name">
                                                        </div>
                                                        <div class="bl-input must">
                                                            <input type="text" name="lastname"  id="input-payment-lastname" placeholder="Last name">
                                                        </div>
                                                    </div>
                                                    <div class="clearfix">
                                                        <div class="bl-input must">
                                                            <input type="text" name="address_1" id="input-payment-address-1" placeholder="Address">
                                                        </div>
                                                        <div class="bl-input">
                                                            <input type="text" name="address_2" id="input-payment-address-2" placeholder="Address (cont.)">
                                                        </div>
                                                    </div>

                                                    <div class="clearfix">
                                                        <div class="bl-input must">
                                                            <input type="text" name="city" id="input-payment-city" placeholder="City">
                                                        </div>
                                                        <div class="bl-input clearfix">

                                                            <div class="bl-input must">
                                                                <select class="required" name="zone_id" id="input-payment-zone">
                                                                </select>
                                                            </div>

                                                            <div class="bl-input must">

                                                                <select name="country_id" class="required" id="input-payment-country">
                                                                    <option disabled value="">Select Country</option>
                                                                    <?php foreach ($countries as $country) { ?>
                                                                    <?php if ($country['country_id'] == $country_id) { ?>
                                                                    <option value="<?php echo $country['country_id']; ?>"
                                                                            selected="selected"><?php echo $country['name']; ?></option>
                                                                    <?php } else { ?>
                                                                    <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                                                    <?php } ?>
                                                                    <?php } ?>
                                                                </select>

                                                            </div>

                                                        </div>
                                                    </div>


                                                    <div class="clearfix">
                                                        <div class="bl-input must">
                                                            <input type="text" name="postcode" id="input-payment-postcode" placeholder="Postal code">
                                                        </div>
                                                        <div class="bl-input must">
                                                            <input type="text" name="telephone" id="input-payment-telephone" placeholder="Phone number">
                                                        </div>
                                                    </div>




                                                    <div class="include-price-row">
                                                        <input type="checkbox" class="styled-checkbox styled-checkbox-before" name="newsletter" value="1" id="newsletter"/>
                                                        <label for="newsletter">I wish to subscribe to the Brilliant Canary newsletter.</label>
                                                    </div>


                                                    <div class="include-price-row no-bottom-margin" style="display: none">
                                                        <input type="checkbox" class="styled-checkbox styled-checkbox-before" checked="checked" id="pc3" name="agree" value="1">
                                                        <label for="pc3"><?php echo $text_agree; ?></label>
                                                    </div>

                                                    <p>
                                                        Orders cannot be shipped to a P.O. Box<br/>
                                                        Please make sure to provide a street address where a signature can be obtained for receipt
                                                    </p>


                                                </div>
                                                <hr>
                                                <div class="line-with-input">
                                                    <div class="title-c">BILLING INFORMATION</div>

                                                    <div class="include-price-row">
                                                        <input type="checkbox" class="styled-checkbox styled-checkbox-before" name="shiping_adress" value="1" checked="checked" id="shiping_adress"/>
                                                        <label for="shiping_adress">My billing information is the same my delivery information</label>
                                                    </div>

                                                    <div id="shiping_adress_form">

                                                        <div class="line-with-input">

                                                            <div class="clearfix">
                                                                <div class="bl-input must">
                                                                    <input type="text" name="firstname_s"  id="input-payment-firstname" placeholder="First name">
                                                                </div>
                                                                <div class="bl-input must">
                                                                    <input type="text" name="lastname_s"  id="input-payment-lastname" placeholder="Last name">
                                                                </div>
                                                            </div>
                                                            <div class="clearfix">
                                                                <div class="bl-input must">
                                                                    <input type="text" name="address_1_s" id="input-payment-address-1" placeholder="Address">
                                                                </div>
                                                                <div class="bl-input">
                                                                    <input type="text" name="address_2_s" id="input-payment-address-2" placeholder="Address (cont.)">
                                                                </div>
                                                            </div>

                                                            <div class="clearfix">
                                                                <div class="bl-input must">
                                                                    <input type="text" name="city_s" id="input-payment-city" placeholder="City">
                                                                </div>
                                                                <div class="bl-input clearfix">

                                                                    <div class="bl-input must">
                                                                        <select class="required" name="zone_id_s" id="input-payment-zone">
                                                                        </select>
                                                                    </div>

                                                                    <div class="bl-input must">

                                                                        <select name="country_id_s" class="required" id="input-payment-country">
                                                                            <option disabled value="">Select Country</option>
                                                                            <?php foreach ($countries as $country) { ?>
                                                                            <?php if ($country['country_id'] == $country_id) { ?>
                                                                            <option value="<?php echo $country['country_id']; ?>"
                                                                                    selected="selected"><?php echo $country['name']; ?></option>
                                                                            <?php } else { ?>
                                                                            <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                                                            <?php } ?>
                                                                            <?php } ?>
                                                                        </select>

                                                                    </div>

                                                                </div>
                                                            </div>


                                                            <div class="clearfix">
                                                                <div class="bl-input must">
                                                                    <input type="text" name="postcode_s" id="input-payment-postcode" placeholder="Postal code">
                                                                </div>
                                                                <div class="bl-input must">
                                                                    <input type="text" name="telephone_s" id="input-payment-telephone" placeholder="Phone number">
                                                                </div>
                                                            </div>

                                                        </div>

                                                    </div>
                                                </div>

                                            <?endif?>
                                        </div>


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
                                        <div class="check-bl radio-bl w-radio-tab">

                                            <div class="title-c">PAYMENT METHOD</div>

                                            <div>
                                                <input type="radio" name="payment_method" data-target="#pp_pro" value="pp_pro" checked="checked"><label for="pp_pro">Credit card                            <img src="/catalog/view/theme/canary/img/visa.png" alt="img">
                                                    <img src="/catalog/view/theme/canary/img/mastercard.png" alt="img">
                                                    <img src="/catalog/view/theme/canary/img/discover.png" alt="img">
                                                    <img src="/catalog/view/theme/canary/img/americanexpress.png" alt="img">
                                                </label>
                                            </div>

                                            <div>
                                                <input type="radio" name="payment_method" data-target="#pp_express" value="pp_express"><label for="pp_express">PayPal                        <img src="/catalog/view/theme/canary/img/paypal.png" alt="img">
                                                </label>
                                            </div>

                                            <div>
                                                <input type="radio" name="payment_method" data-target="#bank_transfer" value="bank_transfer"><label for="bank_transfer">Bank Transfer (2% Discount)</label>
                                            </div>


                                            <div>
                                                <input type="radio" name="payment_method" data-target="#phone_order"  value="phone_order"><label for="phone_order">Phone Order</label>
                                            </div>


                                        </div>


                                        <div class="tab-content blue-check">

                                            <div class="tab-pane active" id="pp_pro">



                                                <div class="mark-line">
                                                    <i class="mark-check1"></i>
                                                    Your billing information must match the billing address for the credit card entered below
                                                    or we will be unable to process your payment
                                                </div>

                                                <div class="clearfix box-card-l" >
                                                    <?if (!empty($json_pp_pro)):?>
                                                        <div class="alert alert-danger"><?=$json_pp_pro?></div>
                                                    <?endif?>
                                                    <span class="form-inline" role="form">
                                                      <fieldset id="payment" style="color: #fff;">
                                                          <input type="hidden" name="cc_type" id="input-cc-type">

                                                        <div class="form-group required">
                                                            <input type="text" name="cc_number" value="" placeholder="Card Number" id="input-cc-number" class="form-control" />
                                                        </div>

                                                        <div class="form-group required">

                                                            <select name="cc_expire_date_month" id="input-cc-expire-date" class="form-control required">
                                                                <option value="" selected disabled>Month</option>
                                                                <?php foreach ($months as $month) { ?>
                                                                <option value="<?php echo $month['value']; ?>"><?php echo $month['text']; ?></option>
                                                                <?php } ?>
                                                            </select>

                                                            <select name="cc_expire_date_year" class="form-control required">
                                                                <option value="" selected disabled>Year</option>
                                                                <?php foreach ($year_expire as $year) { ?>
                                                                <option value="<?php echo $year['value']; ?>"><?php echo $year['text']; ?></option>
                                                                <?php } ?>
                                                            </select>

                                                        </div>
                                                        <div class="form-group required">

                                                            <input type="text" name="cc_cvv2" value="" placeholder="CVV" id="input-cc-cvv2" class="form-control" />

                                                        </div>
                                                          <div class="form-group help-form-group">
                                                              <span class="help-cvv" rel="popover"  data-container=".help-form-group" data-html="true" data-toggle="popover" data-placement="top" data-content='
                                                                        <div class="w-popover-content">

                                                                            <div class="w-popover-title">SECURITY CODE</div>
                                                                            <button type="button" class="w-close-popover" >x</button>
                                                                            <div class="row">
                                                                                <div class="col-md-6 col-sm-6 text-center"><span>American Express</span></div>
                                                                                <div class="col-md-6 col-sm-6 text-center"><span>All Others</span></div>
                                                                            </div>
                                                                            <div class="w-popover-bloc">

                                                                                <span class="w-popover-bloc-text1"><b>4 digit number</b></span>
                                                                                <span class="w-popover-bloc-text2"><b>3 digit number</b></span>

                                                                            </div>
                                                                            <div class="w-popover-text-bootom">
                                                                                <span>
                                                                                    Visa, MasterCard, Discover, and Diner’s Club have a 3 digit card security number on the back of the card. American Express has a 4 digit card security number on the front of the card.
                                                                                </span>
                                                                            </div>
                                                                        </div>'>?</span>

                                                          </div>
                                                          <input type="hidden" name="cc_issue" value="" id="input-cc-issue">

                                                      </fieldset>
                                                    </span>
                                                </div>


                                            </div>

                                            <div class="tab-pane" id="pp_express">
                                                <?=$pp_express?>
                                            </div>

                                            <div class="tab-pane" id="bank_transfer">
                                                <div class="mark-line">
                                                    <i class="mark-check1"></i>
                                                    Bank Transfer Instructions
                                                    Your order will not be processed until payment is received.
                                                </div>

                                                <div class="clearfix box-card-l" style="color: #fff">
                                                    A 2% discount is applied to all orders paid via bank wire. The discount will be reflected in the total price when you reach the Review Orders page. You will be contacted by our Customer Service within 24 hours with instructions on bank wire transfer.
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="phone_order">
                                                <div class="mark-line">
                                                    <i class="mark-check1"></i>
                                                    Phone Order Instructions
                                                    Your order will not be processed until payment is received.
                                                </div>

                                                <div class="clearfix box-card-l" style="color: #fff">
                                                    When you reach the order confirmation page, please call Brilliant Canary at 800-214-6550 or 615-739-5990 to complete your payment.
                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="agree-checkout-box">
                                        <input type="checkbox" name="agreeCheckout" id="agreeCheckout"><label for="agreeCheckout">I've read and agree to Brilliant Canary's <a class="agree" href="/index.php?route=information/information/agree&information_id=5">Terms & Conditions</a> and <a class="agree" href="/index.php?route=information/information/agree&information_id=3">Privacy Policy</a></label>
                                    </div>
                                    <div class="box-btn-checkout">
                                        <button class="btn login-form-btn btn-lg" type="submit" id="button-register" data-loading-text="Loading..."> <i class="submit-order-ico"></i> SUBMIT ORDER</button>

                                    </div>
                                    <!--*<button type="submit">Submit</button>*-->

                            </div>
                        </form>

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

<style>
    .error {
        color: red;
    }

    select.error,
    input.error {
        border: 1px solid red!important;
    }

    #shiping_adress_form {
        display: none;
    }
</style>

<script type="text/javascript">

    $(document).ready(function () {

        $(document).on('click', '#shiping_adress', function () {
            $('#shiping_adress_form').toggle('hide');
        });

        $('.w-radio-tab input[name=\'payment_method\']').on('click', function (e) {
            $(this).tab('show');
        });

        $(document).on('change', '#collapse-payment-address select[name=\'country_id\']', function () {
            $.ajax({
                url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
                dataType: 'json',
                beforeSend: function () {
                    $('#collapse-payment-address select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
                },
                complete: function () {
                    $('.fa-spin').remove();
                },
                success: function (json) {
                    if (json['postcode_required'] == '1') {
                        $('#collapse-payment-address input[name=\'postcode\']').parent().parent().addClass('required');
                    } else {
                        $('#collapse-payment-address input[name=\'postcode\']').parent().parent().removeClass('required');
                    }

                    html = '<option selected disabled value="">Select State</option>';

                    if (json['zone'] && json['zone'] != '') {
                        for (i = 0; i < json['zone'].length; i++) {
                            html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                            if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                                html += ' selected="selected"';
                            }

                            html += '>' + json['zone'][i]['name'] + '</option>';
                        }
                    } else {
                        html += '<option value="0" selected="selected">None</option>';
                    }

                    $('#collapse-payment-address select[name=\'zone_id\']').html(html);
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });
        });
        $('#collapse-payment-address select[name=\'country_id\']').trigger('change');


        $(document).on('change', '#input-cc-number', function () {
            $(this).validateCreditCard(function(result) {

                switch (result.card_type.name) {
                    case 'visa':
                        $('#input-cc-type').val('VISA');
                        break;
                    case 'maestro':
                        $('#input-cc-type').val('SWITCH');
                        break;
                    case 'mastercard':
                        $('#input-cc-type').val('MASTERCARD');
                        break;
                    case 'discover':
                        $('#input-cc-type').val('DISCOVER');
                        break;
                    case 'amex':
                        $('#input-cc-type').val('AMEX');
                        break;
                }
                // console.log(result.card_type.name);
            });
        });

        $('#w-form-regystry-checkout').validate({
            rules:{

                email:{
                    required: true,
                    email: true
                },

                firstname: {
                    required: true
                },

                lastname: {
                    required: true
                },

                address_1: {
                    required: true
                },
                city: {
                    required: true
                },
                postcode: {
                    required: true,
                    number: true
                },
                country_id: {
                    required: true
                },
                telephone: {
                    required: true,
                    number: true
                },
                cc_number: {
                    required: true,
                    number: true
                },
                cc_expire_date_month: {
                    required: true
                },
                cc_expire_date_year: {
                    required: true
                },
                cc_cvv2: {
                    required: true,
                    number: true,
                    minlength: 3,
                    maxlength: 3
                },
                agreeCheckout: {
                    required: true
                }

            },
//            submitHandler: function() {
//                alert('ads');
//                // $('.w-submit-order-checout').addClass('active-c');
//
//            },
            invalidHandler: function() {
                //$('.w-submit-order-checout').removeClass('active-c');
            },
            highlight: function(element, errorClass) {

                $(element).addClass('error');
            },
            unhighlight: function(element) {
                $(element).removeClass('error');
            },
            errorPlacement: function(error, element) {
                if (element.attr("name") == "cc_number"
                    || element.attr("name") == "cc_expire_date_month"
                    || element.attr("name") == "cc_expire_date_year"
                    || element.attr("name") == "cc_cvv2") {
                    return false;
                    //error.insertBefore(element);
                } else {
                    error.insertAfter(element);
                }
            }

        });


    });
</script>


<?php echo isset($footer) ? $footer : ''; ?>
<script type="text/javascript" src="/catalog/view/theme/canary/js/jquery.creditCardValidator.js" ></script>