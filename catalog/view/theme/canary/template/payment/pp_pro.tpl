<div class="mark-line">
    <i class="mark-check1"></i>
    Your billing information must match the billing address for the credit card entered below
    or we will be unable to process your payment
</div>
<?//dd($cards)?>

<div class="clearfix box-card-l" >
    <form class="form-inline" role="form">
      <fieldset id="payment" style="color: #fff;">
        <!--*<legend><?php echo $text_credit_card; ?></legend>*-->
          <input type="hidden" name="cc_type" id="input-cc-type">

        <div class="form-group required">

            <input type="text" name="cc_number" value="" placeholder="<?php echo $entry_cc_number; ?>" id="input-cc-number" class="form-control" />

        </div>

        <div class="form-group required">

            <select name="cc_expire_date_month" id="input-cc-expire-date" class="form-control">
              <?php foreach ($months as $month) { ?>
              <option value="<?php echo $month['value']; ?>"><?php echo $month['text']; ?></option>
              <?php } ?>
            </select>

            <select name="cc_expire_date_year" class="form-control">
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
    </form>
</div>

<!--*<div class="buttons">*-->
  <!--*<div class="pull-right">*-->
    <!--*<input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary" />*-->
  <!--*</div>*-->
<!--*</div>*-->
<script type="text/javascript" src="/catalog/view/theme/canary/js/jquery.creditCardValidator.js" ></script>
<script type="text/javascript"><!--
    $(document).ready(function() {

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
        $('body').popover({
            selector: '[rel=popover]'
        });

        $(document).on('click', '.w-close-popover', function () {
            $('[rel=popover]').popover('hide');
            return false;
        });
    });
    <?if ($logged):?>
        $('.box-btn-checkout').html('<button class="btn login-form-btn btn-lg w-submit-order-checout" id="button-confirm" data-loading-text="Loading..."> <i class="submit-order-ico"></i> SUBMIT ORDER</button>');
    <?else:?>
        $('.box-btn-checkout').html('<button class="btn login-form-btn btn-lg w-submit-order-checout" id="button-register" data-loading-text="Loading..."> <i class="submit-order-ico"></i> SUBMIT ORDER</button>');
    <?endif?>
    $('#button-confirm').bind('click', function() {
        $.ajax({
            url: 'index.php?route=payment/pp_pro/send',
            type: 'post',
            data: $('#payment :input'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-confirm').attr('disabled', true);
                $('#payment').before('<div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_wait; ?></div>');
            },
            complete: function() {
                $('.alert').remove();
                $('#button-confirm').attr('disabled', false);
            },
            success: function(json) {
                if (json['error']) {
                    alert(json['error']);
                }

                if (json['success']) {
                    location = json['success'];
                }
            }
        });

    });
//--></script>