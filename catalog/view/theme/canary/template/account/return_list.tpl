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

                        <?php if ($returns) { ?>
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <td class="text-right"><?php echo $column_return_id; ?></td>
                                    <td class="text-left"><?php echo $column_status; ?></td>
                                    <td class="text-left"><?php echo $column_date_added; ?></td>
                                    <td class="text-right"><?php echo $column_order_id; ?></td>
                                    <td class="text-left"><?php echo $column_customer; ?></td>
                                    <td></td>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($returns as $return) { ?>
                                <tr>
                                    <td class="text-right">#<?php echo $return['return_id']; ?></td>
                                    <td class="text-left"><?php echo $return['status']; ?></td>
                                    <td class="text-left"><?php echo $return['date_added']; ?></td>
                                    <td class="text-right"><?php echo $return['order_id']; ?></td>
                                    <td class="text-left"><?php echo $return['name']; ?></td>
                                    <td><a href="<?php echo $return['href']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-info"><i class="fa fa-eye"></i></a></td>
                                </tr>
                                <?php } ?>
                                </tbody>
                            </table>
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