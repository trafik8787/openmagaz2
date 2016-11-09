
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
                    <a href="<?=get_baners_top_random()[1]?>"><img src="<?=get_baners_top_random()[0]?>" class="bread-baner" ></a>
                </div>
            </div>
        </div>
    </div>
    <section class="static-page">

        <div class="wish-list-page forgotten-page">
            <div class="center-bl">
                <?php if ($error_warning) { ?>
                <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
                <?php } ?>
                <div class="row">
                    <?php echo $column_left; ?>
                    <?php if ($column_left && $column_right) { ?>
                    <?php $class = 'col-sm-6'; ?>
                    <?php } elseif ($column_left || $column_right) { ?>
                    <?php $class = 'col-sm-9'; ?>
                    <?php } else { ?>
                    <?php $class = 'col-sm-12'; ?>
                    <?php } ?>
                    <div id="content" class="col-xs-12">
                        <?php echo $content_top; ?>
                        <h1><?php echo $heading_title; ?></h1>
                        <p><?php echo $text_email; ?></p>
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                            <fieldset>
                                <legend><?php echo $text_your_email; ?></legend>
                                <br>
                                <div class="form-group required">
                                    <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                                    <div>
                                        <input type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                                    </div>
                                </div>
                            </fieldset>
                            <div class="buttons clearfix">
                                <div class="pull-left"><a href="<?php echo $back; ?>" class="btn w-btn-white w-btn-short"><?php echo $button_back; ?></a></div>
                                <div class="pull-right">
                                    <input type="submit" value="<?php echo $button_continue; ?>" class="btn w-btn-orange w-btn-short" />
                                </div>
                            </div>
                        </form>
                        <?php echo $content_bottom; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>


<?php echo isset($footer) ? $footer : ''; ?>







