<div style="padding-bottom: 45px; color: #575656; font-size: 12px; line-height: 17px;">
    <div style="text-align: center;font-size: 16px;color: #575656;">
        <div style="padding: 25px 0 5px;"><span>Dear <?=$friend_name?>,</span></div>
        <div><span>Your friend, <?=$your_name?>, asked us to share this item with you.</span></div>

        <?if (!empty($another_friend)):?>
            <div style="padding: 30px 0 9px;"><span><?=$your_name?> wrote this message:</span></div>
            <div style="padding-bottom: 25px;"><span style="font-size: 20px;font-weight: bold;color: #1e3e7e;"><b>&#8220;</b> <?=$another_friend?> <b>&#8221;</b></span></div>
        <?endif?>

        <div><a href="<?=$href?>"><img src="<?=$image?>" alt="" style="border: 1px solid #ccc;" width="312"></a></div>
        <div style="padding: 20px 64px;">
            <a href="<?=$href?>" style="font-size: 18px;color: #575656;text-decoration: none;"><?=$name?></a>
        </div>
        <div style="padding-top: 20px;"><img src="<?=HostSite('/catalog/view/theme/canary/img/email_img/border-footer.png')?>" alt=""></div>
        <div style="padding: 20px 84px;">
            <span style="font-size: 12px;">
                <?=$description?>
            </span>
        </div>
        <div><a href="<?=$href?>"><img src="<?=HostSite('/catalog/view/theme/canary/img/email_img/button_viev_this_item.jpg')?>" alt=""></a></div>

        <div style="text-align: center;padding-top: 30px;">
            <table style="width: 100%;display: inline;font-size: 13px;">
                <tbody>
                <tr>
                    <td style="width: 50%;height: 100%; text-align: left;">
                        <a href="<?=HostSite('/about-us#free-appraisal')?>" style="color: #8488ad;text-decoration: none;">
                            <div style="border: 1px solid #ccc; height: 57px;width: 248px;">
                                <div style="display: inline-block;padding: 12px 0 0 15px;"><img src="<?=HostSite('/catalog/view/theme/canary/img/email_img/lifetime_img1.jpg')?>" alt=""></div>
                                <div style="display: inline-block;position: relative;bottom: 13px;padding-left: 12px;">100% Lifetime Warranty</div>
                            </div>
                        </a>
                    </td>
                    <td style="width: 50%;height: 100%; text-align: left;">
                        <a href="<?=HostSite('/about-us#free-and-fast-shipping')?>" style="color: #8488ad;text-decoration: none;">
                            <div style="border: 1px solid #ccc; height: 57px;width: 248px;">
                                <div style="display: inline-block;padding: 12px 0 0 15px;"><img src="<?=HostSite('/catalog/view/theme/canary/img/email_img/shiping_img1.jpg')?>" alt=""></div>
                                <div style="display: inline-block;position: relative;bottom: 9px;padding-left: 12px;">Free and Insured Shipping</div>
                            </div>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%;height: 100%; text-align: left;">
                        <a href="<?=HostSite('/about-us#no-hassle-returns')?>" style="color: #8488ad;text-decoration: none;">
                            <div style="border: 1px solid #ccc; height: 57px;width: 248px;">
                                <div style="display: inline-block;padding: 12px 0 0 15px;"><img src="<?=HostSite('/catalog/view/theme/canary/img/email_img/policy_img1.jpg')?>" alt=""></div>
                                <div style="display: inline-block;position: relative;bottom: 13px;padding-left: 12px;">30-Day Return Policy</div>
                            </div>
                        </a>
                    </td>
                    <td style="width: 50%;height: 100%; text-align: left;">
                        <a href="<?=HostSite('/about-us#lifetime-warranty')?>" style="color: #8488ad;text-decoration: none;">
                            <div style="border: 1px solid #ccc; height: 57px;width: 248px;">
                                <div style="display: inline-block;padding: 12px 0 0 15px;"><img src="<?=HostSite('/catalog/view/theme/canary/img/email_img/made_img1.jpg')?>" alt=""></div>
                                <div style="display: inline-block;position: relative;bottom: 9px;padding-left: 12px;">MADE IN USA!</div>
                            </div>
                        </a>
                    </td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>
</div>