<?php echo isset($header) ? $header : ''; ?>


    <main class="w-general-container">
        <section class="static-page">
            <div class="center-bl">
                <ul class="breadcrumbs">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <li>></li>
                    <?php } ?>
                </ul>

                <?php echo $content_top; ?>

            </div>


            <div class="cart-page">
                <div class="center-bl">
                    <div class="cart-header"><?php echo $heading_title; ?></div>
                    <hr>
                    <p><?php echo $text_error; ?></p>



                </div>
            </div>
        </section>
    </main>


<?php echo isset($footer) ? $footer : ''; ?>