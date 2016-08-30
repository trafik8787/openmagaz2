<div class="wrapper-form">
    <div class="title">
        NEWSLETTER
    </div>
    <div class="text">
        Sign up to receive the latest news and exclusive offers
    </div>
    <form action="" class="form-nl w-newsletter-form">
        <div class="gender clearfix">
            <div class="one-block active" data-value="1">
                <i class="fa fa-venus"></i> woman
            </div>
            <div class="one-block" data-value="2">
                <i class="fa fa-mars"></i> man
            </div>
        </div>
        <div class="clearfix">
            <input type="email" name="email" required="required" placeholder="Enter your email adress...">
            <button class="form-brand w-newsletter-button" type="submit">subscribe</button>
        </div>
    </form>
</div>


<div class="modal fade" id="w-modal-cart" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <div class="modal-body text-center">
                <p class="w-modal-button">
                    <span class="text-centr"></span>
                </p>
                <div class="line-price-product clearfix">
                    <p>
                        <button type="button" data-dismiss="modal" aria-hidden="true" class="red-btn" style="background-color: #fbce6b;">Close</button>
                    </p>
                </div>

            </div>

        </div>
    </div>
</div>

<script type="text/javascript">
        $(".w-newsletter-form").submit(function( event ) {

        var $sex = $('.w-newsletter-form .one-block.active').data('value');

        $.ajax({
            url: '/newsletter_add',
            type: 'post',
            data: 'sex='+$sex+'&'+$(this).serialize(),
            dataType: 'JSON',
            beforeSend: function() {

            },
            complete: function() {

            },
            success: function(json) {
                if (json.susses) {
                    $('#w-modal-cart .w-modal-button .text-centr').text(json.susses);
                } else if (json.error) {
                    $('#w-modal-cart .w-modal-button .text-centr').text(json.error);
                }
                $('#w-modal-cart').modal('show');
            },
            error: function(xhr, ajaxOptions, thrownError) {

            }
        });

        return false;

    });
</script>