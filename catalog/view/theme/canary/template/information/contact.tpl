<?php echo !empty($header) ? $header : '' ?>


<main class="w-general-container">
    <section class="static-page">
        <div class="center-bl">
            <ul class="breadcrumbs">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <li>></li>
                <?php } ?>

            </ul>
        </div>
        <div class="contacts-page">
            <div class="center-bl">
                <div class="contacts-top-block text-center">
                    <p class="contacts-block-title">Customer Service</p>
                    <p>We are available 24 hours a day, 7 days a week.</p>
                </div>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="col-md-5 text-center">
                            <div class="contacts-info-block">
                                <p class="contacts-block-title">Chat now</p>
                                <p>Get the instant answer to your questions..</p>
                            </div>
                            <div class="contacts-info-block">
                                <p class="contacts-block-title">Call Us</p>
                                <p>USA: <?php echo $telephone; ?></p>
                                <p>Outside USA: +1 301 631 1414</p>
                            </div>
                            <div class="contacts-info-block">
                                <p class="contacts-block-title">Call Back</p>
                                <p>Enter your phone number and we will call you right back.</p>
                            </div>
                            <div class="contacts-info-block">
                                <p class="contacts-block-title">Email Us</p>
                                <p>All questions will be answered within two business days.</p>
                            </div>
                        </div>
                        <div class="col-md-5 col-md-offset-2">
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                <div class="form-title">Send a Message</div>
                                <div class="contacts-form-row">
                                    <input id="it1" type="text" name="name" value="<?php echo $name; ?>" class="contacts-input required" required>
                                    <label for="it1" class="label-placeholder">name<span class="reqstar">*</span></label>
                                </div>
                                <div class="contacts-form-row">
                                    <input id="it2" type="email" name="email" value="<?php echo $email; ?>" class="contacts-input required" required>
                                    <label for="it2" class="label-placeholder">e-mail<span class="reqstar">*</span></label>
                                </div>
                                <div class="contacts-form-row">
                                    <input id="it3" type="text" class="contacts-input required" required>
                                    <label for="it3" class="label-placeholder">phone<span class="reqstar">*</span></label>
                                </div>
                                <div class="contacts-form-row contacts-form-row-mend">
                                    <label for="ta1">message<span class="reqstar">*</span></label>
                                    <textarea id="ta1" cols="30" name="enquiry" rows="5" class="contacts-textarea required" required><?php echo $enquiry; ?></textarea>
                                </div>
                                <?php echo $captcha; ?>
                                <div class="contacts-form-row text-right">
                                    <button class="contacts-send-btn"><?php echo $button_submit; ?></button>
                                </div>

                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</main>



<?php echo !empty($footer) ? $footer : '' ?>
