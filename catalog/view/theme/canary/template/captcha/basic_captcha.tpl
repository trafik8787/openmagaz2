
<div class="contacts-form-row" style="margin-bottom: 40px;">
    <input id="w-id-capcha" type="text" name="captcha"  class="contacts-input required" required>
    <label for="w-id-capcha" class="label-placeholder">Captcha<span class="reqstar">*</span></label>
    <img src="index.php?route=captcha/basic_captcha/captcha" alt="" style="position: absolute;"/>
    <?php if ($error_captcha) { ?>
        <div class="text-danger"><?php echo $error_captcha; ?></div>
    <?php } ?>
</div>
