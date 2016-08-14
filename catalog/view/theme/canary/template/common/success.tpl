<?php echo isset($header) ? $header : ''; ?>


    <main class="w-general-container">
    <hr class="fade-2">
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
                    <h1><?php echo $heading_title; ?></h1>
                    <?php echo $text_message; ?>
                </div>
            </div>
        </section>
    </main>


<?php echo isset($footer) ? $footer : ''; ?>