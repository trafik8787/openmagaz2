<div style="padding: 0 25px 95px 25px; color: #575656; font-size: 12px; line-height: 17px;">
    <p>Welcome and thank you for registering at <?=$config_name?>! </p>
    <p> Your account has now been created and you can log in by using your email address and password by visiting our website or at the following URL:
        <a href="<?=$login?>"><?=$login?></a> Upon logging in, you will be able to access other services including reviewing past orders, printing invoices and editing your account information.
    </p>
    <p>
        username: <?=$username?><br>
        password: <?=$password?>
    </p>
    <p>
        Thanks, <?=$config_name?>
    </p>
    <p style="padding: 0 30px;">If you have any questions, please <a href="<?=HostSite('/company/contacts')?>">contact us</a><br/>or
        info@brilliantcanary.com . We are available to assist you 24/7.</p>
</div>
<p style="padding: 0 30px 30px;">
    <a href="<?=HostSite(get_baners_top_random ()[1])?>"><img src="<?=HostSite(get_baners_top_random ()[0])?>" alt="logo" border="0" style="display:inline-block; border:none; outline:none; text-decoration:none;" st-image="edit"></a>
</p>