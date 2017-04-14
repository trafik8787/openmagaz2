
<div class="line-with-input">
    <div class="title-c">BILLING ADDRESS</div>


    <address>
        <b><?=$addresses[$address_id]['firstname']?> <?=$addresses[$address_id]['lastname']?></b><br>
        <?=$addresses[$address_id]['address_1']?><br>
        <?=$addresses[$address_id]['country']?> <?=$addresses[$address_id]['zone']?>, <?=$addresses[$address_id]['postcode']?><br>
        <?=$addresses[$address_id]['address_2']?>
    </address>
    <form class="form-horizontal">
      <?php if ($addresses) { ?>
          <div class="radio">
            <label>
              <input type="radio" name="payment_address" value="existing" checked="checked" />
              <?php echo $text_address_existing; ?></label>
          </div>



        <a href="/index.php?route=account/address/edit&address_id=<?=$address_id?>" class="btn btn-primary btn-xs">Edit</a>
      <?php } ?>

        <hr>


        <div class="title-c">SHIPPING ADDRESS</div>

        <div id="collapse-payment-address_shipping">
            <div id="shiping_adress_form_2">

                <div class="line-with-input">

                    <div class="clearfix">
                        <div class="bl-input must">
                            <input type="text" name="firstname_s"  id="input-payment-firstname" value="<?=$shipping_addresses['firstname']?>" placeholder="First name">
                        </div>
                        <div class="bl-input must">
                            <input type="text" name="lastname_s"  id="input-payment-lastname" value="<?=$shipping_addresses['lastname']?>" placeholder="Last name">
                        </div>
                    </div>
                    <div class="clearfix">
                        <div class="bl-input must">
                            <input type="text" name="address_1_s" id="input-payment-address-1" value="<?=$shipping_addresses['address_1']?>" placeholder="Address">
                        </div>
                        <div class="bl-input">
                            <input type="text" name="address_2_s" id="input-payment-address-2" value="<?=$shipping_addresses['address_2']?>" placeholder="Address (cont.)">
                        </div>
                    </div>

                    <div class="clearfix">
                        <div class="bl-input must">
                            <input type="text" name="city_s" id="input-payment-city" value="<?=$shipping_addresses['city']?>" placeholder="City">
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
                                    <?php if ($country['country_id'] == $shipping_addresses['country_id']) { ?>
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
                            <input type="text" name="postcode_s" id="input-payment-postcode" value="<?=$shipping_addresses['postcode']?>" placeholder="Postal code">
                        </div>
                    </div>

                </div>

            </div>
        </div>


    </form>

</div>


<script type="text/javascript">

    $('#collapse-payment-address_shipping select[name=\'country_id_s\']').on('change', function() {
        $.ajax({
            url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
            dataType: 'json',
            beforeSend: function() {
                $('#collapse-payment-address_shipping select[name=\'country_id_s\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
            },
            complete: function() {
                $('.fa-spin').remove();
            },
            success: function(json) {
                if (json['postcode_required'] == '1') {
                    $('#collapse-payment-address_shipping input[name=\'postcode_s\']').parent().parent().addClass('required');
                } else {
                    $('#collapse-payment-address_shipping input[name=\'postcode_s\']').parent().parent().removeClass('required');
                }

                html = '<option value=""><?php echo $text_select; ?></option>';

                if (json['zone'] && json['zone'] != '') {
                    for (i = 0; i < json['zone'].length; i++) {
                        html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                        if (json['zone'][i]['zone_id'] == '<?=$shipping_addresses['zone_id']; ?>') {
                            html += ' selected="selected"';
                        }

                        html += '>' + json['zone'][i]['name'] + '</option>';
                    }
                } else {
                    html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
                }

                $('#collapse-payment-address_shipping select[name=\'zone_id_s\']').html(html);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $('#collapse-payment-address_shipping select[name=\'country_id_s\']').trigger('change');

</script>