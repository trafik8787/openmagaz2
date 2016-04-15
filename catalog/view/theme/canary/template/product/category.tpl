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
            <!--<h2><?php echo $heading_title; ?></h2>-->


        </div>

        <div class="list-product w-category-ajax">



        </div>

    </section>
</main>

<?php echo isset($footer) ? $footer : ''; ?>
