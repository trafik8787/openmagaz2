<form id="payment">
    <fieldset>
        <div class="shipping-text">
            <strong><?php echo $text_credit_card; ?></strong>
        </div>
        <div class="cc-shipping-row required">
            <input type="text" name="cc_owner" id="input-cc-owner" class="shipping-input" required/>
            <label for="input-cc-owner" class="shipping-label"><?php echo $entry_cc_owner; ?></label>

        </div>
        <div class="cc-shipping-row required">
            <input type="text" name="cc_number" id="input-cc-number" class="shipping-input" required/>
            <label for="input-cc-number" class="shipping-label"><?php echo $entry_cc_number; ?></label>

        </div>
        <div class="cc-shipping-row required">
            <!--<label for="input-cc-expire-date" class="shipping-label"><?php echo $entry_cc_expire_date; ?></label>-->
            <div class="col-sm-3">
                <select name="cc_expire_date_month" id="input-cc-expire-date" class="shipping-input select-simulate-input">
                    <?php foreach ($months as $month) { ?>
                    <option value="<?php echo $month['value']; ?>"><?php echo $month['text']; ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="col-sm-3">
                <select name="cc_expire_date_year" class="shipping-input select-simulate-input">
                    <?php foreach ($year_expire as $year) { ?>
                    <option value="<?php echo $year['value']; ?>"><?php echo $year['text']; ?></option>
                    <?php } ?>
                </select>
            </div>
        </div>
        <div class="cc-shipping-row required">

                <input type="text" name="cc_cvv2" id="input-cc-cvv2" class="shipping-input" required/>
                <label for="input-cc-cvv2" class="shipping-label"><?php echo $entry_cc_cvv2; ?></label>

        </div>
    </fieldset>
</form>


<div class="include-price-row no-bottom-margin">
    <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="cc-continue-btn"/>
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