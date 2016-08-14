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
                                        <td class="text-right"><a href="<?php echo $result['update']; ?>" class="account-col-view-link w-general-category"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="account-col-view-link"><?php echo $button_delete; ?></a></td>
                                    </tr>
                                <?endforeach?>
                            </table>
                        <?else:?>
                            <p><?php echo $text_empty; ?></p>
                        <?endif?>
                        <div class="buttons clearfix">
                            <div class="pull-right"><a href="<?php echo $add; ?>" class="account-col-view-link"><?php echo $button_new_address; ?></a></div>
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