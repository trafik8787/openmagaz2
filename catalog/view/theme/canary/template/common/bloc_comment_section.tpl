
не действующий файл

<div class="comment-section">
    <div class="center-bl clearfix">
        <?php if ($review_status):?>

        <div class="product-section-header">
            <div class="product-section-title">ITEM REVIEWS</div>
            <div class="icons-quality_service_icon"></div>
        </div>
        <div class="comment-block">
            <div class="comment-left">

                <div class="comment-head">
                    <div class="clearfix">
                        <div class="left">
                            <div class="rating">
                                <?php for ($i = 1; $i <= 5; $i++) { ?>
                                <?php if ($rating < $i) { ?>
                                <i class="star"></i>
                                <?php } else { ?>
                                <i class="star active"></i>
                                <?php } ?>
                                <?php } ?>
                                <span><a href="" onclick="return false;"><?php echo $reviews; ?></a></span>
                            </div>
                        </div>
                        <div class="right">
                            <button class="btn w-btn-orange btn-lg" id="write-review">Write a review</button>
                            <button class="btn w-btn-orange btn-lg" id="write-questions">Ask a question</button>
                        </div>
                    </div>
                    <div id="write-review-form" class="panel-collapse collapse">
                        <div class="panel-body">
                            <form class="form-horizontal" id="form-review">
                                <p class="h3 text-center"><?php echo $text_write; ?></p>
                                <?php if ($review_guest) { ?>
                                <div class="form-group required">
                                    <div class="col-sm-12">
                                        <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                        <input type="text" name="name" value="" id="input-name" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <div class="col-sm-12">
                                        <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                        <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                        <div class="help-block"><?php echo $text_note; ?></div>
                                    </div>
                                </div>

                                <div class="form-group required">

                                    <div class="col-sm-5 col-md-5">
                                        <?php echo $entry_rating; ?>:
                                        <div class="star-rating">

                                            <fieldset>
                                                <input type="radio" id="star5" name="rating" value="5" />
                                                <label for="star5" title="Outstanding">5 stars</label>
                                                <input type="radio" id="star4" name="rating" value="4" />
                                                <label for="star4" title="Very Good">4 stars</label>
                                                <input type="radio" id="star3" name="rating" value="3" />
                                                <label for="star3" title="Good">3 stars</label>
                                                <input type="radio" id="star2" name="rating" value="2" />
                                                <label for="star2" title="Poor">2 stars</label>
                                                <input type="radio" id="star1" name="rating" value="1" />
                                                <label for="star1" title="Very Poor">1 star</label>
                                            </fieldset>
                                        </div>
                                    </div>

                                    <div class="col-sm-7 col-md-7">

                                        <div class="pull-right">
                                            <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn w-btn-orange btn-lg">Send</button>
                                        </div>

                                    </div>

                                </div>

                                <?php echo $captcha; ?>

                                <?php } else { ?>
                                <?php echo $text_login; ?>
                                <?php } ?>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Nav tabs -->
                <ul class="nav nav-tabs comment-nav-tabs">
                    <!-- todo fix review number/ make short -->
                    <li class="active"><a href="#reviews" data-toggle="tab">Reviews (19)</a></li>
                    <li><a href="#questions" data-toggle="tab">Questions</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="reviews">
                        <div id="review"></div>
                    </div>
                    <div class="tab-pane fade" id="questions">
                    </div>
                </div>

                <div class="w-button-colaps"><span>Load more</span></div>

            </div>
            <div class="comment-right">
                <div class="comment-company-img"><img src="/catalog/view/theme/canary/img/comments-company.jpg" alt=""></div>
                <div class="comment-company-item">
                    <div class="comment-company-name">Ivouch</div>
                    <div class="rating stars-blue">
                        <i class="star active"></i>
                        <i class="star active"></i>
                        <i class="star active"></i>
                        <i class="star active"></i>
                        <i class="star"></i>
                    </div>
                    <div class="comment-company-text">6419 Reviews | 5618 Vouches</div>
                </div>
                <div class="comment-company-item">
                    <div class="comment-company-name">Google Trusted Stores</div>
                    <div class="rating stars-w-blue">
                        <i class="star active"></i>
                        <i class="star active"></i>
                        <i class="star active"></i>
                        <i class="star active"></i>
                        <i class="star"></i>
                    </div>
                    <div class="comment-company-text">2,849 Reviews | 4.9 Rating</div>
                </div>
                <div class="comment-company-item">
                    <div class="comment-company-name">BizRate</div>
                    <div class="comment-company-text">9.2/10</div>
                    <div class="comment-company-text">388 Reviews | 90 Days</div>
                </div>
            </div>
        </div>

        <?endif?>
    </div>

</div>