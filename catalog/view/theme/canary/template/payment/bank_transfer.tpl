<div class="h3 text-center"><?php echo $text_instruction; ?></div>
<p class="text-center"><b><?php echo $text_description; ?></b></p>
<div class="well well-sm">
  <p><?php echo $bank; ?></p>
  <p><?php echo $text_payment; ?></p>
</div>


<div class="text-center">
    <div class="box-btn-checkout">

        <input type="button" class="btn login-form-btn btn-lg active-c" id="button-confirm" value="<?php echo $button_confirm; ?>" data-loading-text="<?php echo $text_loading; ?>"
               style="width: 200px; display: inline-block;" />
    </div>
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
