<?php if ($reviews):?>
<?php foreach ($reviews as $review) :?>
<div class="comment-item">
    <div class="comment-item-text">
        <!-- <strong>Love this ring!</strong><br> -->
        <?php echo $review['text']; ?>
        <!-- <a href="#" class="comment-read-more">Read more »</a> -->
    </div>
    <div class="comment-item-info clearfix">
        <div class="left">
            <ul class="comment-item-info-list">
                <li><?php echo $review['author']; ?></li>
                <!-- <li>NO LOCATION</li> -->
                <li><?php echo $review['date_added']; ?></li>
            </ul>
        </div>
        <div class="right">
            <div class="rating">
                <?=rating($review['rating'])?>
            </div>
        </div>
    </div>
</div>
<?endforeach?>
<?php echo $pagination; ?>
<?else:?>
<p><?php echo $text_no_reviews; ?></p>
<?endif?>