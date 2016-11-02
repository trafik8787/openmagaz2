<?php echo !empty($header) ? $header : '' ?>


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
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="right-checkout none-border">
                                <div class="form-title">Send a Message</div>
                                <div class="contacts-form-row bl-input must">
                                    <input id="it1" type="text" name="name" value="<?php echo $name; ?>" class="contacts-input required" placeholder="Name" required>
                                </div>
                                <div class="contacts-form-row bl-input must">
                                    <input id="it2" type="text" name="email" value="<?php echo $email; ?>" class="contacts-input required" placeholder="E-mail" required>
                                </div>
                                <div class="contacts-form-row bl-input must">
                                    <input id="it3" type="text" class="contacts-input required" placeholder="Phone" required>
                                </div>
                                <div class="contacts-form-row contacts-form-row-mend bl-input must">
                                    <textarea id="ta1" cols="30" name="enquiry" rows="5" class="contacts-textarea required" placeholder="Message" required><?php echo $enquiry; ?></textarea>

                                </div>
                                <?php echo $captcha; ?>
                                <div class="contacts-form-row text-right">
                                    <button class="login-form-btn"><?php echo $button_submit; ?></button>
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
