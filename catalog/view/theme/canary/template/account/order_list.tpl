<?php echo isset($header) ? $header : ''; ?>






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

        <div class="account-page">
            <div class="center-bl">


                <div class="account-page-header">
                    <div class="account-page-title"><?php echo $heading_title; ?></div>

                </div>
                <div class="row">
                    <div class="col-md-9">
                        <div class="account-col-title"></div>
                        <?php if ($orders) { ?>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <td class="text-right"><?php echo $column_order_id; ?></td>
                                    <td class="text-left"><?php echo $column_status; ?></td>
                                    <td class="text-left"><?php echo $column_date_added; ?></td>
                                    <td class="text-right"><?php echo $column_product; ?></td>
                                    <td class="text-left"><?php echo $column_customer; ?></td>
                                    <td class="text-right"><?php echo $column_total; ?></td>
                                    <td></td>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($orders as $order) { ?>
                                <tr>
                                    <td class="text-right">#<?php echo $order['order_id']; ?></td>
                                    <td class="text-left"><?php echo $order['status']; ?></td>
                                    <td class="text-left"><?php echo $order['date_added']; ?></td>
                                    <td class="text-right"><?php echo $order['products']; ?></td>
                                    <td class="text-left"><?php echo $order['name']; ?></td>
                                    <td class="text-right"><?php echo $order['total']; ?></td>
                                    <td class="text-right"><a href="<?php echo $order['href']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="account-col-view-link w-general-category"><i class="fa fa-eye"></i></a></td>
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