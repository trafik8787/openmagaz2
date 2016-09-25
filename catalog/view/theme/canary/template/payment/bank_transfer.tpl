<div class="h3 text-center"><?php echo $text_instruction; ?></div>
<p class="text-center"><b><?php echo $text_description; ?></b></p>
<div class="well well-sm">
  <p><?php echo $bank; ?></p>
  <p><?php echo $text_payment; ?></p>
</div>
<div class="include-price-row no-bottom-margin">
    <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="cc-continue-btn" data-loading-text="<?php echo $text_loading; ?>" />
</div>
<script type="text/javascript"><!--
$('#button-confirm').on('click', function() {
	$.ajax({
		type: 'get',
		url: 'index.php?route=payment/bank_transfer/confirm',
		cache: false,
		beforeSend: function() {
			$('#button-confirm').button('loading');
		},
		complete: function() {
			$('#button-confirm').button('reset');
		},
		success: function() {
			location = '<?php echo $continue; ?>';
		}
	});
});
//--></script>
