<?php if ($reviews):?>

    <?php foreach ($reviews as $review) :?>
        <div class="comment-line">
            <div class="top clearfix">
                <div class="date"><?php echo $review['date_added']; ?></div>
                <div class="box-img">
                    <img src="catalog/view/theme/canary/img/noavatar.png" class="img-circle" alt="img">
                </div>
                <div class="box-text">
                    <div class="author"><?php echo $review['author']; ?></div>
                    <div class="rating">
                        <?=rating($review['rating'])?>
                    </div>
                    consectetur
                </div>
            </div>
            <div class="message-comment">
                <?php echo $review['text']; ?>
            </div>
            <div class="share-box clearfix">
                <a href="#" class="share-comment"><i class="share-ico"></i>share</a>
                <div class="like-dislike">
                    <a href="#">Was This Review Helpful?</a>
                    <a href="#" class="like"><i class="like-ico"></i></a> 1
                    <a href="#" class="dislike"><i class="dislike-ico"></i></a> 0
                </div>
            </div>
        </div>
    <?endforeach?>

    <?php echo $pagination; ?>

<?else:?>
    <p><?php echo $text_no_reviews; ?></p>
<?endif?>