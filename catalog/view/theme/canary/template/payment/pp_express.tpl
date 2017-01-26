<div class="mark-line">
    <i class="mark-check1"></i>
    Your billing information must match the billing address for the credit card entered below
    or we will be unable to process your payment
</div>
<div class="clearfix box-card-l" style="color: #fff">

</div>

<!--*<div class="text-center">*-->
    <!--*<div class="box-btn-checkout">*-->
        <!--*<a href="<?php echo $button_continue_action; ?>" class="btn login-form-btn btn-lg active-c" style="width: 200px; display: inline-block;"><?php echo $button_continue; ?></a>*-->
    <!--*</div>*-->
<!--*</div>*-->

<script type="text/javascript"><!--
    <?if ($logged):?>
        $('.box-btn-checkout').html('<a href="<?php echo $button_continue_action; ?>" class="btn login-form-btn btn-lg w-submit-order-checout"><i class="submit-order-ico"></i> SUBMIT ORDER</a>');
    <?else:?>
        $('.box-btn-checkout').html('<a id="button-register" class="btn login-form-btn btn-lg w-submit-order-checout"><i class="submit-order-ico"></i> SUBMIT ORDER</a>');
    <?endif?>
//--></script>