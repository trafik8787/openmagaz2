<?php echo !empty($header) ? $header : '' ?>

<main class="w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <?if (!empty($breadcrumb['href'])):?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <?else:?>
                        <li><?php echo $breadcrumb['text']; ?></li>
                        <?endif?>
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


        <div class="about-page">
            <div class="center-bl">
                <div class="static-text-page clearfix">
                    <div class="left-q">
                        <?=$information_meny?>
                    </div>
                    <div class="right-q">
                        <h1><?php echo $heading_title; ?></h1>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <?php echo $description; ?>
                            </div>
                        </div>


                        <div class="title-stat margin-top-30">Send us a Message</div>
                        <span>We will reply to all questions within one business day</span>
                        <div class="form-static">
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                <textarea placeholder="Message" name="enquiry" required></textarea>
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-4">
                                        <input type="text" placeholder="Name" name="name" required>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-4">
                                        <input type="email" placeholder="E-mail" name="email" required>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-4">
                                        <input type="tel" placeholder="Phone" name="phone">
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <button type="submit" class="btn w-btn-orange btn-lg"><div class="icons-rings_icon"></div>SEND</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</main>

<script>
    $(function () {
       $('#accordion li a').each(function () {
           if ($(this).attr('href') == location.pathname) {
               $(this).parents('.collapse').collapse('show');
               $(this).parent().addClass('active');
           } else {
               $(this).parent().removeClass('active');
           }
//           console.log($(this).attr('href'));
       });
    });
//    console.log(location.pathname);
</script>


<?php echo !empty($footer) ? $footer : '' ?>