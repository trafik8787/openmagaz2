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

        <div class="account-page">
            <div class="center-bl">
                <?php if ($success) { ?>
                    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
                <?php } ?>
                <div class="account-page-header">
                    <div class="account-page-title"><?php echo $text_my_account; ?></div>
                    <p>Hi <?=$customer->getFirstName()?>, welcome to your account!</p>

                </div>
                <div class="clearfix text-center">
                    <div class="account-col">
                        <div class="account-col-title">Personal data</div>
                        <div class="account-col-row">
                            <span class="account-col-prop">Name</span>
                            <span class="account-col-value"> <?=$customer->getFirstName()?>  <?=$customer->getLastName()?></span>
                        </div>
                        <div class="account-col-row">
                            <span class="account-col-prop">e-mail</span>
                            <span class="account-col-value"><?=$customer->getEmail()?></span>
                        </div>
                        <div class="account-col-row">
                            <span class="account-col-prop">Number</span>
                            <span class="account-col-value"><?=$customer->getTelephone()?></span>
                        </div>


                    </div>
                    <div class="account-col">
                        <div class="account-col-title">My orders</div>

                        <?foreach ($orders as $row):?>

                            <div class="account-col-row">
                                <div class="account-col-table">
                                    <span class="account-col-item">№<?php echo $row['order_id']; ?></span>
                                    <span class="account-col-item"><?php echo $row['total']; ?></span>
                                    <span class="account-col-item"><?php echo $row['status']; ?></span>
                                    <span class="account-col-item"><a href="<?php echo $row['href']; ?>" data-toggle="tooltip" title="Views" class="btn w-btn-orange2 w-general-category"><i class="fa fa-eye"></i></a></span>
                                </div>
                            </div>
                        <?endforeach?>
                    </div>
                    <div class="account-col">
                        <!--<div class="account-col-title">My wish list</div>-->
                        <?=$right_meny_accaunt?>
                    </div>
                </div>
                <!--<div class="account-page-track-empty">No orders to track</div>-->
            </div>
        </div>
    </section>
</main>











<?php echo isset($footer) ? $footer : ''; ?>
