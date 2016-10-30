<form id="payment">
    <div class="blue-check">
        <div class="mark-line">
            <i class="mark-check1"></i>
            Your billing information must match the billing address for the credit card entered below
            or we will be unable to process your payment
        </div>
        <div class="clearfix box-card-l">
            <div style="margin-bottom: 12px;width: 57%;">
                <input type="text" name="cc_owner" id="input-cc-owner" placeholder="<?php echo $entry_cc_owner; ?>" required="required">
            </div>

            <div class="long-input">
                <input type="text" name="cc_number" id="input-cc-number" placeholder="<?php echo $entry_cc_number; ?>" required="required">
            </div>
            <div class="select-t">

                <select name="cc_expire_date_month" id="input-cc-expire-date" >
                    <?php foreach ($months as $month) { ?>
                    <option value="<?php echo $month['value']; ?>"><?php echo $month['text']; ?></option>
                    <?php } ?>
                </select>

            </div>
            <div class="select-t">
                <select name="cc_expire_date_year">
                    <?php foreach ($year_expire as $year) { ?>
                    <option value="<?php echo $year['value']; ?>"><?php echo $year['text']; ?></option>
                    <?php } ?>
                </select>

            </div>
            <div class="small-input">
                <input type="text" name="cc_cvv2" id="input-cc-cvv2" placeholder="CVV" required="required">
            </div>
            <a href="#" class="mark-check2"></a>
        </div>

    </div>
</form>

<div class="text-center">
    <div class="box-btn-checkout">

        <input type="button" class="btn login-form-btn btn-lg active-c" id="button-confirm" value="<?php echo $button_confirm; ?>" style="width: 200px; display: inline-block;" />
    </div>
</div>


<script type="text/javascript"><!--
$('#button-confirm').on('click', function () {
    $.ajax({
        url: 'index.php?route=payment/authorizenet_aim/send',
        type: 'post',
        data: $('#payment :input'),
        dataType: 'json',
        cache: false,
        beforeSend: function () {
            $('#button-confirm').button('loading');
        },
        complete: function () {
            $('#button-confirm').button('reset');
        },
        success: function (json) {
            if (json['error']) {
                alert(json['error']);
            }

            if (json['redirect']) {
                location = json['redirect'];
            }
        }
    });
});
//--></script>