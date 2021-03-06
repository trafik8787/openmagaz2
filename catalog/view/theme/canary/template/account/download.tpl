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

                        <?php if ($downloads) { ?>
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <td class="text-right"><?php echo $column_order_id; ?></td>
                                <td class="text-left"><?php echo $column_name; ?></td>
                                <td class="text-left"><?php echo $column_size; ?></td>
                                <td class="text-left"><?php echo $column_date_added; ?></td>
                                <td></td>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($downloads as $download) { ?>
                            <tr>
                                <td class="text-right"><?php echo $download['order_id']; ?></td>
                                <td class="text-left"><?php echo $download['name']; ?></td>
                                <td class="text-left"><?php echo $download['size']; ?></td>
                                <td class="text-left"><?php echo $download['date_added']; ?></td>
                                <td><a href="<?php echo $download['href']; ?>" data-toggle="tooltip" title="<?php echo $button_download; ?>" class="btn btn-primary"><i class="fa fa-cloud-download"></i></a></td>
                            </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                        <div class="row">
                            <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                            <div class="col-sm-6 text-right"><?php echo $results; ?></div>
                        </div>
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