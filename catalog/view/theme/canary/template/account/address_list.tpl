<?php echo isset($header) ? $header : ''; ?>



<main class="w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <li>&nbsp;»&nbsp;</li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-12 padding-0">
                    <a href="<?=get_baners_top_random()[1]?>"><img src="<?=get_baners_top_random()[0]?>" class="bread-baner" ></a>
                </div>
            </div>
        </div>
    </div>
    <section class="static-page">

        <div class="account-page">
            <div class="center-bl">

                <?php if ($success) { ?>
                    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
                <?php } ?>

                <?php if ($error_warning) { ?>
                    <div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
                <?php } ?>

                <div class="account-page-header">
                    <div class="account-page-title"><?php echo $text_address_book; ?></div>

                </div>
                <div class="row">
                    <div class="col-md-9">
                        <div class="account-col-title"></div>

                        <?php if ($addresses) :?>
                            <table class="table table-bordered table-hover">
                                <?php foreach ($addresses as $result):?>
                                    <tr>
                                        <td class="text-left"><?php echo $result['address']; ?></td>
                                        <td class="text-right"><a href="<?php echo $result['update']; ?>" class="btn w-btn-orange2 w-general-category"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="btn w-btn-orange2"><?php echo $button_delete; ?></a></td>
                                    </tr>
                                <?endforeach?>
                            </table>
                        <?else:?>
                            <p><?php echo $text_empty; ?></p>
                        <?endif?>
                        <div class="buttons clearfix">
                            <div class="pull-right"><a href="<?php echo $add; ?>" class="btn w-btn-orange2"><?php echo $button_new_address; ?></a></div>
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