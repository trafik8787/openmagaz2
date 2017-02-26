<div class="wrapper-menu-stat">
    <div class="title">INFORMATION</div>
    <ul class="menu-block-stat" id="accordion">
        <li><a data-toggle="collapse" data-parent="#accordion" href="#collapse1" >About Us</a></li>
        <li class="no-marcer collapse" id="collapse1">
            <ul class="menu-block-stat">
                <li><a href="/company">About Us</a></li>
                <li><a href="/information/about-us/quality">Quality</a></li>
                <li><a href="/information/services/military-discount">Military Discount</a></li>
                <li><a href="/information/services/helping-others">Helping Others</a></li>
                <li><a href="/information/services/made-in-usa">Made in USA</a></li>
                <li><a href="/information/policies/conflict-free-diamonds">Conflict Free Diamonds</a></li>
            </ul>
        </li>
        <li><a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Services</a></li>
        <li class="no-marcer collapse" id="collapse2">
            <ul class="menu-block-stat">
                <li><a href="/information/services/free-and-insured-shipping">Free Insured Shipping</a></li>
                <li><a href="/information/services/certified-gemologist-appraisals">GIA Certified Gemologist Appraisals</a></li>
                <li><a href="/information/services/price-match-guarantee">Price Match Guarantee</a></li>
                <li><a href="/information/services/lifetime-warranty">Lifetime Warranty</a></li>
                <li><a href="/information/services/free-ring-resizing">Free Ring Resizing</a></li>
                <li><a href="/information/services/free_engraving">Free Ring Engraving</a></li>
            </ul>
        </li>

        <li><a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Policies</a></li>
        <li class="no-marcer collapse" id="collapse3">
            <ul class="menu-block-stat">
                <li><a href="/information/policies/terms-conditions">Terms & Conditions</a></li>
                <li><a href="/information/policies/privacy-policy">Privacy Policy</a></li>
                <li><a href="/information/policies/cookie-policy">Cookie Policy</a></li>
                <li><a href="/information/policies/return-policy">Return Policy</a></li>
            </ul>
        </li>

        <!--*<li><a href="/information/policies/delivery-policy">Delivery Information</a></li>*-->
        <li><a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Contact Us</a></li>
        <li class="no-marcer collapse" id="collapse4">
            <ul class="menu-block-stat">
                <li><a href="/company/contacts">Contact Us</a></li>
            </ul>
        </li>
        <li><a href="http://blog.brilliantcanary.com/" target="_blank">Blog</a></li>
        <li><a href="/information/faq">FAQ</a></li>
        <!--*<li><a href="#">Site Map</a></li>*-->
    </ul>
</div>
<div class="wrapper-static-baner">
    <img src="/catalog/view/theme/canary/img/baner-static.png" alt="img">
</div>
<div class="wrapper-post-stat">
    <div class="title">FEATURED POSTS<br/> FROM THE BLOG:</div>

    <?if (!empty($bloges)):?>

    <?foreach ($bloges as $row):?>
    <div class="thumbnail">
        <div class="marc-date">
            <strong><?=$row['date_m']?></strong>
            <div><?=$row['date_d']?></div>
        </div>
        <img src="<?=$row['img']?>" alt="img">
        <div class="caption">
            <?=$row['title']?>
        </div>
        <a href="<?=$row['link']?>" class="btn btn-default">Read more</a>
    </div>
    <?endforeach?>

    <?endif?>

</div>