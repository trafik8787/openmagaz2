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




                    <div class="faq-page-title">Frequently Asked Questions</div>

                    <div class="faq-block-title">About Brilliant Canary</div>
                    <div class="panel-group" id="accordion">
                        <div class="">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1-1">
                                        Can I talk to someone over the phone prior to making a purchase?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse1-1" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Yes!  You may call us at 1(800)214-6550.  Our certified diamond experts and customer service representatives are here to help you with any inquires you may have. If you need help understanding the 4 C’s, deciphering a diamond certificate or deciding which diamond is the best for you, we are happy to help you every step of the way. Please see our customer service hours below.</p>
                                    <p>
                                        Monday—Friday: 9am to 9pm (CST)
                                        <br>
                                        Saturday & Sunday: 10am to 7pm (CST)

                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2-2">
                                        Do you have GIA certified Gemologists on staff?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse2-2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Yes!  We always have GIA certified diamond experts and gemologists available to guide you along your journey to selecting the perfect diamond for your special occasion.</p>
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3-3">
                                        Where can I visit a Brilliant Canary showroom?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse3-3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>At this time, Brilliant Canary does not have a brick and mortar showroom.  By eliminating overhead costs, we are able to provide you with higher quality merchandise at a significantly better value than a traditional jewelry stores.</p>
                                    <p>Client satisfaction is paramount and as such we provide a 30-day money back guarantee, lifetime warranty and free shipping on all purchases.</p>
                                </div>
                            </div>
                        </div>
                    </div>




                    <div class="faq-block-title">Ordering from Brilliant Canary</div>
                    <div class="panel-group" id="accordion">
                        <div class="">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4-4">
                                        Do you sell loose diamonds?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse4-4" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Yes! We have one of the largest selections of GIA certified diamonds available online.</p>
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse5-5">
                                        Are your loose diamonds GIA certified?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse5-5" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Yes! Brilliant Canary only sells loose diamonds that have been certified by the Gemological Institute of America.</p>
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">
                                        Can I set my own diamond into one of your settings?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse6" class="panel-collapse collapse">
                                <div class="panel-body">
                                    Absolutely! We are happy to set your diamond or another gemstone into one of our settings at no additional cost. Please contact our diamond experts for more information at 1(800)214-6550 or email us at info@brilliantcanary.com
                                </div>
                            </div>
                        </div>

                        <div class="">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">
                                        Can I order a custom designed engagement ring?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse7" class="panel-collapse collapse">
                                <div class="panel-body">
                                    Yes! We would love to work with you on designing your unique engagement ring. If you would like to know more about this option, contact our diamond experts at 1(800)214-6550 or email us at info@brilliantcanary.com
                                </div>
                            </div>
                        </div>

                        <div class="">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">
                                        I need help placing my order, who can I talk to for assistance?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse8" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Our certified diamond experts and customer service representatives are here to help you with any inquires you may have. If you need help understanding the 4 C’s, deciphering a diamond certificate or deciding which diamond is the best for you, we are happy to help you every step of the way. Please see our customer service hours below.</p>

                                    <p>Monday—Friday: 9am to 9pm (CST)
                                        Saturday & Sunday: 10am to 7pm (CST)</p>

                                    <p>You may also email us at info@brilliantcanary.com</p>
                                </div>
                            </div>
                        </div>

                        <div class="">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">
                                        I do not know my girlfriend/boyfriend’s finger size. What do I do?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse9" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>We make it easy to order a ring in the correct size. You are welcome to use our sizing chart, following the instructions below.</p>
                                    <ul style="list-style: inherit; padding-left: 50px;">
                                        <li>Measure the finger you are purchasing ring for</li>
                                        <li>Avoid measuring when the hands are cold</li>
                                        <li>Make sure the size you select fits comfortably over the knuckle</li>
                                    </ul>

                                    <p>If you would like to surprise her, gain access to one of her rings (for the appropriate finger) and use the chart below for comparison. For other creative ideas on discreetly obtaining finger sizes, check out our blog!</p>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="faq-block-title">Insurance Questions</div>
                    <div class="panel-group" id="accordion">

                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">
                                            Does my purchase come with an appraisal?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse10" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p>
                                            Yes! All diamond jewelry purchases will be accompanied by two copies of an appraisal written by a certified GIA gemologist. One copy is for your personal records and the other for your insurance company.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse11">
                                            Will my engagement ring be insured by Brilliant Canary?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse11" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Your engagement will be fully insured until it has been delivered and signed for at your requested shipping address. Once the ring is in your possession, we recommend you contact the insurer of your choice to select a coverage policy. There are many reputable insurance agencies that will protect your valued purchase from various losses.
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse12">
                                            Is all jewelry purchased at Brilliant Canary covered by your lifetime warranty?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse12" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p>
                                            We stand behind all of the jewelry we sell and offer a lifetime warranty with every fine jewelry purchase! Should you experience damage to your jewelry purchase due to manufacturing, please contact us right away at 1-800-214-6550 or email us at info@brilliantcanary.com so that we may evaluate your piece. If a warranty issue is found, we will repair the damage or replace the damaged item at no charge. Please note, our warranty excludes coverage for the center diamond, wear and tear, loss of precious stones and theft. If we find the problem was caused by normal tear and wear, we will be happy to repair your jewelry and charge you only our cost for the materials needed to perform the repair.  In order to maintain your lifetime warranty please make sure no jeweler other than Brilliant Canary performs any repairs or services to your jewelry. We strongly recommend that you purchase separate jewelry insurance coverage for your jewelry to cover theft, significant damage, or loss. For more information or to take advantage of your lifetime warranty, please call us at 1-800-214-6550 or email us at
                                            <a href="mailto:info@brilliantcanary.com">info@brilliantcanary.com</a>.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse13">
                                            How do I care for my jewelry investment?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse13" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        You can care for your diamond jewelry with a gentle solution of mild soap and warm water. Soak your jewelry in the solution for 15 to 30 minutes and then use a soft toothbrush and gently scrub your jewelry to make it really shine. Do not scrub too hard on your jewelry pieces as this can increase the likelihood of side diamonds coming loose.
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>




                    <div class="faq-block-title">Shipping</div>
                    <div class="panel-group" id="accordion">

                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse14">
                                            How will my jewelry purchase be shipped to me?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse14" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p>
                                            Brilliant Canary offers free fully insured FedEx® shipping on all U.S. orders. US orders over $500 in value are shipped via FedEx Priority Overnight®. International orders over $500 in value are shipped via FedEx International Economy®. U.S. orders under $500 are shipped via FedEx Ground. International orders under $500 in value are shipped via FedEx Economy.
                                        </p>
                                        <p>
                                            •	For your protection we do not ship to PO Box addresses
                                            <br>
                                            •	We will be happy to have your package shipped to your closest FedEx station for pick-up
                                            <br>
                                            •	We insure every item for its full value
                                            <br>
                                            •	We only use FedEx services to ensure your purchase is delivered in the fastest and safest manner
                                            <br>
                                            •	All packages require signature upon delivery

                                        </p>
                                        <p>
                                            International customers will be responsible for any duties, VAT, taxes or any other charges by their country. Please make sure to check this information with your local authorities prior to placing your order.
                                        </p>
                                        <p>
                                            * Due to unavoidable service delays, FedEx delivery may vary.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse15">
                                            Do I pay for shipping of my order?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse15" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        No! Here at Brilliant Canary we are glad to offer you free shipping on all purchases.
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse16">
                                            Can I track my shipped order?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse16" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Yes! Once your order is shipped you will receive an email containing your FedEx® tracking number.
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse17">
                                            Can I ship to an address other than my billing address?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse17" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Yes! Simply enter the desired shipping address when completing your order. Please note, your order cannot be shipped to a Post Office Box and will require a signature upon delivery.
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse18">
                                            Am I responsible for Customs fees?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse18" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        International customers will be responsible for any duties, VAT, taxes or any other charges by their country. Please make sure to check this information with your local authorities prior to placing your order.
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>



                    <div class="faq-block-title">Return Policy</div>
                    <div class="panel-group" id="accordion">

                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse19">
                                            What is Brilliant Canary’s return policy?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse19" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p>
                                            We believe in your complete satisfaction and will gladly issue you a full refund or exchange on any unworn jewelry within 30 days of purchase minus shipping fees. Each returned item must be in its original unworn condition. We cannot offer refund on items that have been engraved, sized, or modified in any way since original purchase. Kindly note, any altered or damaged items may not be returned or exchanged. Please allow us up to 3 business days to inspect your item and issue you a refund.
                                        </p>
                                        <p><b>To return and item:</b></p>
                                        <p></p>
                                        <ol>
                                            <li>1.	Contact our Customer Care Department at 1-800-214-6550 to obtain your Return Authorization number. Please make sure to write that number on the outside of the package.</li>
                                            <li>2.	Pack your item securely and include all original documentation. All diamond returns must be accompanied by the original GIA grading report or a $150 charge will be assessed to replace the certificate.</li>
                                            <li>3.	Ship the package an insure It for full value. Brilliant Canary is not responsible for loss or damage that occurs during shipping. </li>
                                        </ol>
                                        <p><b>When Your Item is Received by Brilliant Canary</b></p>
                                        <p>
                                            Once Brilliant Canary receives your return, you will receive a confirmation email. Returns are processed Monday through Friday during our normal business hours. Processing time for returns is one business day once the package has been delivered to our facilities. Failure to properly document your return with a return authorization number or proper paperwork may result in processing delays. If you have any questions regarding your return, please contact our customer service at 1-800-214-6550.
                                        </p>
                                        <p><b>Non-Refundable Items:</b></p>
                                        <p>
                                            Brilliant Canary will not refund any items that are damaged, worn, or not accompanied by original paperwork and documentation. The following items are non-returnable due to the custom nature: special orders; engraved items; items that have been modified; rings that have been sized; items that have been previously exchanged; and custom jewelry.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse20">
                                            How do I ship back returns?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse20" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p>Should you need to return an item, please contact us first to obtain a Return Authorization number.  You can call Brilliant Canary at (800)214-6550 or email us at
                                            <a href="mailto:info@brilliantcanary.com">info@brilliantcanary.com</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse21">
                                            Do I need to obtain a Return Authorization number?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse21" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p>Yes. Please call us at (800)214-6550 or email us at <a href="mailto:info@brilliantcanary.com">info@brilliantcanary.com</a> to obtain a Return Authorization number prior to shipping.</p>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>


                    <div class="faq-block-title">Privacy and Security</div>
                    <div class="panel-group" id="accordion">

                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse22">
                                            Is my personal information protected?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse22" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p>Yes!  Please review our  <a href="/information/policies/privacy-policy">Privacy Policy</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse23">
                                            Is Brilliant Canary a secure website?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse23" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p>Yes! Brilliant Canary offers you a secure shopping experience.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>


                    <div class="faq-block-title">Payments</div>
                    <div class="panel-group" id="accordion">

                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse24">
                                            What form of payments does Brilliant Canary accept?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse24" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Brilliant Canary accepts all major credit cards, PayPal and wire transfer. All orders paid via bank wire transfer will receive an additional 2% discount!
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse25">
                                            Do you offer financing?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse25" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        We are pleased to offer you 6 months no interest financing through PayPal Credit.
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse26">
                                            Will I be charged sales tax on my purchase?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse26" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Only orders shipped to Tennessee will be charged Tennessee sales tax.
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse27">
                                            Do you offer discounts for bank wire payments?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse27" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Yes! All orders paid by bank wire transfer will receive an additional 1.5% discount!
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>



                    <div class="faq-block-title">Our Diamonds and Jewelry</div>
                    <div class="panel-group" id="accordion">

                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse28">
                                            Where are your engagement rings made?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse28" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        All of Brilliant Canary’s engagement rings are proudly crafted in USA.
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse29">
                                            Can I order an engagement ring with a CZ in the center?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse29" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Yes!
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse30">
                                            Can I order an engagement ring with a gemstone in the center?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse30" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Yes! If you would like to order a unique engagement ring with a gemstone center stone instead of a diamond, please contact one of our jewelry experts at 800-214-6550 to create the engagement ring of your dreams!
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse31">
                                            Can I order a loose diamond only?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse31" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Yes!
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="" id="accordion">
                            <div class="">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse32">
                                            Can I add custom engraving to my engagement ring or wedding band?
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse32" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Absolutely! We are pleased to add a personalized engraving at no additional charge to you.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="text-center">
                        <a href="#" class="faq-modal-btn" data-toggle="modal" data-target="#faqModal">Still Need Help?</a>
                    </div>

                </div>


        </div>


            </div>
        </div>
    </section>
</main>



<?php echo !empty($footer) ? $footer : '' ?>