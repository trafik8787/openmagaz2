
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

        <div class="wish-list-page forgotten-page">
            <div class="center-bl">
                <?php if ($error_warning) { ?>
                <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
                <?php } ?>
                <?if (!empty($susses)):?>
                    <div class="alert alert-success"><i class="fa fa-check-circle"></i> Success: You have unsubscribed from the mailing list</div>
                <?endif?>
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
                        <h1>Unsubscribe</h1>
                        <!--*<p><?php echo $text_email; ?></p>*-->
                        <form method="post" class="form-inline form-static" role="form" enctype="multipart/form-data">


                            <div class="form-group ">
                                <label class="sr-only" for="exampleInputEmail2">Email</label>
                                <input type="email" class="form-control" name="email" placeholder="Enter email">
                            </div>
                            <button type="submit" class="btn w-btn-orange2">SUBMIT</button>
                        </form>
                        <?php echo $content_bottom; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>


<?php echo isset($footer) ? $footer : ''; ?>
