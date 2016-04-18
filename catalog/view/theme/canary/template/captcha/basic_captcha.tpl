
<div class="contacts-form-row">
    <input id="it4" type="text" name="captcha"  class="contacts-input required" required>
    <label for="it4" class="label-placeholder">captcha<span class="reqstar">*</span></label>
    <img src="index.php?route=captcha/basic_captcha/captcha" alt="" />
    <?php if ($error_captcha) { ?>
    <div class="text-danger"><?php echo $error_captcha; ?></div>
    <?php } ?>
</div>
