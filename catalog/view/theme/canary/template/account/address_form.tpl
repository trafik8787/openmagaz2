<?php echo isset($header) ? $header : ''; ?>





<main class="w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <li> » </li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-12 padding-0">
                    <a href=""><img src="<?=get_baners_top_random()?>" class="bread-baner" ></a>
                </div>
            </div>
        </div>
    </div>
    <section class="static-page">

        <div class="account-page">
            <div class="center-bl">


                <div class="account-page-header">
                    <div class="account-page-title"><?php echo $text_edit_address; ?></div>

                </div>
                <div class="row">
                    <div class="col-md-9">
                        <div class="account-col-title"></div>
                        <form action="<?php echo $action; ?>"  method="post" enctype="multipart/form-data">

                            <div class="cc-shipping-row">
                                <label class="col-sm-2 control-label" for="input-firstname"><?php echo $entry_firstname; ?></label>
                                <input type="text" class="shipping-input" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname">
                                <?php if ($error_firstname) { ?>
                                <div class="text-danger"><?php echo $error_firstname; ?></div>
                                <?php } ?>
                            </div>


                            <div class="cc-shipping-row">
                                <label class="col-sm-2 control-label" for="input-lastname"><?php echo $entry_lastname; ?></label>
                                <input type="text" class="shipping-input" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname">
                                <?php if ($error_lastname) { ?>
                                <div class="text-danger"><?php echo $error_lastname; ?></div>
                                <?php } ?>
                            </div>

                            <div class="cc-shipping-row">
                                <label class="col-sm-2 control-label" for="input-company"><?php echo $entry_company; ?></label>
                                <input type="text" class="shipping-input" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-company">

                            </div>
                            <div class="cc-shipping-row">
                                <label class="col-sm-2 control-label" for="input-address-1"><?php echo $entry_address_1; ?></label>
                                <input type="text" class="shipping-input" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-address-1">
                                <?php if ($error_address_1) { ?>
                                <div class="text-danger"><?php echo $error_address_1; ?></div>
                                <?php } ?>
                            </div>
                            <div class="cc-shipping-row">
                                <label class="col-sm-2 control-label" for="input-address-2"><?php echo $entry_address_2; ?></label>
                                <input type="text" class="shipping-input" name="address_2" value="<?php echo $address_2; ?>" placeholder="<?php echo $entry_address_2; ?>" id="input-address-2">
                            </div>

                            <div class="cc-shipping-row">
                                <label class="col-sm-2 control-label" for="input-city"><?php echo $entry_city; ?></label>
                                <input type="text" class="shipping-input" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-city">
                                <?php if ($error_city) { ?>
                                <div class="text-danger"><?php echo $error_city; ?></div>
                                <?php } ?>
                            </div>


                            <div class="cc-shipping-row">
                                <label class="col-sm-2 control-label" for="input-postcode"><?php echo $entry_postcode; ?></label>
                                <input type="text" class="shipping-input" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-postcode">
                                <?php if ($error_postcode) { ?>
                                <div class="text-danger"><?php echo $error_postcode; ?></div>
                                <?php } ?>
                            </div>


                            <div class="cc-shipping-row">
                                <label class="col-sm-2 control-label" for="input-country"><?php echo $entry_country; ?></label>

                                <select name="country_id" id="input-country" class="shipping-input styled-select">
                                    <option value=""><?php echo $text_select; ?></option>
                                    <?php foreach ($countries as $country) { ?>
                                    <?php if ($country['country_id'] == $country_id) { ?>
                                    <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                    <?php } ?>
                                    <?php } ?>
                                </select>
                                <?php if ($error_country) { ?>
                                <div class="text-danger"><?php echo $error_country; ?></div>
                                <?php } ?>
                            </div>

                            <div class="cc-shipping-row">
                                <label class="col-sm-2 control-label" for="input-zone"><?php echo $entry_zone; ?></label>
                                <select name="zone_id" id="input-zone" class="shipping-input styled-select">
                                </select>
                                <?php if ($error_zone) { ?>
                                <div class="text-danger"><?php echo $error_zone; ?></div>
                                <?php } ?>
                            </div>



                            <?php foreach ($custom_fields as $custom_field) { ?>
                                <?php if ($custom_field['location'] == 'address') { ?>
                                    <?php if ($custom_field['type'] == 'select') { ?>
                                        <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                            <div class="col-sm-10">
                                                <select name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
                                                    <option value=""><?php echo $text_select; ?></option>
                                                    <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                                    <?php if (isset($address_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $address_custom_field[$custom_field['custom_field_id']]) { ?>
                                                    <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
                                                    <?php } else { ?>
                                                    <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
                                                    <?php } ?>
                                                    <?php } ?>
                                                </select>
                                                <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                                <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($custom_field['type'] == 'radio') { ?>
                                        <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                            <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                                            <div class="col-sm-10">
                                                <div>
                                                    <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                                    <div class="radio">
                                                        <?php if (isset($address_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $address_custom_field[$custom_field['custom_field_id']]) { ?>
                                                        <label>
                                                            <input type="radio" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                            <?php echo $custom_field_value['name']; ?></label>
                                                        <?php } else { ?>
                                                        <label>
                                                            <input type="radio" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                            <?php echo $custom_field_value['name']; ?></label>
                                                        <?php } ?>
                                                    </div>
                                                    <?php } ?>
                                                </div>
                                                <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                                <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($custom_field['type'] == 'checkbox') { ?>
                                        <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                            <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                                            <div class="col-sm-10">
                                                <div>
                                                    <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                                    <div class="checkbox">
                                                        <?php if (isset($address_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $address_custom_field[$custom_field['custom_field_id']])) { ?>
                                                        <label>
                                                            <input type="checkbox" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                            <?php echo $custom_field_value['name']; ?></label>
                                                        <?php } else { ?>
                                                        <label>
                                                            <input type="checkbox" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                            <?php echo $custom_field_value['name']; ?></label>
                                                        <?php } ?>
                                                    </div>
                                                    <?php } ?>
                                                </div>
                                                <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                                <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($custom_field['type'] == 'text') { ?>
                                        <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                            <div class="col-sm-10">
                                                <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                                <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                                <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($custom_field['type'] == 'textarea') { ?>
                                        <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                            <div class="col-sm-10">
                                                <textarea name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
                                                <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                                <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($custom_field['type'] == 'file') { ?>
                                        <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                            <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                                            <div class="col-sm-10">
                                                <button type="button" id="button-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                                <input type="hidden" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
                                                <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                                <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($custom_field['type'] == 'date') { ?>
                                        <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                            <div class="col-sm-10">
                                                <div class="input-group date">
                                                    <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                                    <span class="input-group-btn">
                                                    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                                    </span></div>
                                                <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                                <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($custom_field['type'] == 'time') { ?>
                                        <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                            <div class="col-sm-10">
                                                <div class="input-group time">
                                                    <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                                    <span class="input-group-btn">
                                                    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                                    </span></div>
                                                <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                                <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($custom_field['type'] == 'datetime') { ?>
                                        <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                            <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                            <div class="col-sm-10">
                                                <div class="input-group datetime">
                                                    <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($address_custom_field[$custom_field['custom_field_id']]) ? $address_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                                    <span class="input-group-btn">
                                                    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                                    </span></div>
                                                <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                                <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    <?php } ?>
                                <?php } ?>
                            <?php } ?>

                            <label class="col-sm-2 control-label"><?php echo $entry_default; ?></label>
                            <br>
                            <?php if ($default) { ?>

                                <div class="pay-radio-row">
                                    <input type="radio" name="default" value="1" checked="checked" id="default1"  class="styled-radio styled-radio-before">
                                    <label for="default1"><?php echo $text_yes; ?></label>
                                </div>

                                <div class="pay-radio-row">
                                    <input type="radio" name="default" value="0" id="default2"  class="styled-radio styled-radio-before">
                                    <label for="default1"><?php echo $text_no; ?></label>
                                </div>


                            <?php } else { ?>

                                <div class="pay-radio-row">
                                    <input type="radio" name="default" value="1" id="default1"  class="styled-radio styled-radio-before">
                                    <label for="default1"><?php echo $text_yes; ?></label>
                                </div>

                                <div class="pay-radio-row">
                                    <input type="radio" name="default" value="0" checked="checked" id="default2"  class="styled-radio styled-radio-before">
                                    <label for="default1"><?php echo $text_no; ?></label>
                                </div>

                            <?php } ?>
                            <div class="include-price-row no-bottom-margin">
                                <button type="submit" name="accaut_edit_submit" value="1" style="width: 50%"
                                        class="cc-continue-btn"><?php echo $button_continue; ?></button>
                            </div>

                        </form>


                    </div>

                    <div class="col-md-3">
                        <!--<div class="account-col-title">My wish list</div>-->
                        <?=$right_meny_accaunt?>
                    </div>
                </div>

            </div>
        </div>
    </section>
</main>














<script type="text/javascript"><!--
// Sort the custom fields
$('.form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('.form-group').length) {
		$('.form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('.form-group').length) {
		$('.form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('.form-group').length) {
		$('.form-group:first').before(this);
	}
});
//--></script>
<script type="text/javascript"><!--
$('button[id^=\'button-custom-field\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
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
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$(node).parent().find('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});
//--></script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/account/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
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

			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php echo isset($footer) ? $footer : ''; ?>
