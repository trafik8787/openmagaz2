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

                <?php if ($success) { ?>
                    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                    </div>
                <?php } ?>
                <?php if ($error_warning) { ?>
                    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                    </div>
                <?php } ?>

                <div class="account-page-header">
                    <div class="account-page-title"><?php echo $heading_title; ?></div>

                </div>
                <div class="row">
                    <div class="col-md-9">
                        <div class="account-col-title"></div>


                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <td class="text-left" colspan="2"><?php echo $text_order_detail; ?></td>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="text-left" style="width: 50%;"><?php if ($invoice_no) { ?>
                                        <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
                                        <?php } ?>
                                        <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
                                        <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
                                    <td class="text-left"><?php if ($payment_method) { ?>
                                        <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />
                                        <?php } ?>
                                        <?php if ($shipping_method) { ?>
                                        <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
                                        <?php } ?></td>
                                </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <td class="text-left" style="width: 50%;"><?php echo $text_payment_address; ?></td>
                                    <?php if ($shipping_address) { ?>
                                    <td class="text-left"><?php echo $text_shipping_address; ?></td>
                                    <?php } ?>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="text-left"><?php echo $payment_address; ?></td>
                                    <?php if ($shipping_address) { ?>
                                    <td class="text-left"><?php echo $shipping_address; ?></td>
                                    <?php } ?>
                                </tr>
                                </tbody>
                            </table>
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $column_name; ?></td>
                                        <td class="text-left"><?php echo $column_model; ?></td>
                                        <td class="text-right"><?php echo $column_quantity; ?></td>
                                        <td class="text-right"><?php echo $column_price; ?></td>
                                        <td class="text-right"><?php echo $column_total; ?></td>
                                        <?php if ($products) { ?>
                                        <td style="width: 20px;"></td>
                                        <?php } ?>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php foreach ($products as $product) { ?>
                                    <tr>
                                        <td class="text-left"><?php echo $product['name']; ?>
                                            <?php foreach ($product['option'] as $option) { ?>
                                            <br />
                                            &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                                            <?php } ?></td>
                                        <td class="text-left"><?php echo $product['model']; ?></td>
                                        <td class="text-right"><?php echo $product['quantity']; ?></td>
                                        <td class="text-right"><?php echo $product['price']; ?></td>
                                        <td class="text-right"><?php echo $product['total']; ?></td>
                                        <td class="text-right" style="white-space: nowrap;"><?php if ($product['reorder']) { ?>
                                            <a href="<?php echo $product['reorder']; ?>" data-toggle="tooltip" title="<?php echo $button_reorder; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i></a>
                                            <?php } ?>
                                            <a href="<?php echo $product['return']; ?>" data-toggle="tooltip" title="<?php echo $button_return; ?>" class="btn btn-danger"><i class="fa fa-reply"></i></a></td>
                                    </tr>
                                    <?php } ?>
                                        <?php foreach ($vouchers as $voucher) { ?>
                                            <tr>
                                                <td class="text-left"><?php echo $voucher['description']; ?></td>
                                                <td class="text-left"></td>
                                                <td class="text-right">1</td>
                                                <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                                <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                                <?php if ($products) { ?>
                                                    <td></td>
                                                <?php } ?>
                                            </tr>
                                        <?php } ?>

                                        </tbody>
                                        <tfoot>
                                        <?php foreach ($totals as $total) { ?>
                                        <tr>
                                            <td colspan="3"></td>
                                            <td class="text-right"><b><?php echo $total['title']; ?></b></td>
                                            <td class="text-right"><?php echo $total['text']; ?></td>
                                            <?php if ($products) { ?>
                                                <td></td>
                                            <?php } ?>
                                        </tr>
                                    <?php } ?>
                                    </tfoot>
                                </table>
                            </div>
                            <?php if ($comment) { ?>
                                <table class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $text_comment; ?></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="text-left"><?php echo $comment; ?></td>
                                    </tr>
                                    </tbody>
                                </table>
                            <?php } ?>
                            <?php if ($histories) { ?>
                                <h3><?php echo $text_history; ?></h3>
                                <table class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $column_date_added; ?></td>
                                        <td class="text-left"><?php echo $column_status; ?></td>
                                        <td class="text-left"><?php echo $column_comment; ?></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php foreach ($histories as $history) { ?>
                                    <tr>
                                        <td class="text-left"><?php echo $history['date_added']; ?></td>
                                        <td class="text-left"><?php echo $history['status']; ?></td>
                                        <td class="text-left"><?php echo $history['comment']; ?></td>
                                    </tr>
                                    <?php } ?>
                                    </tbody>
                                </table>
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