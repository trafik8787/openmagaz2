<div class="mark-line">
    <i class="mark-check1"></i>
    <?php echo $text_instruction; ?><br>
    <!--*<?php echo $text_description; ?>*-->
    <?php echo $text_payment; ?>
</div>

<div class="clearfix box-card-l" style="color: #fff">
    <?php echo $bank; ?>
</div>



<script type="text/javascript"><!--
$('.box-btn-checkout').html('<button class="btn login-form-btn btn-lg w-submit-order-checout" id="button-confirm" data-loading-text="Loading..."> <i class="submit-order-ico"></i> SUBMIT ORDER</button>');
$(document).on('click', '#button-confirm',   function() {
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
