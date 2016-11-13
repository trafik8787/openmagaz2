
<form class="form-inline w-newsletter-form" method="post" role="form">
    <div class="form-group">
        <input type="email" required="required" name="email" class="form-control newslet-email"  placeholder="Enter e-mail">
    </div>

    <button value="1" name="sex" class="w-newsletter-button btn w-btn-orange2" onmouseup="ga('send', 'event', 'button, 'click', 'Email Subscription');" type="submit">Woman</button>
    <button value="2"  name="sex" class="w-newsletter-button btn w-btn-orange2" onmouseup="ga('send', 'event', 'button, 'click', 'Email Subscription');" type="submit">Men</button>
</form>


<div class="modal fade" id="w-modal-newslrtter" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <div class="modal-body text-center">
                <p class="w-modal-button">
                    <span class="text-centr"></span>
                </p>
                <div class="line-price-product clearfix">
                    <p>
                        <button class="btn w-btn-orange2" aria-hidden="true" data-dismiss="modal" type="button">Close</button>
                    </p>
                </div>

            </div>

        </div>
    </div>
</div>

<script type="text/javascript">
        var $sex;

        $('.w-newsletter-button').on('click', function () {
            $sex = $(this).val();

        });

        $(".w-newsletter-form").submit(function( event ) {


            console.log($sex);
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
                        $('#w-modal-newslrtter .w-modal-button .text-centr').text(json.susses);
                    } else if (json.error) {
                        $('#w-modal-newslrtter .w-modal-button .text-centr').text(json.error);
                    }
                    $('#ModalHomeSubskribe').modal('hide');
                    $('#w-modal-newslrtter').modal('show');
                },
                error: function(xhr, ajaxOptions, thrownError) {

                }
            });

            return false;

        });
</script>