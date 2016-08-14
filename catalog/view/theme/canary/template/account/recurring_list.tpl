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
        <div class="account-page">
            <div class="center-bl">


                <div class="account-page-header">
                    <div class="account-page-title"><?php echo $heading_title; ?></div>

                </div>
                <div class="row">
                    <div class="col-md-9">
                        <div class="account-col-title"></div>

                        <?php if ($recurrings) { ?>
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $column_recurring_id; ?></td>
                                        <td class="text-left"><?php echo $column_date_added; ?></td>
                                        <td class="text-left"><?php echo $column_status; ?></td>
                                        <td class="text-left"><?php echo $column_product; ?></td>
                                        <td class="text-right"><?php echo $column_action; ?></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php foreach ($recurrings as $recurring) { ?>
                                    <tr>
                                        <td class="text-left">#<?php echo $recurring['id']; ?></td>
                                        <td class="text-left"><?php echo $recurring['date_added']; ?></td>
                                        <td class="text-left"><?php echo $status_types[$recurring['status']]; ?></td>
                                        <td class="text-left"><?php echo $recurring['name']; ?></td>
                                        <td class="text-right"><a href="<?php echo $recurring['href']; ?>" class="btn btn-info"><?php echo $button_view; ?></a></td>
                                    </tr>
                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="text-right"><?php echo $pagination; ?></div>
                        <?php } else { ?>
                            <p><?php echo $text_empty; ?></p>
                        <?php } ?>

                    </div>

                    <div class="col-md-3">
                        <!--<div class="account-col-title">My wish list</div>-->
                        <?=$right_meny_accaunt?>
                    </div>
                </div>

            </div>
        </div>
    </section>
</main>






<?php echo isset($footer) ? $footer : ''; ?>