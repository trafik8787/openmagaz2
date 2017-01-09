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

        <div class="about-wrapper">
            <div class="about-top">
                <div class="center-bl" id="production-and-delivery">
                    <div class="about-header">
                        <div class="about-title">ABOUT COMPANY</div>
                        <div class="icons-quality_service_icon"></div>
                    </div>
                    <div class="about-top-container" id="made-in-usa">
                        <div class="left">
                            <img src="/catalog/view/theme/canary/img/about-top-photo.jpg" alt="">
                        </div>
                        <div class="right">
                            <div class="title">Brilliant Canary was formed with the customer in mind. Through many years of working in the industry, we heard the wants and needs of our customers.</div>
                            With these in mind, we established a company that puts an emphasis on providing exceptional education, quality and service at the best price. Our jewelry is designed and crafted in the United States of America. By supporting manufacturers in the United States, we can provide our customers with the highest quality jewelry at a faster delivery time and an exceptional price. Most orders are complete in less than two weeks.
                        </div>
                    </div>
                </div>
            </div>
            <div class="about-block box-about1">
                <div class="center-bl">
                    <div class="about-block-desc">
                        <div class="about-block-title">The Highest Quality Diamonds</div>
                        <div class="about-block-text">All our diamonds are GIA certified and accompanied by the GIA issued certificate, and of the highest quality. Every single diamond is hand selected and examined for exceptional quality by our diamond experts. With our extensive quality control process, you can rest assured that your engagement ring will be fully examined and checked for accuracy prior to shipment. We NEVER drop ship, unlike some of our competitors.</div>
                    </div>
                    <div class="about-block-img">
                        <img src="/catalog/view/theme/canary/img/about-img-1.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="about-block about-white padding">
                <div class="center-bl">
                    <div class="about-block-img text-right">
                        <img src="/catalog/view/theme/canary/img/about-img-2.png" alt="">
                    </div>
                    <div class="about-block-desc">
                        <div class="about-block-title">Conflict-Free Diamonds</div>
                        <div class="about-block-text">We want you to be confident that the diamond you are purchasing has been supplied through a verifiable source. We are in 100% compliance with the Kimberly Process and guarantee all our diamonds to be conflict-free!</div>
                    </div>
                </div>
            </div>
            <div class="about-block box-about2">
                <div class="center-bl">
                    <div class="about-block-desc">
                        <div class="about-block-title">Our Jewelry</div>
                        <div class="about-block-text">Our extensive collection of beautiful engagement rings features classic solitaire, trendy modern, delicate pave and timeless vintage style rings. You are sure to find the perfect one to fit your unique style. Pick your favorite setting and find the perfect diamond from our vast collection to create your perfect engagement ring.</div>
                    </div>
                    <div class="about-block-img">
                        <img src="/catalog/view/theme/canary/img/about-img-3.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="about-block about-white">
                <div class="center-bl">
                    <div class="about-block-img">
                        <img src="/catalog/view/theme/canary/img/about-img-4.png" alt="">
                    </div>
                    <div class="about-block-desc">
                        <div class="about-block-title">Helping Others</div>
                        <div class="about-block-text">We strongly believe in helping others—with every purchase made a portion of the profits goes to the charity of your choice. We currently donate to the following three charities: St. Jude Children’s Research Hospital, Wounded Warrior Project, and Susan G. Komen for the Cure</div>
                    </div>
                </div>
            </div>
            <div class="about-service">
                <div class="center-bl">
                    <div class="about-header">
                        <div class="about-title">SERVICES</div>
                        <div class="icons-quality_service_icon"></div>
                    </div>
                    <div class="about-service-list">
                        <div class="about-service-item about-service-left" id="lifetime-warranty">
                            <div class="about-service-img"><img src="/catalog/view/theme/canary/img/about-service-1.jpg" alt=""></div>
                            <div class="about-service-desc">
                                <div class="about-service-desc-title">Lifetime Warranty</div>
                                We stand behind all of the jewelry we sell and offer a lifetime warranty with every fine jewelry purchase! Should you experience damage to your jewelry purchase due to manufacturing, please contact us right away
                            </div>
                        </div>
                        <div class="about-service-item about-service-left" id="free-and-fast-shipping">
                            <div class="about-service-img"><img src="/catalog/view/theme/canary/img/about-service-2.jpg" alt=""></div>
                            <div class="about-service-desc">
                                <div class="about-service-desc-title">Free and Fast Shipping</div>
                                We offers free fully insured FedEx® shipping on all U.S. orders and our in-house jewelers work tirelessly to complete each piece as quickly and beautifully as possible
                            </div>
                        </div>
                        <div class="about-service-item about-service-left" id="no-hassle-returns">
                            <div class="about-service-img"><img src="/catalog/view/theme/canary/img/about-service-3.jpg" alt=""></div>
                            <div class="about-service-desc">
                                <div class="about-service-desc-title">100% Money Back Guarantee</div>
                                Your satisfaction is guaranteed with our products. If you are unhappy for any reason, you may receive a full refund within 30 days of the shipping date. Please see our return policy section for more information.
                            </div>
                        </div>
                        <div class="about-service-item about-service-left" id="military-discount">
                            <div class="about-service-img"><img src="/catalog/view/theme/canary/img/about-service-4.jpg" alt=""></div>
                            <div class="about-service-desc">
                                <div class="about-service-desc-title">Military Discount</div>
                                We appreciate the sacrifices made by the men and women in our armed forces. We would like to THANK YOU by offering you a 10% discount on all jewelry excluding loose diamonds.
                            </div>
                        </div>

                        <div class="about-service-item about-service-right" id="free-engraving">
                            <div class="about-service-desc">
                                <div class="about-service-desc-title">Free Resizing and Engraving</div>
                                We are happy to offer you a one-time resizing at no extra charge within 90 days of purchase. We also offer free engraving on all of our engagement and wedding rings that allow it.
                            </div>
                            <div class="about-service-img"><img src="/catalog/view/theme/canary/img/about-service-5.jpg" alt=""></div>
                        </div>
                        <div class="about-service-item about-service-right" id="free-appraisal">
                            <div class="about-service-desc">
                                <div class="about-service-desc-title">Complimentary GIA Certified Gemologist Appraisal</div>
                                We provide a professional appraisal letter signed by GIA certified gemologist on loose
                                diamonds and jewelry purchases over $1000.
                            </div>
                            <div class="about-service-img"><img src="/catalog/view/theme/canary/img/about-service-6.jpg" alt=""></div>
                        </div>
                        <div class="about-service-item about-service-right" id="beautiful-packaging">
                            <div class="about-service-desc">
                                <div class="about-service-desc-title">Beautiful Packaging</div>
                                Each jewelry purchase is accompanied with a beautiful jewelry box. We will be happy to gift-wrap any item for you at no additional charge.
                            </div>
                            <div class="about-service-img"><img src="/catalog/view/theme/canary/img/about-service-7.jpg" alt=""></div>
                        </div>
                        <div class="about-service-item about-service-right" id="helping-others">
                            <div class="about-service-desc">
                                <div class="about-service-desc-title">Customer Service</div>
                                Our certified diamond experts and customer service representatives are here to help you with any inquires you may have. Please Call us at 800-214-6550 or email us with any questions at info@brilliantcanary.com 24/7 and we will respond within 1 business day.
                            </div>
                            <div class="about-service-img"><img src="/catalog/view/theme/canary/img/about-service-8.jpg" alt=""></div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
</main>




<?php echo !empty($footer) ? $footer : '' ?>