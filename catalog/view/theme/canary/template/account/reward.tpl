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
                        <div class="account-col-title"><?php echo $text_total; ?><b> <?php echo $total; ?></b></div>

                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <td class="text-left"><?php echo $column_date_added; ?></td>
                                    <td class="text-left"><?php echo $column_description; ?></td>
                                    <td class="text-right"><?php echo $column_points; ?></td>
                                </tr>
                                </thead>
                                <tbody>
                                <?php if ($rewards) { ?>
                                <?php foreach ($rewards  as $reward) { ?>
                                <tr>
                                    <td class="text-left"><?php echo $reward['date_added']; ?></td>
                                    <td class="text-left"><?php if ($reward['order_id']) { ?>
                                        <a href="<?php echo $reward['href']; ?>"><?php echo $reward['description']; ?></a>
                                        <?php } else { ?>
                                        <?php echo $reward['description']; ?>
                                        <?php } ?></td>
                                    <td class="text-right"><?php echo $reward['points']; ?></td>
                                </tr>
                                <?php } ?>
                                <?php } else { ?>
                                <tr>
                                    <td class="text-center" colspan="3"><?php echo $text_empty; ?></td>
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