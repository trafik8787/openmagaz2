<div class="line-with-input">
    <div class="title-c">CUSTOMER INFORMATION</div>
    <div class="clearfix">
        <div class="bl-input must">
            <input type="text" name="email" id="input-payment-email" value="<?=$v_email?>" placeholder="Enter Email" >
        </div>
        <div class="text-right-input">
            or <a href="/login">login</a> with an existing account and return to checkout
        </div>
    </div>
</div>

<div class="line-with-input">
<div class="title-c">DELIVERY  INFORMATION</div>
<div class="clearfix">
    <div class="bl-input must">
        <input type="text" name="firstname" value="<?=$v_firstname?>" id="input-payment-firstname" placeholder="First name">
    </div>
    <div class="bl-input must">
        <input type="text" name="lastname"  value="<?=$v_lastname?>" id="input-payment-lastname" placeholder="Last name">
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

            <select name="country_id" id="input-payment-country">
                <option value=""><?php echo $text_select; ?></option>
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
        <div class="bl-input must">
            <select name="zone_id" id="input-payment-zone">
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



<?php foreach ($custom_fields as $custom_field) { ?>
<?php if ($custom_field['location'] == 'address') { ?>
<?php if ($custom_field['type'] == 'select') { ?>
<div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
     class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
    <label class="control-label"
           for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
    <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]"
            id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
            class="shipping-input styled-select" style="width: 100%">
        <option value=""><?php echo $text_select; ?></option>
        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
        <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
        <?php } ?>
    </select>
</div>
<?php } ?>
<?php if ($custom_field['type'] == 'radio') { ?>
<div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
     class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
    <label class="control-label"><?php echo $custom_field['name']; ?></label>
    <div id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>">
        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
        <div class="radio">
            <label>
                <input type="radio"
                       name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]"
                       value="<?php echo $custom_field_value['custom_field_value_id']; ?>"/>
                <?php echo $custom_field_value['name']; ?></label>
        </div>
        <?php } ?>
    </div>
</div>
<?php } ?>
<?php if ($custom_field['type'] == 'checkbox') { ?>
<div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
     class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
    <label class="control-label"><?php echo $custom_field['name']; ?></label>
    <div id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>">
        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
        <div class="checkbox">
            <label>
                <input type="checkbox"
                       name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]"
                       value="<?php echo $custom_field_value['custom_field_value_id']; ?>"/>
                <?php echo $custom_field_value['name']; ?></label>
        </div>
        <?php } ?>
    </div>
</div>
<?php } ?>
<?php if ($custom_field['type'] == 'text') { ?>
<div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
     class="bl-input must" data-sort="<?php echo $custom_field['sort_order']; ?>">
    <input type="text"
           name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]"
           value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>"
           id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"/>
</div>
<?php } ?>
<?php if ($custom_field['type'] == 'textarea') { ?>
<div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
     class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
    <label class="control-label"
           for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
    <textarea
            name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]"
            rows="5" placeholder="<?php echo $custom_field['name']; ?>"
            id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
            class="form-control"><?php echo $custom_field['value']; ?></textarea>
</div>
<?php } ?>
<?php if ($custom_field['type'] == 'file') { ?>
<div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
     class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
    <label class="control-label"><?php echo $custom_field['name']; ?></label>
    <br/>
    <button type="button" id="button-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
            data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i
                class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
    <input type="hidden"
           name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]"
           value="" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"/>
</div>
<?php } ?>
<?php if ($custom_field['type'] == 'date') { ?>
<div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
     class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
    <label class="control-label"
           for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
    <div class="input-group date">
        <input type="text"
               name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]"
               value="<?php echo $custom_field['value']; ?>"
               placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD"
               id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
               class="form-control"/>
        <span class="input-group-btn">
          <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
          </span></div>
</div>
<?php } ?>
<?php if ($custom_field['type'] == 'time') { ?>
<div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
     class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
    <label class="control-label"
           for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
    <div class="input-group time">
        <input type="text"
               name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]"
               value="<?php echo $custom_field['value']; ?>"
               placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm"
               id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
               class="form-control"/>
        <span class="input-group-btn">
          <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
          </span></div>
</div>
<?php } ?>
<?php if ($custom_field['type'] == 'datetime') { ?>
<div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
     class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
    <label class="control-label"
           for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
    <div class="input-group datetime">
        <input type="text"
               name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]"
               value="<?php echo $custom_field['value']; ?>"
               placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm"
               id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"
               class="form-control"/>
        <span class="input-group-btn">
          <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
          </span></div>
</div>
<?php } ?>
<?php } ?>
<?php } ?>

<?php echo $captcha; ?>

<div class="include-price-row">
    <input type="checkbox" class="styled-checkbox styled-checkbox-before" name="newsletter" value="1" id="newsletter"/>
    <label for="newsletter"><?php echo $entry_newsletter; ?></label>
</div>

<?php if ($shipping_required):?>
<div class="include-price-row">
    <input type="checkbox" id="ps2" class="styled-checkbox styled-checkbox-before" name="shipping_address" value="1"
           checked="checked"/>
    <label for="ps2"><?php echo $entry_shipping; ?></label>
</div>
<?php endif?>


<?php if ($text_agree) : ?>

<div class="include-price-row no-bottom-margin" style="display: none">
    <input type="checkbox" class="styled-checkbox styled-checkbox-before" checked="checked" id="pc3" name="agree" value="1">
    <label for="pc3"><?php echo $text_agree; ?></label>
</div>


<div class="text-right">
    <button class="btn login-form-btn btn-lg active-c" id="button-register" data-loading-text="<?php echo $text_loading; ?>"
            style="width: 200px; display: inline-block;"><?php echo $button_continue; ?></button>
</div>
<?php else : ?>
<div class="include-price-row no-bottom-margin">
    <button class="btn w-btn-orange2" id="button-register"
            data-loading-text="<?php echo $text_loading; ?>"><?php echo $button_continue; ?></button>
</div>

<?php endif ?>


<p>
    Orders cannot be shipped to a P.O. Box<br/>
    Please make sure to provide a street address where a signature can be obtained for receipt
</p>

</div>


<script type="text/javascript"><!--
    // Sort the custom fields
    $('#account .cc-shipping-row[data-sort]').detach().each(function () {
        if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#account .cc-shipping-row').length) {
            $('#account .cc-shipping-row').eq($(this).attr('data-sort')).before(this);
        }

        if ($(this).attr('data-sort') > $('#account .cc-shipping-row').length) {
            $('#account .cc-shipping-row:last').after(this);
        }

        if ($(this).attr('data-sort') < -$('#account .cc-shipping-row').length) {
            $('#account .cc-shipping-row:first').before(this);
        }
    });

    $('#address .cc-shipping-row[data-sort]').detach().each(function () {
        if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#address .cc-shipping-row').length) {
            $('#address .cc-shipping-row').eq($(this).attr('data-sort')).before(this);
        }

        if ($(this).attr('data-sort') > $('#address .cc-shipping-row').length) {
            $('#address .cc-shipping-row:last').after(this);
        }

        if ($(this).attr('data-sort') < -$('#address .cc-shipping-row').length) {
            $('#address .cc-shipping-row:first').before(this);
        }
    });

    $('#collapse-payment-address input[name=\'customer_group_id\']').on('change', function () {
        $.ajax({
            url: 'index.php?route=checkout/checkout/customfield&customer_group_id=' + this.value,
            dataType: 'json',
            success: function (json) {
                $('#collapse-payment-address .custom-field').hide();
                $('#collapse-payment-address .custom-field').removeClass('required');

                for (i = 0; i < json.length; i++) {
                    custom_field = json[i];

                    $('#payment-custom-field' + custom_field['custom_field_id']).show();

                    if (custom_field['required']) {
                        $('#payment-custom-field' + custom_field['custom_field_id']).addClass('required');
                    }
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $('#collapse-payment-address input[name=\'customer_group_id\']:checked').trigger('change');
    //--></script>
<script type="text/javascript"><!--
    $('#collapse-payment-address button[id^=\'button-payment-custom-field\']').on('click', function () {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function () {
            if ($('#form-upload input[name=\'file\']').val() != '') {
                clearInterval(timer);

                $.ajax({
                    url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function () {
                        $(node).button('loading');
                    },
                    complete: function () {
                        $(node).button('reset');
                    },
                    success: function (json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input[name^=\'custom_field\']').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            alert(json['success']);

                            $(node).parent().find('input[name^=\'custom_field\']').attr('value', json['code']);
                        }
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });
    //--></script>

<script type="text/javascript"><!--
    $('#collapse-payment-address select[name=\'country_id\']').on('change', function () {
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

                html = '<option value=""><?php echo $text_select; ?></option>';

                if (json['zone'] && json['zone'] != '') {
                    for (i = 0; i < json['zone'].length; i++) {
                        html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                        if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                            html += ' selected="selected"';
                        }

                        html += '>' + json['zone'][i]['name'] + '</option>';
                    }
                } else {
                    html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
                }

                $('#collapse-payment-address select[name=\'zone_id\']').html(html);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $('#collapse-payment-address select[name=\'country_id\']').trigger('change');
    //--></script>
