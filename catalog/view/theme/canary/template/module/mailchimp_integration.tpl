<?php

?>

<?php $module_id = rand(); ?>

<div id="mi<?php echo $module_id; ?>" class="mailchimp-integration box">

	<div class="box-content">
        <form class="form-inline w-newsletter-form">
            <div class="mi-message"></div>


            <div class="mi-block form-group">
                <?if (!empty($coupon)):?>
                <input type="hidden" name="coupon" value="1">
                <?else:?>
                <input type="hidden" name="coupon" value="0">
                <?endif?>
                <input type="text" data-container="body" data-placement="top" data-content="" placeholder="Enter e-mail" class="form-control newslet-email" name="email" onkeydown="if (event.keyCode == 13) miSubscribe<?php echo $module_id; ?>($(this))" <?php if ($email) echo 'value="' . $email . '" disabled="disabled"'; ?> />
            </div>


            <?php if ($interest_groups && !empty($settings['moduletext_interestgroups_'.$language])) { ?>
                <div class="mi-toptext"><?php echo html_entity_decode($settings['moduletext_interestgroups_'.$language], ENT_QUOTES, 'UTF-8'); ?></div>
            <?php } ?>



            <button type="button" class="btn w-btn-orange2" onclick="miSubscribe<?php echo $module_id; ?>($(this))"><?php echo $settings['moduletext_button_'.$language]; ?></button>


        </form>
	</div>
</div>
<div class="modal fade" id="w-modal-newslrtter" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <div class="modal-body text-center">
                <p class="w-modal-button">
                    <span class="text-centr">Thank you for signing up for our exclusive offers.</span>
                </p>
                <div class="line-price-product clearfix">
                    <p>
                        <button class="btn w-btn-orange2" aria-hidden="true" data-dismiss="modal" type="button">Close</button>
                    </p>
                </div>

            </div>

        </div>
    </div>
</div>
<script>
	<?php if (!empty($settings['modules_zone']) && $settings['modules_zone'] != 'hide') { ?>
		$('.mailchimp-integration select[name="country"]').change(function(){
			element = $(this);
			$.getJSON('index.php?route=<?php echo $type; ?>/<?php echo $name; ?>/getZones&country_id=' + element.val(), function(data) {
				zones = element.parent().parent().find('select[name="zone"]');
				zones.find('option').remove();
				for (i = 0; i < data.length; i++) {
					zones.append('<option value="' + data[i]['zone_id'] + '"' + (data[i]['zone_id'] == <?php echo $zone_id; ?> ? 'selected="selected"' : '') + '>' + data[i]['name'] + '</option>');
				}
			});
		});
		$('.mailchimp-integration select[name="country"]').each(function(){
			$(this).change();
		});
	<?php } ?>
	
	function miSubscribe<?php echo $module_id; ?>(element) {
		var message = element.parent().parent().find('.mi-message');
		element.parent().parent().find('a.button').attr('disabled', 'disabled');
		message.slideUp(function(){
			message.removeClass('attention success warning alert alert-warning alert-danger');
			
			if (!$.trim(element.parent().parent().find('input[name="email"]').val()).match(/^[^\@]+@.*\.[a-z]{2,6}$/i)) {
				
				message.html('<?php echo str_replace("'", "\'", $settings['moduletext_invalidemail_'.$language]); ?>').addClass('attention alert alert-warning').slideDown();
				element.parent().parent().find('a.button').removeAttr('disabled');
			<?php foreach (array('firstname', 'lastname', 'telephone', 'address', 'city', 'postcode', 'zone', 'country') as $field) { ?>
				<?php if (!$email && isset($settings['modules_' . $field]) && $settings['modules_' . $field] == 'required') { ?>
					} else if (!$.trim(element.parent().parent().find('input[name="<?php echo $field; ?>"]').val())) {
						message.html('<?php echo str_replace("'", "\'", $settings['moduletext_emptyfield_'.$language]); ?>').addClass('attention alert alert-warning').slideDown();
						element.parent().parent().find('a.button').removeAttr('disabled');
				<?php } ?>
			<?php } ?>
				
			} else {

			    $.ajax({
					type: 'POST',
					url: '/index.php?route=<?php echo $type; ?>/<?php echo $name; ?>/subscribe',
					data: element.parent().parent().find(':input:not(:checkbox,:radio), :checkbox:checked, :radio:checked'),
					success: function(error) {
						if (error.indexOf('Use PUT to insert or update list members') != -1) {
						    message.html('<?php echo html_entity_decode($settings['moduletext_subscribed_'.$language], ENT_QUOTES, 'UTF-8'); ?>'.replace('[email]', $('input[name="email"]').val())).addClass('warning alert alert-danger').slideDown();
						} else if (error) {
                            $('.newslet-email').attr('data-content', <?php echo ($settings['moduletext_error_'.$language]) ? str_replace("'", "\'", $settings['moduletext_error_'.$language]) . "'" : 'error'; ?>);
						    $('.newslet-email').popover('show');

						} else {
							var messageText = '<?php echo str_replace("'", "\'", $settings['moduletext_' . ($subscribed && $interest_groups ? 'updated' : 'success') . '_' . $language]); ?>';
							<?php if ($settings['modules_redirect']) { ?>
								alert(messageText);
								location = '<?php echo $settings['modules_redirect']; ?>';
							<?php } elseif ($popup) { ?>
								alert(messageText);
								$('#mi-modal-overlay, .mailchimp-integration').fadeOut();
							<?php } else { ?>
								//message.html(messageText).addClass('success alert alert-success').slideDown();
                                $('#ModalHomeSubskribe').modal('hide');
                                $('#w-modal-newslrtter').modal('show');
							<?php } ?>
						} 
						element.parent().parent().find('a.button').removeAttr('disabled');
					}
				});
			}
			
		});
	}
</script>
