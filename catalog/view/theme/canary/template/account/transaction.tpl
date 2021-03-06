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
                        <div class="account-col-title"><?php echo $text_total; ?> <b><?php echo $total; ?></b></div>

                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <td class="text-left"><?php echo $column_date_added; ?></td>
                                    <td class="text-left"><?php echo $column_description; ?></td>
                                    <td class="text-right"><?php echo $column_amount; ?></td>
                                </tr>
                                </thead>
                                <tbody>
                                <?php if ($transactions) { ?>
                                <?php foreach ($transactions  as $transaction) { ?>
                                <tr>
                                    <td class="text-left"><?php echo $transaction['date_added']; ?></td>
                                    <td class="text-left"><?php echo $transaction['description']; ?></td>
                                    <td class="text-right"><?php echo $transaction['amount']; ?></td>
                                </tr>
                                <?php } ?>
                                <?php } else { ?>
                                <tr>
                                    <td class="text-center" colspan="5"><?php echo $text_empty; ?></td>
                                </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                            <div class="col-sm-6 text-right"><?php echo $results; ?></div>
                        </div>

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