<div class="row w-blog-section">
    <div class="center-bl">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <span class="h3">Stories from the Blog</span>
                <div class="blog-control-prev"></div>
                <div class="blog-control-next"></div>
                <div class="icons-search_diamond_icon"></div>
            </div>
        </div>
        <div class="margin-top-47 margin-buttom-30 bxslider-blog" style="display: none;">
            <?foreach ($bloges as $row):?>

                <div class="slide">
                    <div class="thumbnail">
                        <div class="marc-date hidden-xs">
                            <strong><?=$row['date_m']?></strong>
                            <div><?=$row['date_d']?></div>
                        </div>
                        <img src="<?=$row['img']?>"  alt="">
                        <div class="caption">
                            <h3><?=$row['title']?></h3>
                            <p class="hidden-xs"><?=$row['desk']?></p>

                        </div>
                        <a href="<?=$row['link']?>" class="btn btn-default" target="_blank" role="button">Read more</a>
                    </div>
                    <div class="w-shadow-slider"></div>
                </div>

            <?endforeach?>

        </div>
    </div>
</div>